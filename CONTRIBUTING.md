# Contributing

If you're interested in contributing, come talk to us on the [GC/Wii Decompilation Discord](https://discord.gg/hKx3FJJgrV) in the #prime channel. We're happy to help with any questions that come up.

## Resources

There are several useful resources you can use for this decomp:

- [Metaforce](https://github.com/AxioDL/metaforce) is a nearly complete **non-matching** decompilation. For 90% of classes, you can find Metaforce's version and use it as reference. This will be the best resource for game structs and code, but there are caveats described below.
- We have a shared Ghidra server, chat with encounter in Discord for access. This will sometimes have more accurate struct definitions than Metaforce. It's highly recommended cross-referencing the Ghidra project along with Metaforce.
- Metroid Prime had an early demo version ship with a symbol map. While this symbol map is missing many classes that exist in the retail version of the game, it's still recommended to reference it for information on inlined functions, class/function/variable names, and function parameters. You can find this demo map inside of "Interactive Multi Game Demo Disc Version 7" as `MetaforceCWD.map`.

## Workflow

Visual Studio Code is recommended.

### Diffing

[objdiff](https://github.com/encounter/objdiff) will be your primary diffing tool. You can fetch a binary from the latest GitHub Actions build, or build from source with `cargo run --release`.

objdiff configuration:
- Project dir: `prime`
- Target build dir: `prime/build/mp1.0/asm`
- Base build dir: `prime/build/mp1.0/src`
- Obj: Whatever .o you're currently working on (can select from asm or src build dirs)
- [x] Build target
- [x] Reverse function order (deferred)

objdiff will automatically rebuild and reload the object on source changes, so you can quickly iterate on functions.

With CodeWarrior, the `-inline deferred` flag reverses the function order in a translation unit. You'll work bottom-up in most asm files. Dolphin SDK files do **not** use `-inline deferred`, so their function order is top-down.

### Sharing
When you have a function mismatch that you want help on, you can upload a scratch to [decomp.me](https://decomp.me):
- Use `tools/decompctx.py src/path/to/file.cpp` to generate `ctx.c` which you can put in the "Context" field.
- Set preset to `Metroid Prime (USA)`.

## Metaforce notes

Metaforce is a non-matching decompilation, and often uses modern C++ features that won't work in C++98. This aims to be a (non-exhaustive) reference for things to watch out for when converting Metaforce code into decomp-matching code.

### Converting types

Metaforce -> decomp
- `s8` -> `char`
- `u8` -> `uchar`
- `s16` -> `short`
- `u16` -> `ushort`
- `s32` -> `int`
- `u32` -> `uint`
- `zeus::CTransform` -> `CTransform4f`
- `zeus::CFrustum` -> `CFrustumPlanes`
- Any other `zeus::` class has the prefixed removed, i.e. `zeus::CVector3f` -> `CVector3f`
- `std::vector` -> `rstl::vector`
- `std::optional` -> `rstl::optional_object`
- `std::pair` -> `rstl::pair`
- `std::unique_ptr` -> `rstl::single_ptr` or `rstl::auto_ptr` (`auto_ptr` has an adjacent boolean)
- `std::shared_ptr` -> `rstl::rc_ptr` or `rstl::ncrc_ptr`
- `std::array<T, N> var` -> `T var[N]`
- `std::string` -> `rstl::string`
- `std::string_view` -> `const rstl::string&`
- `std::make_unique<T>` -> `new T`
- `std::move` is removed
- `std::min` -> `rstl::min_val`
- `std::max` -> `rstl::max_val`
- `std::clamp` -> `CMath::Clamp` (depends on context)

### Converting globals and getters

Metaforce -> decomp
- `zeus::CTransform::frontVector()` -> `CTransform4f::GetForward()`
- `zeus::skForward` -> `CVector3f::Forward`
- `g_Renderer` -> `gpRender`
- `zeus::degToRad` -> `CRelAngle::FromDegrees`

### Class definitions & constructors

Metaforce often uses default values inside of class definitions, like the ` = false` below:

```c++
TAreaId x4_areaId;
TUniqueId x8_uid;
TEditorId xc_editorId;
std::string x10_name;
std::vector<SConnection> x20_conns;
bool x30_24_active : 1;
bool x30_25_inGraveyard : 1 = false;
bool x30_26_scriptingBlocked : 1 = false;
bool x30_27_inUse : 1;
```

This is unsupported in C++98, and need to be removed:

```c++
TAreaId x4_areaId;
TUniqueId x8_uid;
TEditorId xc_editorId;
rstl::string x10_name;
rstl::vector< SConnection > x20_conns;
bool x30_24_active : 1;
bool x30_25_inGraveyard : 1;
bool x30_26_scriptingBlocked : 1;
bool x30_27_notInArea : 1;
```

Instead, these values are set in the constructor like so:

```c++
CEntity::CEntity(TUniqueId id, const CEntityInfo& info, bool active, const rstl::string& name)
: x4_areaId(info.GetAreaId())
, x8_uid(id)
, xc_editorId(info.GetEditorId())
, x10_name(name)
, x20_conns(info.GetConnectionList())
, x30_24_active(active)
, x30_25_inGraveyard(false) // <--
, x30_26_scriptingBlocked(false) // <--
, x30_27_notInArea(x4_areaId == kInvalidAreaId) {}
```

### Getters / Setters

In retail, classes almost always have private members, and use getters/setters. Metaforce often doesn't represent this, and may require transitioning.

Be sure to search the demo symbol map for hints on names, getters and setters.

Example in Metaforce:

```c++
void CActor::SetTranslation(const zeus::CVector3f& tr) {
  x34_transform.origin = tr;
  xe4_27_notInSortedLists = true;
  xe4_28_transformDirty = true;
  xe4_29_actorLightsDirty = true;
}
```

Would convert to:

```c++
void CActor::SetTranslation(const CVector3f& pos) {
  x34_transform.SetTranslation(pos);
  SetTransformDirty(true);
  SetTransformDirtySpare(true);
  SetPreRenderHasMoved(true);
}
```

Note that Metaforce had somewhat inaccurate names for these fields, and the real names for the setters were located in the demo map under `SetTranslation__6CActorFRC9CVector3f`.

### Enums

Metaforce almost exclusively uses `enum class`, which isn't supported in C++98. These will be transitioned to standard `enum`s with a prefix based on the enum name.

Metaforce example:

```c++
enum class EFluidState {
  EnteredFluid,
  InFluid,
  LeftFluid,
};
```

Decomp:

```c++
enum EFluidState {
  kFS_EnteredFluid,
  kFS_InFluid,
  kFS_LeftFluid,
};
```

### Iterators

Metaforce makes use of ranged-for and `<algorithm>`, neither of which can be used in C++98.

Commonly, you'll see:

```c++
for (const SConnection& conn : x20_conns) {
  if (conn.x0_state == state && conn.x4_msg != skipMsg) {
    mgr.SendScriptMsg(x8_uid, conn.x8_objId, conn.x4_msg, state);
  }
}
```

This will be converted to use `rstl::vector<T>::iterator` or `const_iterator` like so:

```c++
rstl::vector< SConnection >::const_iterator it = GetConnections().begin();
for (; it != GetConnections().end(); ++it) {
  if (it->x0_state == state && it->x4_msg != skipMsg) {
    mgr.SendScriptMsg(GetUniqueId(), it->x8_objId, it->x4_msg, state);
  }
}
```

Though sometimes the original code will instead use an indexed for loop instead, which will generate different code.

### Const correctness

<!-- Metaforce functions and parameters often have different `const`ness than retail, which can lead to different code generation. -->

A common thing you'll see in Metaforce are `const` overloads for getters:

```c++
CWorld* GetWorld() { return x850_world.get(); }
const CWorld* GetWorld() const { return x850_world.get(); }
```

However, in retail, the standard is to use `GetX()` for const and `X()` for non-const, like so:

```c++
CWorld* World() { return x850_world.get(); }
const CWorld* GetWorld() const { return x850_world.get(); }
```
