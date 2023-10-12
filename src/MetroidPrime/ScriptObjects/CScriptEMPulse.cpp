#include "MetroidPrime/ScriptObjects/CScriptEMPulse.hpp"

#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

#include "MetaRender/CCubeRenderer.hpp"

#include "Kyoto/Particles/CElementGen.hpp"
#include "Kyoto/Particles/CGenDescription.hpp"

CScriptEMPulse::CScriptEMPulse(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                               const CTransform4f& xf, bool active, float initialRadius,
                               float finalRadius, float duration, float interferenceDur, float f5,
                               float interferenceMag, float f7, CAssetId partId)
: CActor(uid, active, name, info, xf, CModelData::CModelDataNull(), CMaterialList(kMT_Projectile),
         CActorParameters::None().HotInThermal(true), kInvalidUniqueId)
, xe8_duration(duration)
, xec_finalRadius(finalRadius)
, xf0_currentRadius(initialRadius)
, xf4_initialRadius(initialRadius)
, xf8_interferenceDur(interferenceDur)
, xfc_(f5)
, x100_interferenceMag(interferenceMag)
, x104_(f7)
, x108_particleDesc(gpSimplePool->GetObj(SObjectTag('PART', partId))) {}

void CScriptEMPulse::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  CActor::AcceptScriptMsg(msg, uid, mgr);

  switch (msg) {
  case kSM_Activate:

    x114_particleGen =
        rs_new CElementGen(x108_particleDesc, CElementGen::kMOT_Normal, CElementGen::kOSF_One);

    x114_particleGen->SetOrientation(GetTransform().GetRotation());
    x114_particleGen->SetGlobalTranslation(GetTranslation());
    x114_particleGen->SetParticleEmission(true);
    mgr.PlayerState()->StaticInterference().AddSource(GetUniqueId(), x100_interferenceMag,
                                                      xf8_interferenceDur);
    break;
  default:
    break;
  }
}

void CScriptEMPulse::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CScriptEMPulse::Think(float dt, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }
  xf0_currentRadius += ((xec_finalRadius - xf4_initialRadius) / xe8_duration) * dt;

  if (xf0_currentRadius <= xec_finalRadius) {
    mgr.FreeScriptObject(GetUniqueId());
  }

  x114_particleGen->Update(dt);
}

CAABox CScriptEMPulse::CalculateBoundingBox() const {
  float radius = xf0_currentRadius;
  CVector3f position(GetTranslation());
  return CAABox(
      CVector3f(position.GetX() - radius, position.GetY() - radius, position.GetZ() - radius),
      CVector3f(position.GetX() + radius, position.GetY() + radius, position.GetZ() + radius));
}

rstl::optional_object< CAABox > CScriptEMPulse::GetTouchBounds() const {
  return CalculateBoundingBox();
}

void CScriptEMPulse::CalculateRenderBounds() { SetRenderBounds(CalculateBoundingBox()); }

void CScriptEMPulse::Touch(CActor& act, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }

  if (CPlayer* pl = TCastToPtr< CPlayer >(act)) {
    // CVector3f thisPos(GetTranslation());
    // CVector3f posDiff(thisPos - pl->GetTranslation());
    // float diffMagnitude = posDiff.Magnitude();
    float diffMagnitude = (GetTranslation() - pl->GetTranslation()).Magnitude();
    if (diffMagnitude < xec_finalRadius) {
      const float diffMagOp = 1.f - (diffMagnitude / xec_finalRadius);
      const float dur = (diffMagOp * (xfc_ - xf8_interferenceDur)) + xf8_interferenceDur;
      const float mag = (diffMagOp * (x104_ - x100_interferenceMag)) + x100_interferenceMag;

      if (dur > pl->GetStaticTimer()) {
        pl->SetHudDisable(dur);
        pl->SetOrbitRequestForTarget(mgr.GetPlayer()->GetOrbitTargetId(), kOR_ActivateOrbitSource,
                                     mgr);
      }
      mgr.PlayerState()->StaticInterference().AddSource(GetUniqueId(), mag, dur);
    }
  }
}

void CScriptEMPulse::AddToRenderer(const CFrustumPlanes& frustum, const CStateManager& mgr) const {
  CActor::AddToRenderer(frustum, mgr);
  if (GetActive()) {
    gpRender->AddParticleGen(*x114_particleGen);
  }
}
