---
name: implement
description: Workflow for decompiling and iterating on a function.
---

# Function Implementation Workflow

Your goal is to decompile a specific function: writing C++ source that compiles to byte-identical object code against the original retail binary, verified via `decomp-diff.py`.

## Phase 1: Gather Context

Collect data from **all** of these sources in parallel where possible.

### 1a. decomp-context.py (primary source of truth)

```sh
python scripts/decomp-context.py -u main/Path/To/TU -f FunctionName
```

This provides in one shot:
- Current source path (if any)
- objdiff status and instruction-level diff
- Ghidra decompilation of the original
- Demo map known references (for the specific symbol)

### 1b. Demo map TU entries

The demo map predates retail and can be incomplete or outdated,
but if the translation unit exists in the demo map, `dtk map entries`
can provide invaluable insight into the inlined functions used within
the translation unit. Matching inlined usages are often the key to resolving
register allocation and stack frame differences.

(This is separate from the `decomp-context.py` output because the output may
be large and is worthwhile to fetch independently.)

```sh
build/tools/dtk map entries orig/MetaforceCWD.MAP 'TU.o'
# or for library objects:
build/tools/dtk map entries orig/MetaforceCWD.MAP 'Library_CWD.a TU.cpp'
```

### 1c. Existing source and header

- Read the header (`include/.../*.hpp`) for class layout, member types, field offsets
- Read the source (`src/.../*.cpp`) for existing implementations and includes
- Check parent class headers for inherited members/methods used in the function

### 1d. Metaforce reference

- Find the equivalent function in `~/workspace/dev/metaforce/`
- Use as structural reference — Metaforce is ~90% accurate but uses C++11+, different names,
  and sometimes wrong types (see `docs/metaforce.md` for conversion rules)
- **Never copy directly** — always verify against the assembly

### 1e. Assembly reference

If decomp-context.py doesn't provide enough detail, check the generated assembly:
```sh
# Look at the target disassembly
cat build/GM8E01_00/asm/main/Path/To/TU.s
```

### 1f. Related functions

If the function calls helpers or accesses types you're unfamiliar with, check their
declarations and any existing implementations for usage patterns.

## Phase 2: Analyze the Original

Before writing any code, understand what the original does by studying the Ghidra decompile
and assembly:

1. **Control flow** — identify switch/if-else structure, loops, early returns
2. **Function calls** — note which methods are called (bl instructions), whether they're
   virtual (indirect through vtable) or direct
3. **Field access patterns** — trace `lfs`/`lwz`/`lbz` at `offset(rN)` to identify which
   class members are read/written
4. **Stack frame** — `stwu r1, -0xNN(r1)` gives the frame size; count locals
5. **Calling convention** — r3=this, r4-r10=int args, f1-f8=float args; struct returns
   use r3 as hidden result pointer
6. **Bitfield operations** — `rlwimi` sets/clears specific bits in flag bytes
7. **Const vs non-const** — `GetFoo` (const) vs `Foo` (non-const) affect which overload
   the linker resolves, visible as different `bl` targets in the diff

## Phase 3: Write the Implementation

### Placement in source file

Due to `-inline deferred`, functions appear in **reverse order** in the .text section
compared to the source file. Functions near the bottom of `.text` are near the top of the
source file. Place the new function accordingly relative to existing implementations.

Use the TU function list to determine order:
```sh
python scripts/decomp-diff.py -u main/Path/To/TU
```

## Phase 4: Build, Diff, and Iterate

### Initial build

```sh
ninja
```

If the build fails, fix compilation errors first.

### Check the diff

```sh
# Quick status
python scripts/decomp-diff.py -u main/Path/To/TU --search FunctionName

# Full instruction diff
python scripts/decomp-diff.py -u main/Path/To/TU -d FunctionName
```

### Interpreting the diff

- Left column = original binary, Right column = your decomp
- `~` prefix = mismatched instruction (args in `{}` show the specific mismatch)
- Matching runs are collapsed by default; use `--no-collapse` to see everything
- Branch target differences (relative vs absolute) are cosmetic, not real mismatches

### Fixing mismatches

Refer to the **Matching Tips** and **Renaming symbols in symbols.txt** sections in
AGENTS.md for detailed patterns on resolving instruction mismatches, register allocation
issues, stack frame differences, and symbol naming.

### Iterate

Repeat the build-diff cycle until the diff shows 100% match with no `~` lines.
Every mismatched instruction is a signal — don't settle for "close enough."

**BE PERSISTENT.** Keep iterating until the function matches or you've exhausted all concrete ideas.
Do NOT stop early to ask "should I continue?" — always continue trying.
You have full effort budget — use all of it.

## Phase 5: Report

Summarize:
- Final match status (percentage, instruction count)
- What the function does (brief description)
- Key decisions or tricky patterns used to achieve the match
- If not fully matching, document remaining mismatches and theories
