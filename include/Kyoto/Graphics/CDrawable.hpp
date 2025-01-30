#ifndef _CDRAWABLE
#define _CDRAWABLE

#include "types.h"

#include "Kyoto/Math/CAABox.hpp"

// TODO
enum EDrawableType {
  WorldSurface,
  Particle,
  Actor,
  SimpleShadow,
  Decal,
  Invalid = 0xFFFF,
};

class CDrawable {
public:
  CDrawable(EDrawableType dtype, ushort extraSort, float planeDot, const CAABox& aabb, void* data)
  : x0_type(dtype), x2_extraSort(extraSort), x4_data(data), x8_aabb(aabb), x20_viewDist(planeDot) {}
  // CDrawable(const CDrawable& other)
  // : x0_type(other.x0_type)
  // , x2_extraSort(other.x2_extraSort)
  // , x4_data(other.x4_data)
  // , x8_aabb(other.x8_aabb)
  // , x20_viewDist(other.x20_viewDist) {}

  EDrawableType GetType() const { return EDrawableType(x0_type); }
  const CAABox& GetBounds() const { return x8_aabb; }
  float GetDistance() const { return x20_viewDist; }
  void* GetData() { return x4_data; }
  const void* GetData() const { return x4_data; }
  u16 GetExtraSort() const { return x2_extraSort; }

private:
  ushort x0_type;
  ushort x2_extraSort;
  void* x4_data;
  CAABox x8_aabb;
  float x20_viewDist;
};

#endif // _CDRAWABLE
