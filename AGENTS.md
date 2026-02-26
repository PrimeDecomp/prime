# Metroid Prime Decompilation

Matching decompilation of Metroid Prime (GameCube) targeting USA v1.088 (`GM8E01_00`).
The goal is to produce C++ source that compiles to byte-identical object code against the
original retail binary using the CodeWarrior GC 1.3.2 compiler.

## Build & Verify

```sh
python configure.py    # generate build.ninja + objdiff.json (run after config changes)
ninja all_source       # build all objects
ninja                  # build all objects, hash check and progress report
ninja baseline         # generates baseline report for regression checking
ninja changes          # check for regressions after code changes (empty = no regressions)
```

## Project Layout

```
src/                   C++ source (organized by subsystem)
include/               Headers
config/GM8E01_00/      Symbol addresses, section splits for USA v1.088
  symbols.txt          Mangled symbol names -> addresses
  splits.txt           Memory layout / section boundaries
orig/                  Original game files (DOL, MAP)
  MetaforceCWD.MAP     Demo build debug symbol map
scripts/               Agent tooling (see below)
tools/                 Build system scripts (project.py, decompctx.py)
objdiff.json           Generated build/diff configuration
```

### Source Organization

- `src/MetroidPrime/` — Game-specific code (actors, cameras, weapons, HUD, enemies, player)
- `src/Kyoto/` — Core engine (resource management, graphics, audio, math, particles)
- `src/Dolphin/` — GameCube SDK wrappers (OS, GX, DVD, PAD, DSP)
- `src/Runtime/` — Runtime utilities
- `src/Collision/`, `src/GuiSys/`, `src/Weapons/`, `src/MetaRender/` — Supporting libraries

## Agent Tooling

### decomp-diff.py — Diff & symbol overview

Overview mode lists all symbols in a translation unit with match status:
```sh
python scripts/decomp-diff.py -u main/MetroidPrime/CIOWinManager
python scripts/decomp-diff.py -u main/MetroidPrime/CIOWinManager -s nonmatching -t function
python scripts/decomp-diff.py -u main/MetroidPrime/CIOWinManager -s missing -t function
python scripts/decomp-diff.py -u main/MetroidPrime/CIOWinManager --search RemoveIOWin
```

Filters: `-t function,object` (type), `-s missing|matching|nonmatching|extra` (status),
`--section .text`, `--search <pattern>` (fuzzy name match).

Diff mode shows side-by-side instruction comparison:
```sh
python scripts/decomp-diff.py -u main/MetroidPrime/CIOWinManager -d DistributeOneMessage
python scripts/decomp-diff.py -u main/MetroidPrime/CIOWinManager -d FindIOWin -C 5
```

Mismatched args are wrapped in `{}`. Matching runs are collapsed (control with `-C <n>` context lines, `--no-collapse`). Left = original, right = decomp.

### decomp-status.py — Project-wide progress

```sh
python scripts/decomp-status.py                    # all categories
python scripts/decomp-status.py --category game    # filter to game code
python scripts/decomp-status.py --unit main/MetroidPrime/CIOWinManager
python scripts/decomp-status.py --json             # machine-readable
```

### decomp-context.py — Function context for matching work

Gathers source code, objdiff diff, Ghidra decompile, and debug map info:
```sh
python scripts/decomp-context.py -u main/MetroidPrime/CEntity -f AcceptScriptMsg
python scripts/decomp-context.py -u main/MetroidPrime/CIOWinManager -f FindIOWin --no-source
```

Flags: `--no-source`, `--no-ghidra`, `--no-map` to skip sections.

### dtk (decomp-toolkit)

Query the demo build debug map:
```sh
build/tools/dtk map symbol orig/MetaforceCWD.MAP 'AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager'
build/tools/dtk map entries orig/MetaforceCWD.MAP 'CEntity.o'
```

`map symbol` requires an **exact** mangled symbol name. To fuzzy-search for symbols in
the map, use `grep` on `orig/MetaforceCWD.MAP` instead.
`map symbol` shows where a function lives, its references, and which TUs generate it.
`map entries` lists all symbols in a translation unit — reveals inlined functions.
See `docs/map.md` for details on interpreting map output.

Demangle a symbol:
```sh
build/tools/dtk demangle 'AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager'
```

## Reference Sources

When working on a function, correlate information across these sources. None is authoritative
on its own — each has limitations that must be cross-checked.

**Demo symbol map** (`orig/MetaforceCWD.MAP`): Debug map from an early demo build.
Provides mangled function names, parameter types, and inline function visibility.
Limitations: the demo predates retail, so some functions changed signatures or were
added/removed. Inlined functions are deduplicated (see `docs/map.md`).

**Metaforce** (`~/workspace/dev/metaforce`): Near-complete
non-matching decompilation using modern C++. Use as structural reference for ~90% of classes,
but never copy directly — it uses C++11+ features, different type names, and sometimes
inaccurate member names. Always verify against the original assembly and demo map.
See `docs/metaforce.md` for conversion rules.

**Ghidra project** (`--project prime`): Community-maintained reverse engineering with manual
struct definitions, function signatures, and type annotations. More accurate than Metaforce
for struct layouts in many cases. Cross-reference with Metaforce.

**Metroid Prime Remastered**: The 2023 remaster preserves many original actor class symbols
(built with `--export-all-symbols`). Useful for discovering symbol names not in the demo map,
particularly for game-specific code. Core engine code has diverged significantly and should
not be used as reference for Kyoto/Dolphin modules.

**symbols.txt reliability**: Mangled names in `config/GM8E01_00/symbols.txt` are manually
maintained. For symbols that exist in the demo map, the map is authoritative. For symbols
not in the map (invented or from other sources), mostly trust Metaforce's signature but
verify — both the map and Metaforce can be wrong (post-demo symbol changes and non-matching
changes respectively). When in doubt, deduce the correct signature from the disassembly.

## Code Conventions

This is a **C++98** codebase compiled with CodeWarrior. Key rules:

- No `auto`, `nullptr`, range-for, `enum class`, `std::` containers, lambdas, or any C++11+
- Spaces inside angle brackets: `rstl::vector< SConnection >` (required by MWCC)
- Use `rstl::` types instead of `std::` (see `docs/metaforce.md` for full mapping)
- Enum values use prefix: `enum EFoo { kF_Value1, kF_Value2 }` (not `enum class`)
- Use `rs_new` instead of `new` for game allocations
- Use C++ casts (`static_cast< T >(expr)`) instead of C-style casts
- Use `rstl::string_l("literal")` for string literal construction
- Header guards: `#ifndef _CLASSNAME` / `#define _CLASSNAME` (not `#pragma once`)
- `CHECK_SIZEOF(ClassName, 0xNN)` after class definitions
- Public virtual functions first in class body (vtable must be at offset 0)
- Constructors use initializer list style with leading `, ` on each line
- Use `AUTO(it, container.begin())` macro for iterator declarations
- Non-const getter: `Foo()`, const getter: `GetFoo() const`
- `Accept` visitor: `visitor.Visit(*this)` (dereference, not pointer)
- Function order in TU is typically bottom-up due to `-inline deferred`
  (exception: Dolphin SDK files are top-down)

## Matching Philosophy

Never dismiss a diff as "close enough" or "just register allocation." Every mismatched
instruction is a signal that the source doesn't perfectly represent the original. Even
the most stubborn mismatches can be resolved through careful analysis, lateral thinking, and
creative source-level permutations. It may take 10 iterations or 100, but the ultimate goal
is to perfectly match the original code.

Matching can be tricky — be patient and methodical. Try many different ways of writing the same thing. Look for patterns elsewhere in the codebase. Only move on when you've exhausted concrete ideas, not when the match percentage is "high enough."

## Matching Tips

Collected patterns for getting MWCC to generate matching code.

### Always **humanize** code
Most importantly: write code that a human would write. Collapse unneeded temporaries, use operators,
and avoid unnecessary copies. The original code was written by humans, so the closer your source is
to natural C++, the more likely it is to match.

MWCC's instruction scheduling will often reorder instructions (_especially_ float math).
Attempt to write in the most natural way to start, and only restructure if it does not match.

### symbols.txt can have typos
The mangled names in `config/GM8E01_00/symbols.txt` are manually maintained and can have
errors. Cross-reference against the demo map (`dtk map symbol`) and Ghidra to verify
constructor/function signatures. Demangle with `dtk demangle` to check parameter types
and const-qualifiers.

### Renaming symbols in symbols.txt
When you discover the correct identity of a `fn_XXXXXXXX` or `lbl_XXXXXXXX` placeholder,
rename it immediately in `config/GM8E01_00/symbols.txt`. Common cases:

- **vtables**: `lbl_XXXXXXXX` → `__vt__NClassName` (e.g. `__vt__12CAtomicAlpha`).
  Add `scope:global`.
- **String tables**: `lbl_XXXXXXXX` → `@stringBase0`. Add `scope:local data:string_table`.
- **Functions**: `fn_XXXXXXXX` → proper mangled name. Add `scope:` if known from the demo map.

To generate a mangled name, compile the function and extract the symbol, e.g.:
```sh
powerpc-eabi-nm build/GM8E01_00/src/MetroidPrime/CEntity.o | grep '__ct__'
```

Always rebuild (`ninja all_source`) after adjusting `symbols.txt`/`splits.txt` so that decomp-toolkit regenerates the target object files and disassembly reference files.
Properly named symbols eliminate false diffs (label name mismatches that obscure real instruction differences).

### Stack frame size as a diagnostic
When the stack frame size differs (e.g. `stwu r1, -0x420` vs `-0x400`), compute the byte
difference (0x20 = 32 bytes). This tells you exactly how many bytes of local variables are
missing or extra. Common causes: missing struct copies (CAABox = 24 bytes), missing CColor
copies (4 bytes each).

### Copy initialization forces operator= / copy constructor
MWCC's copy elision behavior depends on whether the copy constructor is explicit or
compiler-generated. An explicit `T(const T&)` _may_ get elided, but a compiler-generated
copy constructor or `operator=` often does not. For types without an explicit copy constructor
(like `CAABox`), copy initialization (`T x = T(args)`) generates a real field-by-field copy
on the stack, while direct initialization (`T x(args)`) constructs in place:
```cpp
CAABox box = CAABox(-halfExtent, halfExtent);  // generates copy
CAABox box(-halfExtent, halfExtent);           // no copy
```

### in.Get<T>() vs T(in) for stream reads
`T x(in)` constructs directly in place. `T x = in.Get<T>()` constructs a temporary via
`cinput_stream_helper`, returns by value, then copy-constructs `x`. For types with only a
compiler-generated copy constructor, MWCC won't elide this copy, generating an extra
load+store on the stack. Use whichever form the original has:
```cpp
CColor insideFogColor = in.Get<CColor>(); // generates copy
CColor splashColor(in);                   // no copy
```

### in.Get<T>() vs in.ReadBool()/ReadLong() for register allocation
`in.ReadBool()` and `in.ReadLong()` store the result through `r0` as an intermediate
(`mr r0, r3; mr rN, r0`), while `in.Get<bool>()` and `in.Get<int>()` store directly
to a callee-saved register (`mr rN, r3`). This difference cascades through all subsequent
register assignments. When the diff shows `mr r0, r3` followed by `mr rN, r0`, the
original uses `ReadBool()`/`ReadLong()`. When it shows a direct `mr rN, r3`, use
`in.Get<T>()`. Each function may use a different mix — check the diff for each call site.

### ReadShort sign extension
`in.ReadShort()` returns `ushort` and generates `clrlwi` (zero-extend). If the original has
`extsh` (sign-extend halfword), cast the result:
```cpp
int val = static_cast< short >(in.ReadShort());  // generates extsh (sign extend) ✓
int val = in.ReadShort();         // generates clrlwi (zero extend) ✗
```

### rs_new for all heap allocations
Always use `rs_new` for heap allocations (both objects and arrays). Plain `new` calls the
single-arg `operator new(size_t)`, while `rs_new` calls the debug overload
`operator new(size_t, const char*, const char*)` which matches the original:
```cpp
Foo* p = rs_new Foo(args);       // calls new("??(??)", nullptr) Foo(args) ✓
uint* buf = rs_new uint[len];    // calls new[]("??(??)", nullptr) ✓
Foo* p = new Foo(args);          // calls new(size_t) only ✗
```

### Ternary conditionals in constructor args
When the original evaluates conditional logic AFTER `operator new` but BEFORE the constructor
call (visible in the diff as conditionals appearing between the `bl operator new` and
`bl __ct`), move the conditionals inline into the `rs_new` expression as ternaries:
```cpp
// Conditionals evaluated during argument evaluation (after operator new):
return rs_new Foo(bumpMap == kInvalidAssetId ? _envMap : kInvalidAssetId, ...);

// Conditionals evaluated BEFORE operator new (won't match):
CAssetId envMap = kInvalidAssetId;
if (bumpMap == kInvalidAssetId) envMap = _envMap;
return rs_new Foo(envMap, ...);
```

### PPC EABI calling convention
On PowerPC EABI (as used by MWCC), float and integer parameters use **separate** register
files: floats fill f1–f8 sequentially, integers fill r3–r10 sequentially, independently of
each other. This means inserting/removing a `float` parameter shifts all subsequent float
register assignments but does NOT affect integer register assignments (and vice versa). Use
this to verify constructor signatures by counting float register loads (lfs into f1–f8)
before a `bl __ct` call.

### Function parameters are evaluated right-to-left

This can make it easy to spot expressions inlined in constructor or function call arguments.

### Use CVector3f (and other math class) operators

Instead of:
```cpp
const float mass = actor->GetMass();
const float velX = x18_velocity.GetX();
const float velY = x18_velocity.GetY();
const float velZ = x18_velocity.GetZ();
actor->SetConstantForceWR(CVector3f(mass * velX, mass * velY, mass * velZ));
```
Simply write: `actor->SetConstantForceWR(GetVelocity() * actor->GetMass());`
(& Use class getters when available and codegen matches)

Similarly,
```cpp
const float dY = xc_waypoint1.GetY() - patterned->GetTransform().Get13();
const float dZ = xc_waypoint1.GetZ() - patterned->GetTransform().Get23();
const float dX = xc_waypoint1.GetX() - patterned->GetTransform().Get03();
CVector3f wpDelta(dX, dY, dZ);
```
-> `CVector3f wpDelta = xc_waypoint1 - patterned->GetTranslation();`

```cpp
bool hasTarget = false;
CBodyStateCmdMgr& cmdMgr = bc.CommandMgr();
if (0.f != cmdMgr.GetTargetVector().GetX() || 0.f != cmdMgr.GetTargetVector().GetY() ||
    0.f != cmdMgr.GetTargetVector().GetZ()) {
  hasTarget = true;
}
if (hasTarget) {
  bc.FaceDirection(cmdMgr.GetTargetVector(), dt);
}
``` -> ```cpp
CBodyStateCmdMgr& cmdMgr = bc.CommandMgr();
if (cmdMgr.GetTargetVector().IsNonZero()) {
  bc.FaceDirection(cmdMgr.GetTargetVector(), dt);
}
```
(The bool assignment is MWCC's codegen for inlined bool expressions)

Check math headers for available operators.
Don't add new operators unless indicated by the demo map.

### Permutation tips for register allocation and stack layout
When the instruction sequence matches but register assignments or stack slot ordering is
wrong, try these source-level permutations:

**`ReadFloat()` vs `Get<float>()`**: These call the same underlying function but generate
different code at the call site. `Get<float>()` goes through `cinput_stream_helper` which
may change how the compiler assigns stack slots to float locals. Try switching all float
reads in a function to one form or the other if float variable stack offsets are shifted.

**Manual component math vs operator overloads on CVector3f**: Using
`CVector3f(v.GetX() * s, v.GetY() * s, v.GetZ() * s)` can produce different component
load ordering than `v * s` or `s * v` (which go through inline `operator*`). If extent/vector
component loads are in the wrong order (e.g. Z,X,Y instead of X,Y,Z), try switching between
these forms.

**Named intermediates vs inline computation**: Introducing named float locals
(`float hx = ...; CVector3f(hx, hy, hz)`) vs computing directly in constructor args
(`CVector3f(GetX()*0.5f, ...)`) can change both load ordering and register assignment.
Named intermediates may cause the compiler to reorder component loads.

### const bool parameters and clrlwi
When a constructor parameter is declared `const bool`, MWCC generates `clrlwi rN, rM, 24`
(zero-extend) at the call site to ensure the bool is properly masked. Without `const`,
it generates a plain `mr rN, rM`. Check the diff: if the original has `clrlwi` before the
constructor call for a bool arg, the parameter should be `const bool` in the header. If it
has `mr`, use plain `bool`. This applies to the declaration in the header — the definition
can match or differ.

### Ternaries for struct-returning conditionals
When MWCC generates pointer indirection for conditional struct returns (loading one of two
stack addresses into a register, then copying through the pointer at the merge point), use
a ternary expression. MWCC implements struct-valued ternaries with exactly this pointer
indirection pattern:
```cpp
// Generates pointer indirection:
CScannableParameters sParms =
    propCount > 5 ? LoadScannableParameters(in) : CScannableParameters(kInvalidAssetId);

// Generates direct copy:
CScannableParameters sParms;
if (propCount > 5) sParms = LoadScannableParameters(in);
else sParms = CScannableParameters(kInvalidAssetId);
```
The ternary creates two temporaries on the stack, selects via pointer, and copies to the
result — matching the `addi r3, r1, offsetA` / `addi r3, r1, offsetB` / `lwz r0, 0(r3)`
pattern seen in Ghidra output.

### const CVector3f& to force stack materialization
MWCC aggressively eliminates intermediate `CVector3f` locals when all operations
(constructors, `operator+`, `GetX()`/`GetY()`/`GetZ()`) are inlined — the values stay
in float registers and never touch the stack. When the original has extra `stfs` stores
for intermediate CVector3f values, use `const CVector3f&` bound to a temporary to force
the compiler to materialize the object on the stack (C++ lifetime extension):
```cpp
CVector3f boundsMax(x, y, z);                     // MWCC may keep in registers only
const CVector3f& boundsMax = CVector3f(x, y, z);  // forces stack allocation
```
Each `const CVector3f&` binding adds ~0x10 (16 bytes: 12 for the CVector3f + 4 alignment)
to the stack frame. Use this to match the original stack frame size.

**Stack layout caveat**: MWCC groups const-ref temporaries separately from regular
`CVector3f` locals in the stack frame. If the original interleaves raw/translated pairs
(e.g. boundsMax@0x08, aabbMax@0x14, boundsMin@0x20, aabbMin@0x2C), making all four the
same "kind" (all `const CVector3f&`) may be needed to get the right layout. Mixing
`const CVector3f&` (for raws) with regular `CVector3f` (for translated) produces a
grouped layout instead of interleaved.

### Assembly patterns

- `fmuls fX, fX, fY` or sometimes `fmuls fX, fY, fX` => `v *= fY`
- `xoris r0, r0, 0x8000` in int-to-float conversion => field is `int`, not `uint`.
  Unsigned int-to-float uses a different sequence without `xoris`.
- `extsb` (sign-extend byte) on a bool/byte field => the code treats it as `char`, not
  `bool`. Cast through `const char*` and use `!= 0` to generate the `extsb/neg/or/srwi`
  pattern.
- `static int kFoo = N` (non-const) places value in `.sdata` (`lwz` from sdata).
  `static const int kFoo = N` gets constant-folded to an immediate (`li`). Match the
  original by checking whether the value is loaded from sdata or used as an immediate.
