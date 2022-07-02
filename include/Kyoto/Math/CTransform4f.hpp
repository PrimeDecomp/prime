#ifndef __CTRANSFORM4F_HPP__
#define __CTRANSFORM4F_HPP__

#include "types.h"

#include "CVector3f.hpp"

class CTransform4f {
public:
  CVector3f m0;
  f32 posX;
  CVector3f m1;
  f32 posY;
  CVector3f m2;
  f32 posZ;
};

extern CTransform4f skIdentity4f;

#endif // __CTRANSFORM4F_HPP__
