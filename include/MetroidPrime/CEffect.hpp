#ifndef _CEFFECT
#define _CEFFECT

#include "types.h"

#include "MetroidPrime/CActor.hpp"

class CEffect : public CActor {
public:
  CEffect(TUniqueId uid, const CEntityInfo& info, bool, const rstl::string& name,
          const CTransform4f& xf);

  // CEntity
  ~CEffect() {}

  // CActor
  virtual void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  virtual void Render(const CStateManager&) const;
};
CHECK_SIZEOF(CEffect, 0xe8)

#endif // _CEFFECT
