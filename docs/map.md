# Using the debug map

An early demo build of Metroid Prime shipped with a debug map (MetaforceCWD.MAP). The debug build had no inlining, so all functions (including normally-inlined functions) are listed in the map file.

However, there are a few caveats:

1. Given that this is for an early demo build, it does not contain everything present in the retail release. Some functions may have changed prototypes or been added/removed entirely.
2. Functions only show up _once_ in the link map, even if they are used in multiple translation units. However, the map _does_ list what other translation units reference that function, although we lose the information about the exact call sites. For example, the first usage of `CVector3f::GetX()` is shown as:
	```
  11] GetX__9CVector3fCFv (func,weak) found in CStateManager.o 
  11] >>> UNREFERENCED DUPLICATE GetX__9CVector3fCFv
  11] >>> (func,weak) found in Kyoto_CWD.a CPoseAsTransformsVariableSize.cpp
  11] >>> (func,weak) found in Kyoto_CWD.a CParticleElectric.cpp
  11] >>> (func,weak) found in Kyoto_CWD.a CAdditiveAnimPlayback.cpp
	... (truncated for brevity)
  ```

decomp-toolkit has a convenience command for querying the map file for information about a given symbol:
```
$ build/tools/dtk map symbol orig/MetaforceCWD.MAP GetX__9CVector3fCFv
 INFO Processing map...
 INFO Done!
Located symbol CVector3f::GetX() const (Function,Weak) @ .text:0x800C22EC [CStateManager.o]

Known referenced from:
>>> CGraphics::SetViewMatrix() (Function, Global) @ .text:0x804D9200 [Kyoto_CWD.a DolphinCGraphics.cpp]

Generated in TUs:
>>> CStateManager.o
>>> Kyoto_CWD.a CPoseAsTransformsVariableSize.cpp
>>> Kyoto_CWD.a CParticleElectric.cpp
>>> Kyoto_CWD.a CAdditiveAnimPlayback.cpp
... (truncated for brevity)
```

Here, we can see that `CVector3f::GetX()` first appears used in `CGraphics::SetViewMatrix()`. It is also used in many other translation units, which are listed under "Generated in TUs", we just don't know exactly where.

decomp-toolkit also provides a convenience command to list all entries that appear for a given translation unit:
```
$ build/tools/dtk map entries orig/MetaforceCWD.MAP 'CollisionCWD.a CMRay.cpp'
Entries for CollisionCWD.a CMRay.cpp:
>>> CBasics::GetFalseValue() # ignore this, it's a debug helper in every TU
>>> CVector3f::GetZ() const
>>> CVector3f::GetY() const
>>> CVector3f::GetX() const
>>> CVector3f::CVector3f(const CVector3f&)
>>> CVector3f::CVector3f(float, float, float)
>>> operator-(const CVector3f&, const CVector3f&)
>>> operator+(const CVector3f&, const CVector3f&)
>>> operator*(const CVector3f&, float)
>>> CMRay::GetInvUnscaledTransformRay(const CTransform4f&) const (Function,Global) @ .text:0x8046DA64 [CollisionCWD.a CMRay.cpp]
>>> CMRay::CMRay(const CVector3f&, const CVector3f&, float, float) (Function,Global) @ .text:0x8046D7B4 [CollisionCWD.a CMRay.cpp]
>>> CMRay::CMRay(const CVector3f&, const CVector3f&, float) (Function,Global) @ .text:0x8046D850 [CollisionCWD.a CMRay.cpp]
```

This tells us that `CMRay.cpp` uses `CVector3f::GetX()` _somewhere_ in the TU (in the map, it shows up as `11] >>> UNREFERENCED DUPLICATE GetX__9CVector3fCFv` -> `11] >>> (func,weak) found in CollisionCWD.a CMRay.cpp`), among other `CVector3f` functions.

In fact, if we pull up the source for `operator+(const CVector3f&, const CVector3f&)`, we can see that it calls `GetX()`, `GetY()`, `GetZ()` and `CVector3f(float, float, float)`:

```cpp
inline CVector3f operator+(const CVector3f& lhs, const CVector3f& rhs) {
  float x = lhs.GetX() + rhs.GetX();
  float y = lhs.GetY() + rhs.GetY();
  float z = lhs.GetZ() + rhs.GetZ();
  return CVector3f(x, y, z);
}
```

and the `CMRay` constructor uses `operator-`, `operator+`, and `operator*`:

```cpp
CMRay::CMRay(const CVector3f& start, const CVector3f& dir, float length)
: mStart(start)
, mEnd(start + length * dir)
, mDelta(mEnd - mStart)
```

so we can conclude that we're using all of the necessary inlined functions here.
