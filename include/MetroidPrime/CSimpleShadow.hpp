#ifndef _CSIMPLESHADOW
#define _CSIMPLESHADOW

#include "types.h"

class CAABox;
class CStateManager;
class CTransform4f;

class CSimpleShadow {
public:
  CAABox GetBounds() const;
  const CTransform4f& GetTransform() const;
  CAABox GetMaxShadowBox(const CAABox& bounds) const;
  void Calculate(const CAABox& bounds, const CTransform4f& xf, const CStateManager& mgr);
  bool Valid() const;

private:
  // TODO
};

#endif // _CSIMPLESHADOW
