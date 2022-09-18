#ifndef __CAABOX_HPP__
#define __CAABOX_HPP__

#include "Kyoto/Math/CVector3f.hpp"

class CAABox {
public:
  CAABox() {
    // TODO
  }
  CAABox(const CVector3f& min, const CVector3f& max); // : min(min), max(max) {}
  CAABox(const CAABox& other) : min(other.min), max(other.max) {}

  CVector3f ClosestPointAlongVector(const CVector3f& vec) const;

  static CAABox mskInvertedBox;
  static CAABox mskNullBox;

private:
  CVector3f min;
  CVector3f max;
};
CHECK_SIZEOF(CAABox, 0x18)

#endif // __CAABOX_HPP__
