---
name: execute
description: Workflow for decompiling an entire translation unit end-to-end.
---

# Translation Unit Execution Workflow

Your goal is to orchestrate reverse engineering, class scaffolding, and function-by-function
matching to produce C++ source that compiles to byte-identical object code against the
original retail binary.

## Overview

This skill coordinates several agent types:

1. **reverse-engineer** — Update Ghidra with accurate data types for the class
2. **scaffolder** — Create header/source if the class is not yet in the project
3. **implementer** — Match each function one at a time until the TU is complete.
4. **refiner** — Use on non-matching functions to improve the match. This uses a slower, but more thorough model that can fix issues the implementer can't.

All non-read-only work is done **sequentially** — never spawn multiple writing agents at
the same time, as they will interfere with each other.

**Avoid** doing deep dives into Ghidra or the assembly yourself — instead, rely on the agents to gather and analyze that context. Your context window is precious, so focus on high-level orchestration, monitoring progress, and providing agents the necessary information they need to do their work.

## Phase 0: Establish Baseline

Before any work begins, establish a regression baseline:

```sh
ninja           # ensure clean build
ninja baseline  # snapshot current match state
```

All agents that modify code should check `ninja changes` after modifying shared headers
to verify no regressions were introduced. An empty changeset means no regressions. If
regressions appear, the shared header change must be reverted or localized (e.g. use a
local `static inline` helper instead of modifying a shared inline function).

## Phase 1: Reconnaissance

Before spawning any implementation agents, understand the current state of the TU.

### 1a. Identify the translation unit path

Determine the TU path (e.g. `main/MetroidPrime/Enemies/CAtomicAlpha`) from the class name.
Check `config/GM8E01_00/splits.txt` and `configure.py` for the mapping.

### 1b. Check existing state

- Does the header exist in `include/`? Does the source exist in `src/`?
- What is the current build status in `configure.py`? (NonMatching, Matching, etc.)
- How many symbols are in `config/GM8E01_00/symbols.txt` for this TU?

### 1c. Get the full function list

```sh
python scripts/decomp-diff.py -u main/Path/To/TU
```

This shows all symbols with their match status. Note the total count of missing,
nonmatching, and matching functions.

### 1d. Check the demo map

```sh
build/tools/dtk map entries orig/MetaforceCWD.MAP 'ClassName.o'
```

This reveals which inline functions are used in the TU — helpful for understanding what
helper functions, copy constructors, operators, etc. the compiler inlines. If the TU has
useful entries, tell agents to use this as a reference.

## Phase 2: Reverse Engineer (Ghidra Types)

Spawn a `reverse-engineer` agent to update Ghidra with proper data types for the class
and its members. This improves Ghidra decompilation output for all subsequent work.

Provide the agent with:
- The class name
- Any existing header/source paths
- The list of member functions from symbols.txt

Wait for this agent to complete before proceeding.

### Adjacent class scaffolding

If the TU's code touches other classes that are incomplete or missing from the project
(e.g. the class inherits from an unscaffolded parent, or its constructor creates instances
of another unscaffolded class), spawn `reverse-engineer` and `scaffolder` agents for those
classes too. Correct types and complete headers for adjacent classes prevent cascading
mismatches and false diffs.

## Phase 3: Scaffold (if needed)

If the class header and source file do not yet exist in the project, spawn a `scaffolder`
agent to create them. The scaffolder will:
- Create the header with accurate class layout
- Create the source file with constructor, destructor, and Accept method
- Iterate on the constructor/destructor until they match

If the class already exists but the constructor/destructor don't match, spawn an
`implementer` agent for those functions first.

Wait for this agent to complete before proceeding.

## Phase 4: Implement Functions

### 4a. Get the updated function list

After scaffolding, rebuild and re-check the function list:
```sh
ninja
python scripts/decomp-diff.py -u main/Path/To/TU -s nonmatching -t function
python scripts/decomp-diff.py -u main/Path/To/TU -s missing -t function
```

### 4b. Focus on class member functions

Focus on implementing **class member functions only**. Non-member functions that appear
as `missing` in the diff (e.g. `rstl::optional_object<...>::optional_object(...)`,
`CRippleManager::CRippleManager(...)`, `fn_XXXXXXXX`) are typically **weak inline
functions** that the compiler un-inlines when a function body gets too large. These will
spawn automatically once the class methods that use them are implemented. Do NOT call an
implementer agent on weak/inline functions directly — they are a byproduct, not a target.

Exception: if a weak function IS spawned but is mismatched, once the rest of the class is
in a good state, you may spawn an implementer for the weak function to attempt to fix it,
with the goal of fully completing the TU.

You can verify a function is weak by checking the demo map:
```sh
build/tools/dtk map entries orig/MetaforceCWD.MAP 'ClassName.o' | grep FunctionName
```
Functions marked `(Function,Weak)` are compiler-generated weak symbols.

### 4c. Determine function order

For `-inline deferred` translation units (most game code), functions appear in **reverse
order** in `.text` compared to the source file. Start from the **bottom** of the
`decomp-diff.py` output and work **upward**, so that agents implement functions top-down
in the source file.

### 4d. Implement each function sequentially

For each missing or nonmatching function, spawn an `implementer` agent. Provide:
- The class name and function name
- The TU path
- Any context from previous iterations (e.g. patterns discovered, field types clarified)
- Accumulated matching tips from previous agents (see below)

**Important considerations:**

- **One at a time.** Never spawn multiple implementer agents concurrently.
- **Balance new vs fixing.** Don't get stuck on one stubborn function — sometimes
  implementing the next function reveals patterns that make the previous one click.
  But don't leave too many functions nonmatching, as agents may copy incorrect patterns.
- **Mismatch triage:**
  - `@stringBase0` offset mismatches often resolve as more string literals are added
  - Register swaps and stack layout issues require direct intervention
  - Branch structure mismatches indicate wrong control flow (if/switch/loop)
- **Match percentage is misleading.** The last few percent are often the hardest.
  Agents may assume a 95% match is "close enough" — remind them that the goal is 100%.

### 4e. Collect and propagate matching tips

Every implementer agent prompt should include:
- All matching tips accumulated so far from previous agents in this session
- A request to **report any new assembly patterns or matching tips** discovered

After each agent completes, evaluate its reported tips:
- **Generalizable patterns** (e.g. `fmuls fX, fX, fY` == `*=`) should be added to
  AGENTS.md's "Assembly patterns" section so all future sessions benefit.
- **TU-specific patterns** (e.g. "this class uses `const char*` cast for bool array
  access") should be kept in the session context and passed to subsequent agents but
  not added to AGENTS.md.

### 4f. Regression checking

Remind agents in their prompts:
> After modifying any shared headers, run `ninja changes` to check for regressions.
> Empty changeset = no regressions. If regressions appear, revert the shared change
> and use a local workaround instead.

### 4g. Periodic reassessment

After every few functions, re-run the full status check:
```sh
python scripts/decomp-diff.py -u main/Path/To/TU
```

Review progress and decide whether to:
- Continue with new functions
- Revisit nonmatching functions with fresh context
- Update Ghidra types if new field information was discovered
- Scaffold adjacent classes if they're blocking progress

## Phase 5: Final Verification

When all functions have been attempted:

```sh
# Full status
python scripts/decomp-diff.py -u main/Path/To/TU

# Check for any remaining mismatches
python scripts/decomp-diff.py -u main/Path/To/TU -s nonmatching

# Verify no regressions
ninja changes
```

For any remaining nonmatching functions, make one final pass with the implementer agent,
providing all context accumulated during the session.

## Phase 6: Report

Summarize the session:
- **Functions matched** — count and list
- **Functions remaining** — count, list, and notes on what's blocking each
- **Key discoveries** — field types, patterns, or conventions learned
- **Matching tips** — new assembly patterns discovered (note which are generalizable)
- **Ghidra updates made** — types and signatures applied
- **Adjacent classes touched** — any scaffolding/RE done on related classes
- **Recommendations** — what to tackle next, dependencies on other TUs

## Agent Prompt Template

When spawning implementer agents, always include these standard instructions:

```
Source file: src/[PathToClass].cpp
Header: include/[PathToClass].hpp
ASM: build/GM8E01_00/asm/[PathToClass].s

Implement the function [ClassName]::[FunctionName]

**Standard agent instructions:**
- Use `build/tools/dtk map entries orig/MetaforceCWD.MAP '[ClassName].o'` for inline context.
- After modifying shared headers, run `ninja changes` to check for regressions (empty = good).
- Report any new general assembly patterns or matching tips you discover.

**Matching tips from this session:**
[accumulated tips here]
```
