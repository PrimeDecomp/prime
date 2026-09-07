#ifndef _CADVANCEMENTDELTAS_HPP
#define _CADVANCEMENTDELTAS_HPP

#include "Kyoto/Math/CQuaternion.hpp"
struct CAdvancementDeltas {
public:
  CAdvancementDeltas() : x0_posDelta(CVector3f::Zero()), xc_rotDelta(CQuaternion::NoRotation()) {}
  CAdvancementDeltas(const CVector3f& posDelta, const CQuaternion& rotDelta)
  : x0_posDelta(posDelta), xc_rotDelta(rotDelta) {}

  const CVector3f& GetOffsetDelta() const { return x0_posDelta; }
  const CQuaternion& GetOrientationDelta() const { return xc_rotDelta; }

  static CAdvancementDeltas Interpolate(const CAdvancementDeltas& a, const CAdvancementDeltas& b,
                                        const float c, const float d);
  static CAdvancementDeltas Blend(const CAdvancementDeltas& a, const CAdvancementDeltas& b,
                                  const float t);

  CVector3f x0_posDelta;
  CQuaternion xc_rotDelta;
};
CHECK_SIZEOF(CAdvancementDeltas, 0x1c)

#endif // _CADVANCEMENTDELTAS_HPP
