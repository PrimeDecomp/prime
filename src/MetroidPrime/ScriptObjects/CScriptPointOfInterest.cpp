#include "MetroidPrime/ScriptObjects/CScriptPointOfInterest.hpp"

#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

#include "Kyoto/Math/CAABox.hpp"

CScriptPointOfInterest::CScriptPointOfInterest(TUniqueId uid, const rstl::string& name,
                                               const CEntityInfo& info, const CTransform4f& xf,
                                               bool active, const CScannableParameters& parms,
                                               float f1)
: CActor(uid, active, name, info, xf, CModelData::CModelDataNull(), CMaterialList(kMT_Orbit),
         CActorParameters::None().Scannable(parms), kInvalidUniqueId)
, xe8_pointSize(f1) {}

CScriptPointOfInterest::~CScriptPointOfInterest() {}

void CScriptPointOfInterest::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid,
                                             CStateManager& mgr) {
  CActor::AcceptScriptMsg(msg, uid, mgr);
}

rstl::optional_object< CAABox > CScriptPointOfInterest::GetTouchBounds() const {
  return CAABox(x34_transform.GetTranslation(), x34_transform.GetTranslation());
}

void CScriptPointOfInterest::Render(const CStateManager&) const {}

void CScriptPointOfInterest::AddToRenderer(const CFrustumPlanes&, const CStateManager&) const {}

void CScriptPointOfInterest::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CScriptPointOfInterest::Think(float dt, CStateManager& mgr) {
  xe7_31_targetable = mgr.GetPlayerState()->GetCurrentVisor() == CPlayerState::kPV_Scan;
  CEntity::Think(dt, mgr);
}

void CScriptPointOfInterest::CalculateRenderBounds() {
  if (xe8_pointSize == 0.f) {
    CActor::CalculateRenderBounds();
  } else {
    CVector3f origin = x34_transform.GetTranslation();
    x9c_renderBounds = CAABox(
        origin - CVector3f(xe8_pointSize, xe8_pointSize, xe8_pointSize),
        origin + CVector3f(xe8_pointSize, xe8_pointSize, xe8_pointSize));
  }
}
