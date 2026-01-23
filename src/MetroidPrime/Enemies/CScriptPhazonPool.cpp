#include "MetroidPrime/Enemies/CScriptPhazonPool.hpp"

#include "Kyoto/Graphics/CModel.hpp"

#include <Kyoto/Particles/CElementGen.hpp>

CScriptPhazonPool::CScriptPhazonPool(
    const TUniqueId uid, const rstl::string& name, const CEntityInfo& info, const CTransform4f& xf,
    const CVector3f& scale, const bool active, const CAssetId& w1, const CAssetId& w2,
    const CAssetId& w3, const CAssetId& w4, const uint p11, const CDamageInfo& dInfo,
    const CVector3f& orientedForce, const ETriggerFlags triggerFlags, const bool p15,
    const float p16, const float p17, const float p18, const float p19)
: CScriptTrigger(uid, name, info, xf.GetTranslation(), CAABox::Identity(), dInfo, orientedForce,
                 triggerFlags, active, false, false)
, mModelData1(rs_new CModelData(CStaticRes(w2, CVector3f(1.f, 1.f, 1.f))))
, mModelData2(rs_new CModelData(CStaticRes(w1, CVector3f(1.f, 1.f, 1.f))))
, mBounds(CAABox::Identity())
, mScale(scale)
, x19c(p16)
, x1a0(p16)
, x1a4(0.001f)
, mRotY(0.f)
, mRotZ(0.f)
, x1b0(0.f)
, x1b4(0.f)
, x1b8(0.f)
, x1bc(p17)
, x1c0(p19)
, x1c4(0.f)
, x1c8(p18)
, x1cc(0.f)
, x1d0(0.f)
, x1d4(0.f)
, x1d8(p11)
, x1dc(0)
, x1e0_24(p15)
, x1e0_25(false) {
  SetThermalFlags(kTF_Hot);
  if (w3 != kInvalidAssetId) {
    TLockedToken< CGenDescription > tok =
        TLockedToken< CGenDescription >(gpSimplePool->GetObj(SObjectTag('PART', w3)));
    mElementGen1 = rs_new CElementGen(tok);
    if (!mElementGen1.null()) {
      mElementGen1->SetParticleEmission(false);
    }
  }

  if (w4 != kInvalidAssetId) {
    TLockedToken< CGenDescription > tok =
        TLockedToken< CGenDescription >(gpSimplePool->GetObj(SObjectTag('PART', w4)));
    mElementGen2 = rs_new CElementGen(tok);
    if (!mElementGen2.null()) {
      mElementGen2->SetGlobalScale(CVector3f(mScale.GetX(), mScale.GetX(), mScale.GetX()));
      mElementGen2->SetParticleEmission(false);
    }
  }
}
CScriptPhazonPool::~CScriptPhazonPool() {}

void CScriptPhazonPool::Render(const CStateManager& mgr) const {
  CActor::Render(mgr);
  const CTransform4f& xf = GetTransform();

  const bool depth = x1a4 > 0.25f;
  const CModelFlags tmp = CModelFlags::AlphaBlended(x1a4);
  const CModelFlags flags = tmp.DepthCompareUpdate(depth, depth);

  if (!mModelData1.null()) {
    mModelData1->Render(mgr, xf * CTransform4f::RotateZ(mRotZ), nullptr, flags);
  }

  if (!mModelData2.null()) {
    const CQuaternion quat = (CQuaternion::ZRotation(mRotZ) * CQuaternion::XRotation(mRotZ) *
                              CQuaternion::YRotation(mRotY));
    mModelData2->Render(mgr, xf * quat.BuildTransform4f(), nullptr, flags);
  }
}