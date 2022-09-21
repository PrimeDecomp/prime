#ifndef __CAABOX_HPP__
#define __CAABOX_HPP__

#include "Kyoto/Math/CVector3f.hpp"

class CAABox {
public:
  // CAABox() {
  //   // TODO
  // }
  CAABox(const CVector3f& min, const CVector3f& max); // : min(min), max(max) {}
  // CAABox(const CAABox& other)
  // : minX(other.minX)
  // , minY(other.minY)
  // , minZ(other.minZ)
  // , maxX(other.maxX)
  // , maxY(other.maxY)
  // , maxZ(other.maxZ) {}

  CAABox& operator=(const CAABox&);

  CVector3f ClosestPointAlongVector(const CVector3f& vec) const;

  static const CAABox& Identity() { return mskNullBox; }
  static const CAABox& MakeMaxInvertedBox() { return mskInvertedBox; }

private:
  f32 minX, minY, minZ;
  f32 maxX, maxY, maxZ;

  static CAABox mskInvertedBox;
  static CAABox mskNullBox;
};
CHECK_SIZEOF(CAABox, 0x18)

#endif // __CAABOX_HPP__
