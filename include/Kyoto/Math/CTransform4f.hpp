#ifndef __CTRANSFORM4F_HPP__
#define __CTRANSFORM4F_HPP__

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CTransform4f {
public:
  CVector3f m0;
  f32 posX;
  CVector3f m1;
  f32 posY;
  CVector3f m2;
  f32 posZ;

  CTransform4f() {
    // TODO
  }
  CTransform4f(const CTransform4f& other);
};

extern CTransform4f skIdentity4f;

CHECK_SIZEOF(CTransform4f, 0x30)

#endif // __CTRANSFORM4F_HPP__
