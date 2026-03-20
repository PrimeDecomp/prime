#ifndef _CSCRIPTPLAYERACTOR
#define _CSCRIPTPLAYERACTOR

#include "MetroidPrime/ScriptObjects/CScriptActor.hpp"

#include "MetroidPrime/CAnimRes.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

#include "Kyoto/TToken.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/single_ptr.hpp"

class CModel;
class CTexture;

class CScriptPlayerActor : public CScriptActor {
public:
  CScriptPlayerActor(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                     const CTransform4f& xf, const CAnimRes& animRes, const CModelData& mData,
                     const CAABox& aabb, bool setBoundingBox, const CMaterialList& matList,
                     float mass, float zMomentum, const CHealthInfo& hInfo,
                     const CDamageVulnerability& dVuln, const CActorParameters& aParams,
                     bool loop, bool active, uint flags, CPlayerState::EBeamId beam);

  // CEntity
  ~CScriptPlayerActor() override;
  void Accept(IVisitor& visitor) override;
  void Think(float dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;
  void SetActive(bool active) override;

  // CActor
  void PreRender(CStateManager&, const CFrustumPlanes&) override;
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const override;
  void Render(const CStateManager&) const override;

  void TouchModels(const CStateManager& mgr) const;

private:
  uint GetSuitCharIdx(const CStateManager& mgr, CPlayerState::EPlayerSuit suit) const;
  uint GetNextSuitCharIdx(const CStateManager& mgr) const;
  void LoadSuit(uint charIdx);
  void LoadBeam(CPlayerState::EBeamId beam);
  void PumpBeamModel(const CStateManager& mgr);
  void PumpSuitModel(const CStateManager& mgr);
  void BuildBeamModelData();
  void SetupOfflineModelData();
  void SetupOnlineModelData();
  void TouchModels_Internal(const CStateManager& mgr) const;
  bool HasGunModelData() const;
  void SetupEnvFx(const CStateManager& mgr, bool set);
  void SetIntoStateManager(CStateManager& mgr, bool set);

  CAnimRes x2e8_suitRes;
  CPlayerState::EBeamId x304_beam;
  CPlayerState::EPlayerSuit x308_suit;
  CPlayerState::EBeamId x30c_setBeamId;
  int x310_loadedCharIdx;
  rstl::single_ptr< CModelData > x314_beamModelData;
  rstl::single_ptr< CModelData > x318_suitModelData;
  CToken* x31c_beamModel;
  CToken* x320_suitModel;
  CToken* x324_suitSkin;
  rstl::optional_object< TLockedToken< CModel > > x328_backupModelData;
  rstl::optional_object< TCachedToken< CTexture > > x338_phazonIndirectTexture;
  uint x348_deallocateBackupCountdown;
  float x34c_phazonOffsetAngle;
  uint x350_flags;
  bool x354_24_setBoundingBox : 1;
  bool x354_25_deferOnlineModelData : 1;
  bool x354_26_deferOfflineModelData : 1;
  bool x354_27_beamModelLoading : 1;
  bool x354_28_suitModelLoading : 1;
  bool x354_29_loading : 1;
  bool x354_30_enableLoading : 1;
  bool x354_31_deferOnlineLoad : 1;
  bool x355_24_areaTrackingLoad : 1;
  TUniqueId x356_nextPlayerActor;
};
CHECK_SIZEOF(CScriptPlayerActor, 0x358)

#endif // _CSCRIPTPLAYERACTOR
