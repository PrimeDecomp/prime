# Metroid Prime Decompilation

Matching decompilation of Metroid Prime (GameCube) targeting USA v1.088 (`GM8E01_00`).
The goal is to produce C++ source that compiles to byte-identical object code against the
original retail binary using the CodeWarrior GC 1.3.2 compiler.

## Build & Verify

```sh
python configure.py    # generate build.ninja + objdiff.json (run after config changes)
ninja all_source       # build all objects
ninja                  # build all objects, link, hash check and progress report (more noisy)
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
# or for library objects:
build/tools/dtk map entries orig/MetaforceCWD.MAP 'Kyoto_CWD.a CStreamAudioManager.cpp'
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
- Use `nullptr` and `override` (we have defines for these)
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
- **Never** use compiler `#pragma`s to force a match.
  - Sole exception: `#pragma inline_max_size(250)` works well to fix inlining issues for many TUs.
    The value of 250 exactly is what works well across the project. Do not change it.

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

### Write standard `for` loops with indexed access
When iterating a container, prefer standard `for` loops with `operator[]` over manual
pointer-walking `while` loops. MWCC automatically optimizes indexed access (`container[i]`)
into separate pointer variables internally, producing the same codegen as hand-written
pointer arithmetic — but with correct register allocation and loop structure:
```cpp
// Correct — MWCC optimizes this into pointer iteration automatically:
for (int i = 0; i < list.GetCount(); ++i) {
  CCollisionInfo& info = list[i];
  // ...
}

// Wrong — manual pointer walking often mismatches:
int i = 0;
CCollisionInfo* info = list.Begin();
while (i < list.GetCount()) {
  // ...
  ++info;
  ++i;
}
```

### MWCC hoists indexed access into pointer walks — write natural code
MWCC's optimizer converts `v[i]` in a counted loop into an internal pointer that increments
each iteration — identical codegen to hand-written `*ptr; ++ptr`. This means you should
**always prefer natural indexed access over `reinterpret_cast` pointer hacks**:
```cpp
// Correct — natural indexed access, MWCC hoists to pointer walk:
const CVector3f& min = aabb.GetMinPoint();
const CVector3f& max = aabb.GetMaxPoint();
const CVector3f& center = sphere.GetCenter();
for (int i = 0; i < 3; ++i) {
  if (center[i] < min[i]) { ... }
  else if (center[i] > max[i]) { ... }
}

// Wrong — manual pointer walking is what the compiler generates internally:
const float* minPt = reinterpret_cast< const float* >(&aabb);
const float* maxPt = reinterpret_cast< const float* >(&aabb.GetMaxPoint());
const float* spherePt = reinterpret_cast< const float* >(&sphere);
for (int i = 0; i < 3; ++i) {
  if (*spherePt < *minPt) { ... }
  ++minPt; ++maxPt; ++spherePt;
}
```
Key behaviors of MWCC's hoisting:
- **Repeated `v[i]` generates only one load** — the compiler CSEs multiple reads of the
  same indexed element within an iteration.
- **Computed index expressions like `i * 2` and `i * 2 + 1`** are optimized into separate
  incrementing counters, so `comps |= 1 << (i * 2)` compiles identically to manual
  `shiftLo += 2` tracking.
- **`const CVector3f&` refs work with `operator[]`** — bind a const-ref to `GetMinPoint()`
  etc. and index it.
- Hoisting only works in **counted `for` loops** (`for (int i = 0; i < N; ++i)`). Manual
  `while` loops or unusual iteration patterns may not trigger the optimization.

### Avoid Ghidra-isms in source code
Ghidra's decompiler output often contains patterns that are clearly compiler-generated,
not original source. Never paste these directly — always reverse them back to natural C++:
- **Byte-offset pointer arithmetic** like
  `reinterpret_cast< const CVector3f* >(reinterpret_cast< const char* >(table) + offs)`
  where `offs += 0x18` — this is array indexing. If the element size is 12 bytes (CVector3f),
  then `offs = 0xc` is index 1, `offs += 0x18` increments by 2 elements. Write `table[idx]`.
- **Bit-manipulation flag packing** like
  `((uint)(uchar)((a <= b) << 1) << 0x1c) >> 0x1d` — this is Ghidra's rendering of
  `mfcr/rlwinm/rlwimi` sequences that pack comparison results into bitfields. Rewrite as
  natural boolean expressions or flag accumulation.
- **Pre-declared variables at function top** — Ghidra lists all locals at the start. Move
  definitions to the point of first use for more natural code. MWCC handles this fine.
- **`in_fN` / `dVarN` / `fVarN` variable names** — these are Ghidra artifacts. Use
  meaningful names (`startX`, `deltaY`, `radius`, etc.).

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

### Named temporaries prevent `fmadds` fusion
MWCC fuses `dist += d * d` into a single `fmadds` instruction. When the original has
separate `fmuls` + `fadds`, introduce a named temporary to prevent fusion:
```cpp
// Generates fmadds (fused multiply-add):
dist += d * d;

// Generates separate fmuls + fadds:
float dsq = d * d;
dist += dsq;
```

### `!(a >= b)` vs `a < b` generate different compare sequences
MWCC generates different instruction sequences for logically equivalent float comparisons:
- `a < b` → `fcmpo; bge` (branch if NOT less-than)
- `!(a >= b)` → `fcmpo; cror eq,gt,eq; bne` (combine CR bits, branch if NOT set)

Check the diff for `cror` instructions. If the original has `cror eq,gt,eq` followed by
`bne`, use the negated form `!(a >= b)`. Similarly `!(a <= b)` generates `cror eq,lt,eq`.

### `-0.f` vs `0.f` are distinct constants
These have different bit patterns (`0x80000000` vs `0x00000000`) and generate separate
sdata2 entries. If the original loads from a different sdata2 offset for a zero comparison
vs a zero assignment, one may be `-0.f`. Check the data section labels to determine which.

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

### Division-by-power-of-two trick for fmuls operand order
When `x * 0.5f` generates `fmuls` with the wrong operand order (e.g. `fmuls f1, f0, f1`
instead of `fmuls f1, f1, f0`), use `x / 2.f` instead. MWCC converts division by a
power-of-2 constant into multiplication, but assigns operands differently than a direct
multiply by 0.5f. Similarly, `0.25f / x` vs `(1.f / x) * 0.25f` can produce different
operand orderings.

### Non-const local prevents constant folding
`double val = 0.0;` (non-const) prevents MWCC from folding `expr - val` into just `expr`,
while `const double val = 0.0;` gets folded away. Useful when the original assembly has
explicit arithmetic with a zero constant (e.g. `fsub f1, f4, f2` where f2 is loaded 0.0).

### `close_enough()` preserves `fsubs` with zero
When the original assembly has `fsubs fX, fY, fZ` where one operand is 0.0 (subtracting
zero that isn't optimized away), use `close_enough(x, 0.f)` instead of
`CMath::AbsF(x - 0.f)`. The compiler folds literal `x - 0.f` during parsing, but
`close_enough`'s deferred inline preserves the subtraction in the function body.

### `frsp` after math calls: use `sinf`/`cosf`/`acosf`/`atan2f` etc.
When the original has `bl acos` (or `sin`, `cos`, etc.) followed by `frsp` (float round
to single precision), use the `f`-suffixed variant (`acosf`, `sinf`, `cosf`, `atan2f`,
etc.). In `libc/math.h` these are inline wrappers that call the double-precision version
and cast to float — e.g. `acosf(x)` expands to `(float)acos((double)x)` — so they
generate `bl acos` + `frsp` automatically.

### CVector3f constructor evaluation order
`CVector3f(x, y, z)` evaluates arguments **right-to-left** (z first, then y, then x) due
to MWCC's calling convention. However, the `CVector3f` **copy constructor** loads members
in declaration order (x first, then y, then z). This means:
- `CVector3f(a.GetX(), a.GetY(), a.GetZ())` loads z, y, x
- `CVector3f(a)` (copy) loads x, y, z
Choose the form that matches the original's load ordering.

### `CMath::Limit` for `fabs/fsel/fmuls` float clamping
When the original has a `fabs` + `fcmpo` + `fsel` + `fmuls` pattern for clamping a float
to `[-h, h]`, use `CMath::Limit(val, h)`. This inline expands to
`if (fabs(v) > h) return h * Sign(v); return v;` which generates the exact `fsel`+`fmuls`
sequence. Direct approaches like `val = Sign(val)` or `val = 1.f * FastFSel(...)` lose
the `fmuls` through constant folding, producing `fmr` instead.

### `CMath::Clamp` vs nested `rstl::min_val`/`max_val`
For clamping a value to a range, `CMath::Clamp(lo, val, hi)` often matches where nested
`rstl::min_val(hi, rstl::max_val(lo, val))` does not. The nested form inlines two separate
compare-and-select sequences, while `Clamp` generates a single call with different register
usage and stack behavior.

### Pre-load matrix elements into named locals for matrix multiply
For matrix multiplication functions, extracting the operand matrix elements into named
`const float` locals before the computation gives the compiler better visibility into data
reuse across rows, leading to correct register allocation:
```cpp
const float b00 = other.m00, b01 = other.m01, b02 = other.m02;
// ... then use b00, b01, etc. in the multiply expressions
```
Without named intermediates, MWCC may schedule loads differently (e.g. loading a
translation element before a rotation element) causing cascading register mismatches.

### Named float intermediates vs direct member access affect callee-saved FPR usage
Caching a member in a named float local (e.g. `float foo = m02;`) extends its live
range across all uses of `foo`, potentially forcing it into a callee-saved FPR (f14-f31)
and increasing the stack frame. If the original uses a volatile FPR (f0-f13), the member
may be accessed directly from `this` each time instead of cached. Compare stack frame
sizes: if yours is larger (e.g. 0x40 vs 0x30), count callee-saved FPR saves — each extra
one adds 0x10 to the frame (8 bytes stfd + 8 bytes psq_st). Remove named intermediates
that extend live ranges unnecessarily.

### Branch layout: `if` orientation matters
MWCC preserves the source-level branch orientation. `if (!expr) return A; return B;` and
`if (expr) return B; return A;` are **not** interchangeable — they produce different branch
instructions (`beq` vs `bne`) and swap the fall-through vs taken paths. When the diff shows
the correct instructions but wrong branch direction, flip the `if` condition and swap the
bodies. (Ghidra decompilation often flips branch directions compared to the original)

### `cmplwi` vs `cmpwi` indicates signedness
`cmplwi rN, 0` (unsigned compare) followed by `beq` indicates the variable is compared
as unsigned. `cmpwi rN, 0` (signed compare) indicates signed.

### `.{Get,Set}{X,Y,Z}` vs `[kD{X,Y,Z}]` for CVector3f component access
This can affect register allocation due to the `float&` return value. Try both forms:
`target.SetX(GetTranslation().GetX());` and `target[kDZ] = GetTranslation()[kDZ];`

### `rstl::max_val` / `rstl::min_val` with literals
`rstl::max_val` and `rstl::min_val` take parameters by `const T&`. When called with
a float literal like `rstl::max_val(0.f, value)`, the compiler must make the literal
addressable, placing it in `.sdata`. If you see a non-const `static float` in `.sdata`
used only for comparison/selection with a local variable, it's likely an inlined
`rstl::max_val` or `rstl::min_val` call:
```cpp
// Decompiler output with static float and pointer indirection:
static float lbl_XXXXXXXX = 0.f;
float* ptr;
if (lbl_XXXXXXXX < val) { ptr = &val; } else { ptr = &lbl_XXXXXXXX; }
result = *ptr;
// Original source:
result = rstl::max_val(0.f, val);
```

### CTransform4f column access
`CTransform4f` columns can be accessed via `.Get{Right,Forward,Up}()` or `[kD{X,Y,Z}]`.
For translation (fourth column), `.GetTranslation()` is available. It is **rare**
that the original devs wrote direct component access (`Get00`, `Get01`, etc.), so if
you find yourself writing those, try switching to named getters or `operator[]`.

### Simplify vector math expressions
The original devs used math functions extensively. Attempt to simplify expressions
using available operators and functions. For example:
```cpp
// Verbose form, component-wise without operators:
const float normalY = info->GetNormalLeft().GetY();
const float normalX = info->GetNormalLeft().GetX();
const float normalZ = info->GetNormalLeft().GetZ();
float dot = normalY * mNormal.GetY();
dot += normalX * mNormal.GetX();
dot += normalZ * mNormal.GetZ();
if (dot < 0.99f) {
  mPrevNormal = mNormal;
  mNormal.SetX(normalX);
  mNormal.SetY(normalY);
  mNormal.SetZ(normalZ);
}
// Compact, humanized form:
const CVector3f normal = info->GetNormalLeft(); 
if (CVector3f::Dot(normal, mNormal) < 0.99f) {
  mPrevNormal = mNormal;
  mNormal = normal;
}
```
Or:
```cpp
// Verbose form without operators:
const CVector3f max(aabb.GetMaxPoint().GetX() + 0.1f,
                    aabb.GetMaxPoint().GetY() + 0.1f,
                    aabb.GetMaxPoint().GetZ() + zOffset);
const CVector3f min(aabb.GetMinPoint().GetX() - 0.1f,
                    aabb.GetMinPoint().GetY() - 0.1f,
                    aabb.GetMinPoint().GetZ() - zOffset);
const CAABox bounds(min, max);
// Compact, humanized form:
const CVector3f offset(0.1f, 0.1f, zOffset);
const CAABox bounds(aabb.GetMinPoint() + offset,
                    aabb.GetMaxPoint() + offset);
```
Or:
```cpp
// Verbose form without operators:
const CVector3f max(aabb.GetMaxPoint().GetX() + 0.1f,
                    aabb.GetMaxPoint().GetY() + 0.1f,
                    aabb.GetMaxPoint().GetZ() + zOffset);
const CVector3f min(aabb.GetMinPoint().GetX() - 0.1f,
                    aabb.GetMinPoint().GetY() - 0.1f,
                    aabb.GetMinPoint().GetZ() - zOffset);
const CAABox bounds(min, max);
// Compact, humanized form:
const CVector3f offset(0.1f, 0.1f, zOffset);
const CAABox bounds(aabb.GetMinPoint() - offset,
                    aabb.GetMaxPoint() + offset);
```
Or:
```cpp
// Verbose translation offset:
const CVector3f pos(xf.Get03() + 0.f, xf.Get13() + 0.f, xf.Get23() + zLift);
// Compact form:
const CVector3f pos = xf.GetTranslation() + CVector3f(0.f, 0.f, zLift);
```
Or:
```cpp
// Verbose velocity prediction:
const float velX = GetVelocityWR().GetX();
const float velY = GetVelocityWR().GetY();
const float xMove = dt * velX;
const float velZ = GetVelocityWR().GetZ();
const float yMove = dt * velY;
const float xPred = GetTransform().Get03() + xMove;
const float zMove = dt * velZ;
pos.SetX(xPred);
...
// Compact form:
pos = GetTranslation() + dt * GetVelocityWR();
```
Or:
```cpp
// Verbose distance squared:
float dX = a.GetX() - b.GetX();
float dY = a.GetY() - b.GetY();
float dZ = a.GetZ() - b.GetZ();
float distSq = dX * dX + dY * dY + dZ * dZ;
// Compact form:
const CVector3f& delta = a - b;
float distSq = delta.MagSquared();
```
Not only does this look more natural, using `CVector3f`, operators
and helpers are often key to getting the correct register allocation.
Remember: game devs are lazy — they wouldn't write a dot product by hand
if they had a `Dot` function available.

_Try different forms_ if the expressions won't work immediately — the
compiler does aggressive scheduling and register allocation, so small
changes can have big effects on the generated code. Try not to fall back
to copying literal Ghidra output — this is not only ugly, but it will also
very likely not match, as it represents the optimized assembly, not the
original source.
