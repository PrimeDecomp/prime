#ifndef _CINTERNALRAYCASTSTRUCTURE
#define _CINTERNALRAYCASTSTRUCTURE

#include "Collision/CMRay.hpp"

#include "Kyoto/Math/CTransform4f.hpp"

class CMaterialFilter;
class CInternalRayCastStructure {
public:
  CInternalRayCastStructure(const CVector3f& start, const CVector3f& dir, float length,
                            const CTransform4f& xf, const CMaterialFilter& filter)
  : x0_ray(start, dir, length), x38_maxTime(length), x3c_xf(xf), x6c_filter(filter) {}

  const CMRay& GetRay() const { return x0_ray; }
  const CVector3f& GetStart() const { return x0_ray.GetStart(); }
  const CVector3f& GetNormal() const { return x0_ray.GetNormal(); }
  float GetMaxTime() const { return x38_maxTime; }
  const CTransform4f& GetTransform() const { return x3c_xf; }
  const CMaterialFilter& GetFilter() const { return x6c_filter; }

private:
  CMRay x0_ray;
  float x38_maxTime;
  CTransform4f x3c_xf;
  const CMaterialFilter& x6c_filter;
};

#endif // _CINTERNALRAYCASTSTRUCTURE
