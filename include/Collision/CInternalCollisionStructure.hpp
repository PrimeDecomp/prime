#ifndef _CINTERNALCOLLISIONSTRUCTURE
#define _CINTERNALCOLLISIONSTRUCTURE

#include "Kyoto/Math/CTransform4f.hpp"

class CMaterialFilter;
class CCollisionPrimitive;
class CInternalCollisionStructure {
public:
  class CPrimDesc {
  public:
    CPrimDesc(const CCollisionPrimitive& prim, const CMaterialFilter& filter,
              const CTransform4f& xf)
    : x0_prim(prim), x4_filter(filter), x8_xf(xf) {}

    const CCollisionPrimitive& GetPrim() const { return x0_prim; }
    const CMaterialFilter& GetFilter() const { return x4_filter; }
    const CTransform4f& GetTransform() const { return x8_xf; }

  private:
    const CCollisionPrimitive& x0_prim;
    const CMaterialFilter& x4_filter;
    CTransform4f x8_xf;
  };

  CInternalCollisionStructure(const CPrimDesc& left, const CPrimDesc& right)
  : x0_left(left), x38_right(right) {}

  const CPrimDesc& GetLeft() const { return x0_left; }
  const CPrimDesc& GetRight() const { return x38_right; }
  CInternalCollisionStructure
  GetSwapped() const; // TODO: Find where this is used and investigate proper behavior
private:
  CPrimDesc x0_left;
  CPrimDesc x38_right;
};

#endif // _CINTERNALCOLLISIONSTRUCTURE
