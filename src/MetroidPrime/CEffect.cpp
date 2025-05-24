#include "MetroidPrime/CEffect.hpp"

#include "MetroidPrime/CActorParameters.hpp"

CEffect::CEffect(TUniqueId uid, const CEntityInfo& info, const bool active,
                 const rstl::string& name, const CTransform4f& xf)
: CActor(uid, active, name, info, xf, CModelData::CModelDataNull(), CMaterialList(kMT_NoStepLogic),
         CActorParameters::None(), kInvalidUniqueId) {}

void CEffect::Render(const CStateManager&) const {}

void CEffect::AddToRenderer(const CFrustumPlanes&, const CStateManager&) const {}
