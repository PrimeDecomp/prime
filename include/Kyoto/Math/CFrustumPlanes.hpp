#ifndef _CFRUSTUMPLANES
#define _CFRUSTUMPLANES

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Math/CPlane.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/reserved_vector.hpp"

class CAABox;
class CSphere;
class CTransform4f;

class CFrustumPlanes {
public:
  CFrustumPlanes() {}
  CFrustumPlanes(const CTransform4f&, float, float, float, bool, float);

  bool BoxInFrustumPlanes(const CAABox& box) const;
  bool BoxInFrustumPlanes(const rstl::optional_object< CAABox >& box) const;
  int BoxFrustumPlanesCheck(const CAABox& box) const;
  bool SphereInFrustumPlanes(const CSphere& sphere) const;
  bool PointInFrustumPlanes(const CVector3f& point) const;

private:
  rstl::reserved_vector< CPlane, 6 > x0_planes;
};

#endif // _CFRUSTUMPLANES
