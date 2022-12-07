#ifndef _CMATRIX3F
#define _CMATRIX3F

#include "types.h"

#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CMatrix3f {
  static const CMatrix3f sIdentity;

public:
  CMatrix3f(const CMatrix3f&);
  CMatrix3f(const CVector3f& m0, const CVector3f& m1, const CVector3f& m2);
  // fake but useful for CEulerAngles?
  CMatrix3f(const CTransform4f& xf);/*
  : m0(xf.GetRow(kDX))
  , m1(xf.GetRow(kDY))
  , m2(xf.GetRow(kDZ)) {}*/

  const CMatrix3f& operator=(const CMatrix3f& other);

  static const CMatrix3f& Identity() { return sIdentity; }

  CMatrix3f Orthonormalized() const;

  // TODO: names/check
  inline const CVector3f& GetRow(EDimX dim) const { return m0; }
  inline const CVector3f& GetRow(EDimY dim) const { return m1; }
  inline const CVector3f& GetRow(EDimZ dim) const { return m2; }

  float Get00() const { return m0.GetX(); }
  float Get01() const { return m0.GetY(); }
  float Get02() const { return m0.GetZ(); }
  float Get10() const { return m1.GetX(); }
  float Get11() const { return m1.GetY(); }
  float Get12() const { return m1.GetZ(); }
  float Get20() const { return m2.GetX(); }
  float Get21() const { return m2.GetY(); }
  float Get22() const { return m2.GetZ(); }

  inline CVector3f GetColumn(EDimY dim) const { return CVector3f(m0.GetY(), m1.GetY(), m2.GetY()); }

  static CMatrix3f FromTransform(const CTransform4f& xf);/* {
    return CMatrix3f(xf.GetRow(kDX), xf.GetRow(kDY), xf.GetRow(kDZ));
  }*/

private:
  // TODO maybe individual floats
  CVector3f m0;
  CVector3f m1;
  CVector3f m2;
};
CHECK_SIZEOF(CMatrix3f, 0x24);

#endif // _CMATRIX3F
