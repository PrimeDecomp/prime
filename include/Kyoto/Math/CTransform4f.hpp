#ifndef __CTRANSFORM4F_HPP__
#define __CTRANSFORM4F_HPP__

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

typedef const f32 (*ConstMtxPtr)[4];

class CInputStream;
class CMatrix3f;
class CRelAngle;

class CTransform4f {
public:
  // CTransform4f() {
  //   // TODO
  // }
  CTransform4f(const CVector3f& m0, const CVector3f& m1, const CVector3f& m2, const CVector3f& pos)
  : m0(m0), posX(pos.GetX()), m1(m1), posY(pos.GetY()), m2(m2), posZ(pos.GetZ()) {}
  CTransform4f(f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32);
  CTransform4f(CInputStream& in);
  CTransform4f(const CMatrix3f& rotation, const CVector3f& translation);
  CTransform4f(const CTransform4f& other);
  CTransform4f& operator=(const CTransform4f& other);

  CVector3f GetTranslation() const { return CVector3f(posX, posY, posZ); }
  CVector3f GetRight() const { return CVector3f(m0.GetX(), m1.GetX(), m2.GetX()); }
  CVector3f GetForward() const { return CVector3f(m0.GetY(), m1.GetY(), m2.GetY()); }
  CVector3f GetUp() const { return CVector3f(m0.GetZ(), m1.GetZ(), m2.GetZ()); }
  ConstMtxPtr GetCStyleMatrix() const { return reinterpret_cast< ConstMtxPtr >(this); }

  CMatrix3f BuildMatrix3f() const;
  f32 Get00() const { return m0.GetX(); }
  f32 Get01() const { return m0.GetY(); }
  f32 Get02() const { return m0.GetZ(); }
  f32 Get03() const { return posX; }
  f32 Get10() const { return m1.GetX(); }
  f32 Get11() const { return m1.GetY(); }
  f32 Get12() const { return m1.GetZ(); }
  f32 Get13() const { return posY; }
  f32 Get20() const { return m2.GetX(); }
  f32 Get21() const { return m2.GetY(); }
  f32 Get22() const { return m2.GetZ(); }
  f32 Get23() const { return posZ; }
  CVector3f GetColumn(EDimX dim) const { return CVector3f(m0[dim], m1[dim], m2[dim]); }
  CVector3f GetColumn(EDimY dim) const { return CVector3f(m0[dim], m1[dim], m2[dim]); }
  CVector3f GetColumn(EDimZ dim) const { return CVector3f(m0[dim], m1[dim], m2[dim]); }
  // GetColumn__12CTransform4fCFi
  // GetCStyleMatrix__12CTransform4fCFv
  CTransform4f GetInverse() const;
  CTransform4f GetQuickInverse() const;
  CTransform4f GetRotation() const;
  inline const CVector3f& GetRow(EDimX dim) const { return m0; }
  inline const CVector3f& GetRow(EDimY dim) const { return m1; }
  inline const CVector3f& GetRow(EDimZ dim) const { return m2; }
  inline const CVector3f& GetRow(int i) const { return *(&m0 + i); }
  // GetUp__12CTransform4fCFv
  static CTransform4f LookAt(const CVector3f& pos, const CVector3f& lookPos,
                             const CVector3f& up = CVector3f::Up());
  // MakeRotationsBasedOnY__12CTransform4fFRC13CUnitVector3f
  CTransform4f MultiplyIgnoreTranslation(const CTransform4f& other) const;
  // Orthonormalize__12CTransform4fFv
  CVector3f Rotate(const CVector3f& in) const;
  void RotateLocalX(const CRelAngle& angle);
  void RotateLocalY(const CRelAngle& angle);
  void RotateLocalZ(const CRelAngle& angle);
  // RotateX__12CTransform4fFRC9CRelAngle
  // RotateY__12CTransform4fFRC9CRelAngle
  // RotateZ__12CTransform4fFRC9CRelAngle
  // Scale__12CTransform4fFf
  // Scale__12CTransform4fFfff
  static CTransform4f Scale(const CVector3f&);
  // ScaleBy__12CTransform4fFf
  // SetRotation__12CTransform4fFRC12CTransform4f
  // SetRotation__12CTransform4fFRC9CMatrix3f
  // TransposeMultiply__12CTransform4fCFRC9CVector3f
  CVector3f TransposeRotate(const CVector3f& in) const;

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
  CTransform4f operator*(const CTransform4f& vec) const;
  CVector3f operator*(const CVector3f& vec) const;

  static CTransform4f FromColumns(const CVector3f&, const CVector3f&, const CVector3f&,
                                  const CVector3f&);
  static CTransform4f Translate(f32 x, f32 y, f32 z);
  static CTransform4f Translate(const CVector3f& vec);

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
