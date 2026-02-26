---
name: ghidra
description: Ghidra CLI tool reference
---

# Ghidra CLI

The project contains two programs:

- `prime.dol` — Original GameCube DOL (default). Community-annotated with types and signatures.
- `prime_remastered` — Metroid Prime Remastered (Switch). Has exported symbols (`--export-all-symbols`).
  Original MP1 classes are suffixed: `CActorMP1`, `CEntityMP1`, etc.

Switch between them with `ghidra program open --project prime --program <name>`.

Use `-o compact` for shorter output in the CLI. Use `-o json` for machine-readable output when scripting.

```sh
ghidra set-default project prime        # set default project
ghidra decompile 0x80051324 -o compact  # decompile function at address
ghidra find function "AcceptScriptMsg"  # search by name
ghidra type get "CEntity"               # struct layout
ghidra disasm 0x80051324 -n 30 -o compact  # raw disassembly
```

Note: Ghidra uses short demangled names (e.g. `AcceptScriptMsg` matches all overrides).
Use the address from `config/GM8E01_00/symbols.txt` for precise lookups.

**Important:** Ghidra has no concept of `const`. All pointers, references, and member
functions appear non-const in Ghidra output. Never infer const-qualification (or lack
thereof) from Ghidra decompilation — use the demo map mangled name or Metaforce as the
source of truth for const.

#### Disassembly

Ghidra's disassembly output is fine for quick reference, but it's better to reference decomp-toolkit's
generated disassembly files in `build/GAMEID/asm/` which contain more information (e.g. symbol names,
relocation targets, data values) and are easily grepable.

#### Updating data types

Use `ghidra type import-c` to define structs, enums, and typedefs. Always use `--category`
to namespace types under the class name and avoid polluting the root type manager.

Types must be converted to plain C: you must manually define templates as plain structs (e.g. `rstl::vector<T>` becomes `struct rstl_vector_T { void* x0_allocator; int x4_count; int x8_capacity; T* xc_items; };`).

```sh
# Simple struct + enum
ghidra type import-c --category /CGunController \
  'enum EGunState { kGS_Inactive = 0, kGS_Default = 1, kGS_FreeLook = 2 };
   struct CGunController { CModelData *x0_modelData; EGunState x50_gunState; int x54_curAnimId; };'
```

For classes with virtual functions, define a vtable struct with typed function pointers.
Use a forward declaration, named typedefs for each function pointer, and the vtable struct
in a single `import-c` call:

```sh
ghidra type import-c --category /CScriptTimer \
  'struct CScriptTimer;
   typedef void (*CScriptTimer_dtor_fn)(CScriptTimer *this, short flags);
   typedef void (*CScriptTimer_Accept_fn)(CScriptTimer *this, IVisitor *visitor);
   typedef void (*CScriptTimer_Think_fn)(CScriptTimer *this, float dt, CStateManager *mgr);
   typedef void (*CScriptTimer_AcceptScriptMsg_fn)(CScriptTimer *this, EScriptObjectMessage msg, TUniqueId objId, CStateManager *mgr);
   typedef void (*CScriptTimer_SetActive_fn)(CScriptTimer *this, bool active);
   struct CScriptTimer_vtable {
     void *__rtti_0; void *__rtti_1;
     CScriptTimer_dtor_fn dtor;
     CScriptTimer_Accept_fn Accept;
     CScriptTimer_Think_fn Think;
     CScriptTimer_AcceptScriptMsg_fn AcceptScriptMsg;
     CScriptTimer_SetActive_fn SetActive;
   };
   struct CScriptTimer {
     CScriptTimer_vtable *vtable; CEntity_ cls;
     float x34_time; float x38_startTime; float x3c_maxRandDelay;
     unsigned char x40_loop; bool x41_autoStart; bool x42_isTiming;
   };'
```

Class layout pattern: `ClassName_vtable *vtable` at offset 0, then `ParentClass_ cls` for the
parent body (e.g. `CEntity_`), then own fields. This preserves the vtable pointer and parent
struct layout that Ghidra expects.

#### Updating function signatures

Apply proper prototypes so the decompiler resolves parameters and `this`:

```sh
# first, assign the symbol to a namespace for __thiscall to work
ghidra symbol rename 0x801CC84C CGunController::EnterStruck
ghidra function set-signature 0x801CC84C \
  'void __thiscall EnterStruck(CStateManager *mgr, float angle, bool bigStrike, bool b2)'
```

`__thiscall` automatically prepends `ClassName *this` as the first parameter. The address
must point to the function entry. Look up addresses in `config/GM8E01_00/symbols.txt`.

For regular C functions, use `__stdcall` (standard EPPC calling convention).
