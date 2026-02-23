# Converting Metaforce code

Metaforce is a non-matching decompilation, and often uses modern C++ features that won't work in C++98. This aims to be a (non-exhaustive) reference for things to watch out for when converting Metaforce code into decomp-matching code.

## Converting types

The python script at `tool/metaforce_renames.py` automates many simple renames listed next, but not everything works perfectly.

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

## Converting globals and getters

Metaforce -> decomp

- `zeus::CTransform::frontVector()` -> `CTransform4f::GetForward()`
- `zeus::skForward` -> `CVector3f::Forward`
- `g_Renderer` -> `gpRender`
- `zeus::degToRad` -> `CRelAngle::FromDegrees`
- `mgr.FreeScriptObject()` -> `mgr.DeleteObjectRequest()`
- `mgr.GetActiveRandom()` -> `mgr.Random()`
- `GetAreaIdAlways()` -> `GetCurrentAreaId()`

## Class definitions & constructors

Metaforce often uses default values inside of class definitions, like the `= false` below:

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

## Getters / Setters

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

## Enums

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

### Enum scoping

Since `enum class` provides scoping but regular `enum` doesn't, Metaforce uses fully-qualified enum values that need to be converted to the prefixed form.

Metaforce:

```c++
if (msg == EScriptObjectMessage::Deleted) { }
xe8_particleGen = std::make_unique<CElementGen>(particle,
  CElementGen::EModelOrientationType::Normal,
  flags & 0x2 ? CElementGen::EOptionalSystemFlags::Two
              : CElementGen::EOptionalSystemFlags::One);
```

Decomp:

```c++
if (msg == kSM_Deleted) { }
xe8_particleGen = rs_new CElementGen(particle,
  CElementGen::kMOT_Normal,
  flags & 0x2 ? CElementGen::kOSF_Two
              : CElementGen::kOSF_One);
```

## Iterators

Metaforce makes use of ranged-for and `<algorithm>`, neither of which can be used in our C++98 codebase.

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

This can be simplified with the `AUTO` macro:

```c++
for (AUTO(it, GetConnections().begin()); it != GetConnections().end(); ++it) {
```

Though sometimes the original code will instead use an indexed for loop instead, which will generate different code.

## Const correctness

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

## Accept visitor syntax

Metaforce passes `this` pointer to visitor, but decomp dereferences to pass by reference.

Metaforce:

```c++
void CExplosion::Accept(IVisitor& visitor) { visitor.Visit(this); }
```

Decomp:

```c++
void CExplosion::Accept(IVisitor& visitor) { visitor.Visit(*this); }
```

## Switch vs if-else chains

In `AcceptScriptMsg` and similar message-handling functions, the decomp typically uses switch statements rather than if-else chains. This is often required for matching.

Metaforce:

```c++
void CScriptTimer::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId, CStateManager& mgr) {
  if (GetActive()) {
    if (msg == EScriptObjectMessage::Start) {
      StartTiming(true);
    } else if (msg == EScriptObjectMessage::Stop) {
      StartTiming(false);
    } else if (msg == EScriptObjectMessage::Reset) {
      Reset(mgr);
    }
  }
  CEntity::AcceptScriptMsg(msg, objId, mgr);
}
```

Decomp:

```c++
void CScriptTimer::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId, CStateManager& mgr) {
  switch (msg) {
  case kSM_Start:
    if (GetActive()) {
      StartTiming(true);
    }
    break;
  case kSM_Stop:
    if (GetActive()) {
      StartTiming(false);
    }
    break;
  case kSM_Reset:
    if (GetActive()) {
      Reset(mgr);
    }
    break;
  }
  CEntity::AcceptScriptMsg(msg, objId, mgr);
}
```

## String literals

When constructing `rstl::string` from string literals, use `rstl::string_l()` wrapper.

Metaforce:

```c++
mgr.AddObject(new CGameLight(xec_explosionLight, GetAreaIdAlways(), GetActive(),
                             "ExplodePLight_" + x10_name, GetTransform(), ...));
```

Decomp:

```c++
mgr.AddObject(rs_new CGameLight(xec_explosionLight, GetCurrentAreaId(), GetActive(),
                                rstl::string_l("ExplodePLight_") + GetDebugName(),
                                GetTransform(), ...));
```

## Header files

### Namespace wrapping & header guards

Metaforce wraps all code in `namespace metaforce { ... }`. This needs to be removed entirely from both headers and source files.

Metaforce uses `#pragma once`, but decomp uses traditional header guards.

Metaforce header:

```c++
#pragma once
namespace metaforce {
class CExplosion : public CEffect {
  // ...
};
} // namespace metaforce
```

Decomp header:

```c++
#ifndef _CEXPLOSION
#define _CEXPLOSION
class CExplosion : public CEffect {
  // ...
};
#endif // _CEXPLOSION
```

### DEFINE_ENTITY macro

Metaforce uses a `DEFINE_ENTITY` macro in class definitions that should be removed.

Metaforce:

```c++
class CScriptTimer : public CEntity {
public:
  DEFINE_ENTITY
  CScriptTimer(TUniqueId, std::string_view name, ...);
};
```

Decomp:

```c++
class CScriptTimer : public CEntity {
public:
  CScriptTimer(TUniqueId, const rstl::string& name, ...);
};
```

### CHECK_SIZEOF assertions

Add `CHECK_SIZEOF` assertions at the end of class definitions to verify the class size is as expected.

```c++
class CEffect : public CActor {
public:
  // ...
};
CHECK_SIZEOF(CEffect, 0xe8)
```

### Parameter names in declarations

Include parameter names in function declarations in headers (and keep them synchronized with the implementation).

Metaforce:

```c++
void Reset(CStateManager&);
void ApplyTime(float, CStateManager&);
```

Decomp:

```c++
void Reset(CStateManager& mgr);
void ApplyTime(float dt, CStateManager& mgr);
```

### Class member ordering

MWCC places the vtable at different offsets depending on member ordering. Always define public functions first, then private/public data members. This ensures the vtable is placed at offset 0.

Bad (vtable placed after fields):

```c++
class CFoo {
  int x0_field;
  int x4_field;
public:
  virtual void SomeFunction();
};
```

Good (vtable at offset 0):

```c++
class CFoo {
public:
  virtual void SomeFunction();

private:
  int x0_field;
  int x4_field;
};
```
