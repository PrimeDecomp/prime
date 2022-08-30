#ifndef __CTRANSFORM4F_HPP__
#define __CTRANSFORM4F_HPP__

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CInputStream;
class CMatrix3f;

class CTransform4f {
public:
  CTransform4f() {
    // TODO
  }
  CTransform4f(f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32);
  CTransform4f(const CInputStream& in);
  CTransform4f(const CMatrix3f& rotation, const CVector3f& translation);
  CTransform4f(const CTransform4f& other);
  CTransform4f& operator=(const CTransform4f& other);

  CVector3f GetTranslation() const { return CVector3f(posX, posY, posZ); }
  CVector3f GetRight() const { return CVector3f(m0.GetX(), m1.GetX(), m2.GetX()); }
  CVector3f GetForward() const { return CVector3f(m0.GetY(), m1.GetY(), m2.GetY()); }
  CVector3f GetUp() const { return CVector3f(m0.GetZ(), m1.GetZ(), m2.GetZ()); }

  CMatrix3f BuildMatrix3f() const;
  // Get00__12CTransform4fCFv
  // Get01__12CTransform4fCFv
  // Get02__12CTransform4fCFv
  // Get03__12CTransform4fCFv
  // Get10__12CTransform4fCFv
  // Get11__12CTransform4fCFv
  // Get12__12CTransform4fCFv
  // Get13__12CTransform4fCFv
  // Get20__12CTransform4fCFv
  // Get21__12CTransform4fCFv
  // Get22__12CTransform4fCFv
  // Get23__12CTransform4fCFv
  // GetColumn__12CTransform4fCF5EDimX
  // GetColumn__12CTransform4fCF5EDimY
  // GetColumn__12CTransform4fCF5EDimZ
  // GetColumn__12CTransform4fCFi
  // GetCStyleMatrix__12CTransform4fCFv
  // GetInverse__12CTransform4fCFv
  // GetQuickInverse__12CTransform4fCFv
  // GetRotation__12CTransform4fCFv
  // GetRow__12CTransform4fCF5EDimX
  // GetRow__12CTransform4fCF5EDimY
  // GetRow__12CTransform4fCF5EDimZ
  // GetRow__12CTransform4fCFi
  // GetUp__12CTransform4fCFv
  // LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
  // MakeRotationsBasedOnY__12CTransform4fFRC13CUnitVector3f
  // MultiplyIgnoreTranslation__12CTransform4fCFRC12CTransform4f
  // Orthonormalize__12CTransform4fFv
  // Rotate__12CTransform4fCFRC9CVector3f
  // RotateLocalX__12CTransform4fFRC9CRelAngle
  // RotateLocalY__12CTransform4fFRC9CRelAngle
  // RotateLocalZ__12CTransform4fFRC9CRelAngle
  // RotateX__12CTransform4fFRC9CRelAngle
  // RotateY__12CTransform4fFRC9CRelAngle
  // RotateZ__12CTransform4fFRC9CRelAngle
  // Scale__12CTransform4fFf
  // Scale__12CTransform4fFfff
  // Scale__12CTransform4fFRC9CVector3f
  // ScaleBy__12CTransform4fFf
  // SetRotation__12CTransform4fFRC12CTransform4f
  // SetRotation__12CTransform4fFRC9CMatrix3f
  // Translate__12CTransform4fFfff
  // Translate__12CTransform4fFRC9CVector3f
  // TransposeMultiply__12CTransform4fCFRC9CVector3f
  // TransposeRotate__12CTransform4fCFRC9CVector3f

  void SetTranslation(const CVector3f& vec) {
    posX = vec.GetX();
    posY = vec.GetY();
    posZ = vec.GetZ();
  }
  void AddTranslation(const CVector3f& vec) {
    posX += vec.GetX();
    posY += vec.GetY();
    posZ += vec.GetZ();
  }
  void AddTranslationZ(f32 z) { posZ += z; }

  CTransform4f& operator*=(const CTransform4f& other);
  CTransform4f& operator*(const CTransform4f& vec);
  CTransform4f& operator*(const CVector3f& vec);

  static CTransform4f FromColumns(const CVector3f&, const CVector3f&, const CVector3f&, const CVector3f&);
  static const CTransform4f& Identity() { return sIdentity; }

private:
  CVector3f m0;
  f32 posX;
  CVector3f m1;
  f32 posY;
  CVector3f m2;
  f32 posZ;

  static CTransform4f sIdentity;
};

inline bool operator==(const CTransform4f& lhs, const CTransform4f& rhs);

CHECK_SIZEOF(CTransform4f, 0x30)

#endif // __CTRANSFORM4F_HPP__
