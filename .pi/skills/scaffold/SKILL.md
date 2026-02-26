---
name: scaffold
description: Workflow for creating an accurate header and initial source file for an unimplemented class.
---

# Class Initialization Workflow

Your goal is to create a header that captures the exact class layout (vtable, members, sizes) and a source file with at least the constructor, destructor, and `Accept` method, verified against the original binary via `decomp-diff.py`.

## Phase 1: Gather Information

Collect data from **all** of these sources in parallel where possible:

### 1a. Codebase search
- Check if header/source already exist (`include/` and `src/`)
- Find the class in `config/GM8E01_00/symbols.txt` — list all member functions
- Find the class in `config/GM8E01_00/splits.txt` — note .text, .rodata, .data ranges
- Read the assembly file in `build/GM8E01_00/asm/` — especially the vtable at the end

### 1b. Metaforce reference
- Find and read the header and source in `~/workspace/dev/metaforce/`
- This gives class structure, member names, constructor args, and method implementations
- Remember: Metaforce uses C++11+ — all code must be converted (see `docs/metaforce.md`)

### 1c. Ghidra decompilation
- Decompile the constructor: `ghidra decompile <address> -o compact`
- Check `operator_new` size in the ScriptLoader to confirm class size
- Decompile the ScriptLoader function (e.g. `LoadClassName`) to verify constructor signature

### 1d. Demo map
- `build/tools/dtk map entries orig/MetaforceCWD.MAP 'ClassName.o'`
- `build/tools/dtk map symbol orig/MetaforceCWD.MAP 'mangled_name'`
- Not all classes appear in the demo map (it predates retail)

### 1e. Parent class
- Read the parent class header to understand inherited virtual methods and field offsets
- The new class's fields start at `CHECK_SIZEOF(ParentClass, 0xNN)`

### 1f. Vtable analysis
- In the assembly file, find the vtable (`.obj lbl_XXXXXXXX, global` followed by `.4byte` entries)
- Identify which virtual methods this class overrides vs inherits from parents
- The vtable tells you exactly which methods need `override` in the header

## Phase 2: Determine Class Layout

From the constructor assembly/Ghidra decompile, determine:

1. **Field offsets and types** — trace `stw`/`stfs`/`stb` instructions to `this+offset`
2. **Bitfield layout** — `rlwimi` instructions reveal bit positions within flag bytes
3. **Embedded object sizes** — constructor `bl __ct__` calls show where sub-objects are constructed
4. **Total class size** — from `operator_new(0xNNN)` in the ScriptLoader, or by computing
   last field offset + size
5. **Constructor parameter order** — match register assignments to the PPC EABI calling convention
   (r3=this, r4-r10=int args, f1-f8=float args, rest on stack)

## Phase 3: Create Header

Follow project conventions (see AGENTS.md "Code Conventions"):

- Header guard: `#ifndef _CLASSNAME` / `#define _CLASSNAME`
- Public virtual methods first (vtable at offset 0)
- Constructor with full parameter names
- Group overrides by parent class with comments (`// CEntity`, `// CActor`, etc.)
- Private members with `xNN_` offset prefixes
- `CHECK_SIZEOF(ClassName, 0xNN)` at end
- Inline trivial overrides in the header (e.g. `GetSearchPath`, `ProjectileInfo`)

## Phase 4: Create Source File

Start with the **constructor**, **destructor** (if it exists in the TU; sometimes a weak function and emitted elsewhere), and **Accept** method:

- Constructor: full initializer list matching the assembly field-by-field
- Destructor: normally empty (`ClassName::~ClassName() {}`) unless the class manages resources
- Accept: `void ClassName::Accept(IVisitor& visitor) { visitor.Visit(*this); }`
- Include `"MetroidPrime/TCastTo.hpp"` for Accept

Convert Metaforce patterns to C++98. See `docs/metaforce.md`.

## Phase 5: Build, Diff, and Fix Symbols

1. **Build**: `ninja`
2. **Extract symbols**: For any new functions, extract correct mangled names:
   ```sh
   powerpc-eabi-nm build/GM8E01_00/src/Path/To/File.o | grep '__ct__\|__vt__'
   ```
3. **Rename symbols in `symbols.txt`**:
   - Truncated constructors (`__ct__NClass` missing `F...` params) → full mangled name
   - `fn_XXXXXXXX` → proper mangled name (identify from vtable slot)
   - `lbl_XXXXXXXX` for vtable → `__vt__NClassName` with `scope:global`
   - `lbl_XXXXXXXX` for string data → `@stringBase0` with `scope:local data:string_table`
4. **Rebuild and diff**:
   ```sh
   ninja
   python scripts/decomp-diff.py -u main/Path/To/Class --search ClassName
   python scripts/decomp-diff.py -u main/Path/To/Class -d ConstructorSymbol --no-collapse
   ```
5. **Iterate** on the constructor until it matches. Common issues:
   - Stack frame size mismatch → missing/extra local copies (see Matching Tips in AGENTS.md)
   - Loop vs unrolled → check if the original unrolls repeated operations
   - `assign` vs copy-constructor → use constructors that initialize members directly
   - By-value vs by-reference returns → `ScaleCopy()` vs `GetScale()` for extra stack copies

## Phase 6: Report

Summarize:
- Match status of implemented functions
- List of remaining unimplemented (missing) functions
- Any extra symbols that need attention
- Key decisions made (field types, struct layouts, naming)
