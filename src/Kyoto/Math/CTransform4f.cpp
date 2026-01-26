#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

const CTransform4f CTransform4f::sIdentity(1.f, 0.f, 0.f, 0.f, //
                                           0.f, 1.f, 0.f, 0.f, //
                                           0.f, 0.f, 1.f, 0.f  //
);

CTransform4f CTransform4f::LookAt(const CVector3f& pos, const CVector3f& lookPos,
                                  const CVector3f& up) {}

CTransform4f CTransform4f::MakeRotationsBasedOnY(const CUnitVector3f& yRot) {}

CTransform4f CTransform4f::RotateX(const CRelAngle& x) {
  const float sinAngle = sin(x.AsRadians());
  const float cosAngle = cos(x.AsRadians());
  return CTransform4f(1.f, 0.f, 0.f, 0.f,            //
                      0.f, cosAngle, -sinAngle, 0.f, //
                      0.f, sinAngle, cosAngle, 0.f   //
  );
}

CTransform4f CTransform4f::RotateY(const CRelAngle& y) {
  const float sinAngle = sin(y.AsRadians());
  const float cosAngle = cos(y.AsRadians());
  return CTransform4f(cosAngle, 0.f, sinAngle, 0.f, //
                      0.f, 1.f, 0.f, 0.f,           //
                      -sinAngle, 0.f, cosAngle, 0.f //
  );
}

CTransform4f CTransform4f::RotateZ(const CRelAngle& z) {
  const float sinAngle = sin(z.AsRadians());
  const float cosAngle = cos(z.AsRadians());
  return CTransform4f(cosAngle, -sinAngle, 0.f, 0.f, //
                      sinAngle, cosAngle, 0.f, 0.f,  //
                      0.f, 0.f, 1.f, 0.f             //
  );
}

void CTransform4f::RotateLocalX(const CRelAngle& x) {
  const float sinAngle = sin(x.AsRadians());
  const float cosAngle = cos(x.AsRadians());
  // clang-format off
  float _m01 = Get01(); _m01 *= sinAngle;
  float _m11 = Get11(); _m11 *= sinAngle;
  float _m21 = Get21(); _m21 *= sinAngle;
  float _m02 = Get02(); _m02 *= sinAngle;
  float _m12 = Get12(); _m12 *= sinAngle;
  float _m22 = Get22(); _m22 *= sinAngle;
  // clang-format on
  m01 *= cosAngle;
  m11 *= cosAngle;
  m21 *= cosAngle;
  m02 *= cosAngle;
  m12 *= cosAngle;
  m22 *= cosAngle;
  m01 += _m02;
  m11 += _m12;
  m21 += _m22;
  m02 -= _m01;
  m12 -= _m11;
  m22 -= _m21;
}

void CTransform4f::RotateLocalY(const CRelAngle& y) {
  const float sinAngle = sin(y.AsRadians());
  const float cosAngle = cos(y.AsRadians());
  // clang-format off
  float _m00 = Get00(); _m00 *= sinAngle;
  float _m10 = Get10(); _m10 *= sinAngle;
  float _m20 = Get20(); _m20 *= sinAngle;
  float _m02 = Get02(); _m02 *= sinAngle;
  float _m12 = Get12(); _m12 *= sinAngle;
  float _m22 = Get22(); _m22 *= sinAngle;
  // clang-format on

  m00 *= cosAngle;
  m10 *= cosAngle;
  m20 *= cosAngle;
  m02 *= cosAngle;
  m12 *= cosAngle;
  m22 *= cosAngle;
  m00 -= _m02;
  m10 -= _m12;
  m20 -= _m22;
  m02 += _m00;
  m12 += _m10;
  m22 += _m20;
}

void CTransform4f::RotateLocalZ(const CRelAngle& z) {
  const float sinAngle = sin(z.AsRadians());
  const float cosAngle = cos(z.AsRadians());
  // clang-format off
  float _m00 = Get00(); _m00 *= sinAngle;
  float _m10 = Get10(); _m10 *= sinAngle;
  float _m20 = Get20(); _m20 *= sinAngle;
  float _m01 = Get01(); _m01 *= sinAngle;
  float _m11 = Get11(); _m11 *= sinAngle;
  float _m21 = Get21(); _m21 *= sinAngle;
  // clang-format off

  m00 *= cosAngle;
  m10 *= cosAngle;
  m20 *= cosAngle;
  m01 *= cosAngle;
  m11 *= cosAngle;
  m21 *= cosAngle;
  m00 += _m01;
  m10 += _m11;
  m20 += _m21;
  m01 -= _m00;
  m11 -= _m10;
  m21 -= _m20;
}

void CTransform4f::Orthonormalize() {
  const CVector3f t = CVector3f(Get00(), Get10(), Get20()); 
  const CVector3f tmp = t.AsNormalized();
  const CVector3f tmp2 = GetColumn(kDY);
  const CVector3f tmp3 = CVector3f::Cross(tmp, tmp2);
  const CVector3f local_78 = tmp3.AsNormalized();
  m00 = tmp.GetX();
  m10 = tmp.GetY();
  m20 = tmp.GetZ();
  m01 = local_78.GetY() * tmp.GetZ() - tmp.GetY() * tmp.GetZ();
  m11 = local_78.GetZ() * tmp.GetX() - tmp.GetZ() * tmp.GetX();
  m21 = local_78.GetX() * tmp.GetY() - tmp.GetX() * tmp.GetY();
  m02 = local_78.GetX();
  m12 = local_78.GetY();
  m22 = local_78.GetZ();
}

CTransform4f::CTransform4f(CInputStream& in)
: m00(in.ReadFloat())
, m01(in.ReadFloat())
, m02(in.ReadFloat())
, m03(in.ReadFloat())
, m10(in.ReadFloat())
, m11(in.ReadFloat())
, m12(in.ReadFloat())
, m13(in.ReadFloat())
, m20(in.ReadFloat())
, m21(in.ReadFloat())
, m22(in.ReadFloat())
, m23(in.ReadFloat()) {}

CTransform4f::CTransform4f(const CMatrix3f& basis, const CVector3f& position)
: m00(basis.Get00())
, m01(basis.Get01())
, m02(basis.Get02())
, m03(position.GetX())
, m10(basis.Get10())
, m11(basis.Get11())
, m12(basis.Get12())
, m13(position.GetY())
, m20(basis.Get20())
, m21(basis.Get21())
, m22(basis.Get22())
, m23(position.GetZ()) {}

CTransform4f CTransform4f::Scale(float scale) {

  return CTransform4f(scale, 0.f, 0.f, 0.f, //
                      0.f, scale, 0.f, 0.f, //
                      0.f, 0.f, scale, 0.f  //
  );
}

CTransform4f CTransform4f::Scale(float x, float y, float z) {
  return CTransform4f(x, 0.f, 0.f, 0.f, //
                      0.f, y, 0.f, 0.f, //
                      0.f, 0.f, z, 0.f  //
  );
}

CTransform4f CTransform4f::Scale(const CVector3f& scale) {
  return CTransform4f(scale.GetX(), 0.f, 0.f, 0.f, //
                      0.f, scale.GetY(), 0.f, 0.f, //
                      0.f, 0.f, scale.GetZ(), 0.f  //
  );
}

CTransform4f CTransform4f::Translate(float x, float y, float z) {
  return CTransform4f(1.f, 0.f, 0.f, x, //
                      0.f, 1.f, 0.f, y, //
                      0.f, 0.f, 1.f, z  //
  );
}

CTransform4f CTransform4f::Translate(const CVector3f& pos) {
  return CTransform4f(1.f, 0.f, 0.f, pos.GetX(), //
                      0.f, 1.f, 0.f, pos.GetY(), //
                      0.f, 0.f, 1.f, pos.GetZ()  //
  );
}

CMatrix3f CTransform4f::BuildMatrix3f() const {
  return CMatrix3f(m00, m01, m02, m10, m11, m12, m20, m21, m22);
}

CTransform4f CTransform4f::MultiplyIgnoreTranslation(const CTransform4f& other) const {
  return CTransform4f(Get00() * other.Get00() + Get01() * other.Get10() + Get02() * other.Get20(),
                      Get00() * other.Get01() + Get01() * other.Get11() + Get02() * other.Get21(),
                      Get00() * other.Get02() + Get01() * other.Get12() + Get02() * other.Get22(),
                      Get03() + other.Get03(),
                      Get10() * other.Get00() + Get11() * other.Get10() + Get12() * other.Get20(),
                      Get10() * other.Get01() + Get11() * other.Get11() + Get12() * other.Get21(),
                      Get10() * other.Get02() + Get11() * other.Get12() + Get12() * other.Get22(),
                      Get13() + other.Get13(),
                      Get20() * other.Get00() + Get21() * other.Get10() + Get22() * other.Get20(),
                      Get20() * other.Get01() + Get21() * other.Get11() + Get22() * other.Get21(),
                      Get20() * other.Get02() + Get21() * other.Get12() + Get22() * other.Get22(),
                      Get23() + other.Get23());
}

void CTransform4f::ScaleBy(float scale) {
  m00 *= scale;
  m01 *= scale;
  m02 *= scale;
  m10 *= scale;
  m11 *= scale;
  m12 *= scale;
  m20 *= scale;
  m21 *= scale;
  m22 *= scale;
}

CTransform4f::CTransform4f(const CVector3f& m0, const CVector3f& m1, const CVector3f& m2,
                           const CVector3f& pos) {
  const float _m23 = pos.GetZ();
  const float _m22 = m2.GetZ();
  const float _m12 = m1.GetZ();
  const float _m02 = m0.GetZ();

  const float _m13 = pos.GetY();
  const float _m21 = m2.GetY();
  const float _m11 = m1.GetY();
  const float _m01 = m0.GetY();

  const float _m03 = pos.GetX();
  const float _m20 = m2.GetX();
  const float _m10 = m1.GetX();
  const float _m00 = m0.GetX();

  m00 = _m00;
  m01 = _m10;
  m02 = _m20;
  m03 = _m03;
  m10 = _m01;
  m11 = _m11;
  m12 = _m21;
  m13 = _m13;
  m20 = _m02;
  m21 = _m12;
  m22 = _m22;
  m23 = _m23;
}

CTransform4f CTransform4f::FromColumns(const CVector3f& m0, const CVector3f& m1,
                                       const CVector3f& m2, const CVector3f& pos) {
  return CTransform4f(m0.GetX(), m0.GetY(), m0.GetZ(), pos.GetX(), //
                      m1.GetX(), m1.GetY(), m1.GetZ(), pos.GetY(), //
                      m2.GetX(), m2.GetY(), m2.GetZ(), pos.GetZ()  //
  );
}

bool operator==(const CTransform4f& lhs, const CTransform4f& rhs) {
  return lhs.Get00() == rhs.Get00() && lhs.Get01() == rhs.Get01() && lhs.Get02() == rhs.Get02() &&
         lhs.Get03() == rhs.Get03() && // x
         lhs.Get10() == rhs.Get10() && lhs.Get11() == rhs.Get11() && lhs.Get12() == rhs.Get12() &&
         lhs.Get13() == rhs.Get13() && // y
         lhs.Get20() == rhs.Get20() && lhs.Get21() == rhs.Get21() && lhs.Get22() == rhs.Get22() &&
         lhs.Get23() == rhs.Get23(); // z
}

CTransform4f CTransform4f::GetQuickInverse() const{  
  const float _m03 = -(Get20() * Get23() - (Get00() * -Get03() - Get10() * Get13()));
  const float _m13 = -(Get21() * Get23() - (Get01() * -Get03() - Get11() * Get13()));
  const float _m23 = -(Get22() * Get23() - (Get02() * -Get03() - Get12() * Get13()));
  
  return CTransform4f(Get00(), Get10(), Get20(), _m03, Get01(), Get11(), Get21(), _m13, Get02(), Get12(), Get22(), _m23);
}

CTransform4f CTransform4f::GetRotation() const{
  return CTransform4f(m00, m01, m02, 0.f, // 
    m10, m11, m12, 0.f,//
    m20, m21, m22, 0.f);
}

void CTransform4f::SetRotation(const CMatrix3f& rotation) {
  m00 = rotation.Get00();
  m01 = rotation.Get01();
  m02 = rotation.Get02();
  m10 = rotation.Get10();
  m11 = rotation.Get11();
  m12 = rotation.Get12();
  m20 = rotation.Get20();
  m21 = rotation.Get21();
  m22 = rotation.Get22();
}

void CTransform4f::SetRotation(const CTransform4f& rotation){
  m00 = rotation.Get00();
  m01 = rotation.Get01();
  m02 = rotation.Get02();
  m10 = rotation.Get10();
  m11 = rotation.Get11();
  m12 = rotation.Get12();
  m20 = rotation.Get20();
  m21 = rotation.Get21();
  m22 = rotation.Get22();
}

 CTransform4f::CTransform4f(register const CTransform4f& other){
#ifdef __MWERKS__
  // Hack to get around compiler error.
  register CTransform4f* thiz = this;
  __asm__ {
    lfd f0, CTransform4f.m00(other);
    lfd f1, CTransform4f.m02(other);
    lfd f2, CTransform4f.m10(other);
    stfd f0, CTransform4f.m00(thiz);
    stfd f1, CTransform4f.m02(thiz);
    stfd f2, CTransform4f.m10(thiz);
    lfd f0, CTransform4f.m12(other);
    lfd f1, CTransform4f.m20(other);
    lfd f2, CTransform4f.m22(other);
    stfd f0, CTransform4f.m12(thiz);
    stfd f1, CTransform4f.m20(thiz);
    stfd f2, CTransform4f.m22(thiz);
  }
#endif
}

CTransform4f& CTransform4f::operator=(register const CTransform4f& other) {
#ifdef __MWERKS__
  register CTransform4f& thiz = *this;
  __asm__ volatile {
    lfd f0, CTransform4f.m00(other);
    lfd f1, CTransform4f.m02(other);
    lfd f2, CTransform4f.m10(other);
    stfd f0, CTransform4f.m00(thiz);
    stfd f1, CTransform4f.m02(thiz);
    stfd f2, CTransform4f.m10(thiz);
    lfd f0, CTransform4f.m12(other);
    lfd f1, CTransform4f.m20(other);
    lfd f2, CTransform4f.m22(other);
    stfd f0, CTransform4f.m12(thiz);
    stfd f1, CTransform4f.m20(thiz);
    stfd f2, CTransform4f.m22(thiz);
  }
#endif
  
  return *this;
}

CVector3f CTransform4f::operator*(register const CVector3f& vec) const {
#if __MWERKS__
  // Assume RVO for return value
  register const CVector3f* ret;
  // Hack to get around compiler error.
  register const CTransform4f* thiz = this;
  
  __asm__ {

    psq_l  f2, CVector3f.mX(vec), 0, 0;
    psq_l  f3, CVector3f.mZ(vec), 1, 0;
    
    psq_l  f4, CTransform4f.m00(thiz), 0, 0;
    psq_l  f5, CTransform4f.m02(thiz), 0, 0;
    
    ps_mul f0, f4, f2;
    
    psq_l  f4, CTransform4f.m10(thiz), 0, 0;
    
    ps_madd f0, f5, f3, f0;
    ps_mul f1, f4, f2;
    
    psq_l f5, CTransform4f.m12(thiz), 0, 0;
    psq_l f4, CTransform4f.m20(thiz), 0, 0;

    ps_mul f2, f4, f2;
    
    
    ps_madd f1, f5, f3, f1;
    
    psq_l f5, CTransform4f.m22(thiz), 0, 0;
    
    ps_madd f2, f5, f3, f2;
    
    lfs f6, 1.f; 
    ps_madds1 f0, f6, f0, f0;
    ps_madds1 f1, f6, f1, f1;    
    ps_madds1 f2, f6, f2, f2;
    
    stfs f0, CVector3f.mX(ret);
    stfs f1, CVector3f.mY(ret);
    stfs f2, CVector3f.mZ(ret);
  }
  return *ret;
#endif  
}

CVector3f CTransform4f::Rotate(register const CVector3f& vec) const{
#if __MWERKS__
  // Assume RVO for return value
  register const CVector3f* ret;
  // Hack to get around compiler error.
  register const CTransform4f* thiz = this;
  
  __asm__ {
    lfs f7, 0.f;
    lfs f6, 1.f;

    psq_l f5, CTransform4f.m02(thiz), 1, 0;
    psq_l f2, CVector3f.mX(vec), 0, 0;
    psq_l f4, CTransform4f.m00(thiz), 0, 0;
    
    ps_merge00 f5, f5, f7;
    
    psq_l f3, CVector3f.mZ(vec), 1, 0;
    
    ps_mul f0, f4, f2;
    
    psq_l f4, CTransform4f.m10(thiz), 0, 0;
    
    
    ps_mul f1, f4, f2;
    
    psq_l f4, CTransform4f.m20(thiz), 0, 0;
    
    ps_madd f0, f5, f3, f0;
    
    psq_l f5, CTransform4f.m12(thiz), 1, 0;
    
    ps_mul f2, f4, f2;
    
    ps_merge00 f5, f5, f7;
    
    ps_madds1 f0, f6, f0, f0;
    ps_madd f1, f5, f3, f1;
    
    psq_l f5, CTransform4f.m22(thiz), 1, 0;
    
    ps_merge00 f5, f5, f7;
    
    
    ps_madds1 f1, f6, f1, f1;
    ps_madd f2, f5, f3, f2;
    ps_madds1 f2, f6, f2, f2;

    stfs f0, CVector3f.mX(ret);
    stfs f1, CVector3f.mY(ret); 
    stfs f2, CVector3f.mZ(ret);
  }
  return *ret;
#endif  
}

CVector3f CTransform4f::TransposeRotate(register const CVector3f& in) const{
#if __MWERKS__
  // Assume RVO for return value
  register const CVector3f* ret;
  // Hack to get around compiler error.
  register const CTransform4f* thiz = this;
  
  __asm__ volatile {
    lfs f0, CVector3f.mX(in);
    lfs f1, CVector3f.mY(in);
    
    ps_merge00 f3, f0, f0;
    
    psq_l f4, CTransform4f.m00(thiz), 0, 0;
    
    lfs f2, CVector3f.mZ(in);
    
    ps_merge00 f1, f1, f1;
    
    lfs f0, CTransform4f.m12(thiz);
    
    ps_mul f5, f4, f3;
    
    psq_l f6, CTransform4f.m10(thiz), 0, 0;
    
    ps_merge00 f4, f2, f2;
    
    psq_l f7, CTransform4f.m20(thiz), 0, 0;
    
    fmuls f0, f0, f1;
    
    ps_madd f5, f6, f1, f5;
    
    lfs f1, CTransform4f.m02(thiz);
    lfs f2, CTransform4f.m22(thiz);
    
    ps_madd f5, f7, f4, f5;
    fmadds f0, f1, f3, f0;
    
    ps_merge11 f1, f5, f5;
    
    stfs f5, CVector3f.mX(ret);
    fmadds f0, f2, f4, f0;
    stfs f1, CVector3f.mY(ret);
    stfs f0, CVector3f.mZ(ret);
  }
  return *ret;
#endif  
}