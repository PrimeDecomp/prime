#ifndef _CEYEBALL
#define _CEYEBALL

#include "MetroidPrime/CBoneTracking.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/Weapons/CProjectileInfo.hpp"

class CEyeBall : public CPatterned {
public:
  CEyeBall(const TUniqueId uid, const rstl::string& name, const EFlavorType flavor,
           const CEntityInfo& info, const CTransform4f& xf, const CModelData& mData,
           const CPatternedInfo& pInfo, const float attackDelay, const float attackStartTime,
           const CAssetId wpscId, const CDamageInfo& dInfo, const CAssetId beamContactFxId,
           const CAssetId beamPulseFxId, const CAssetId beamTextureId,
           const CAssetId beamGlowTextureId, const uint anim0, const uint anim1, const uint anim2,
           const uint anim3, const uint beamSfx, const bool attackDisabled,
           const CActorParameters& actParams);
  ~CEyeBall() {}

  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr) override;
  void DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node, EUserEventType event,
                       float dt) override;

  void InActive(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Active(CStateManager& mgr, EStateMsg msg, float arg) override;
  void PreRender(CStateManager& mgr, const CFrustumPlanes& frustum) override;

private:
  static float test(float t) { return t; }
  void CreateBeam(CStateManager& mgr);
  void FireBeam(CStateManager& mgr, const CTransform4f& xf);
  void TryFlinch(CStateManager& mgr, int arg);
  void UpdateAnimation();
  void ResetBeamState(CStateManager& mgr);

  float mAttackDelay;
  float mAttackStartTime;
  CBoneTracking mBoneTracking;
  CVector3f mTargetPosition;
  CProjectileInfo mProjectileInfo;
  CAssetId mBeamContactFxId;
  CAssetId mBeamPulseFxId;
  CAssetId mBeamTextureId;
  CAssetId mBeamGlowTextureId;
  TUniqueId mProjectileId;
  uint mCurrentAnim;
  uint mAnimIndices[4];
  ushort mBeamSfxId;
  CSfxHandle mBeamSfx;
  bool mCanAttack : 1;
  bool mPlayerInRange : 1;
  bool mAlert : 1;
  bool mAttackDisabled : 1;
  bool mFiringBeam : 1;

  static const char* skEyeLocator;
};

#endif // _CEYEBALL
