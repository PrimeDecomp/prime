#ifndef _CPLASMAPROJECTILE
#define _CPLASMAPROJECTILE

#include "MetroidPrime/Weapons/CBeamProjectile.hpp"

class CElectricDescription;

class CPlasmaProjectile : public CBeamProjectile {
public:
  enum EExpansionState { kES_Inactive, kES_Attack, kES_Sustain, kES_Release, kES_Done };

  struct PlayerEffectResources {
    int count;
    CAssetId data[8];

    PlayerEffectResources(CAssetId a = kInvalidAssetId, CAssetId b = kInvalidAssetId,
                          CAssetId c = kInvalidAssetId, CAssetId d = kInvalidAssetId,
                          CAssetId e = kInvalidAssetId, CAssetId f = kInvalidAssetId,
                          CAssetId g = kInvalidAssetId, CAssetId h = kInvalidAssetId)
    : count(8) {
      data[0] = a;
      data[1] = b;
      data[2] = c;
      data[3] = d;
      data[4] = e;
      data[5] = f;
      data[6] = g;
      data[7] = h;
    }
  };

  CPlasmaProjectile(const TToken< CWeaponDescription >& wDesc, const rstl::string& name,
                    EWeaponType wType, const CBeamInfo& bInfo, const CTransform4f& xf,
                    EMaterialTypes matType, const CDamageInfo& dInfo, TUniqueId uid, TAreaId aid,
                    TUniqueId owner, const PlayerEffectResources& res, bool growingBeam,
                    EProjectileAttrib attribs);

  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr) override;
  void ResetBeam(CStateManager& mgr, bool fullReset) override;
  void UpdateFx(const CTransform4f& xf, float dt, CStateManager& mgr) override;
  void Fire(const CTransform4f& xf, CStateManager& mgr, bool b) override;
  void Touch(CActor& other, CStateManager& mgr) override;
  bool CanRenderUnsorted(const CStateManager& mgr) const override;
  void AddToRenderer(const CFrustumPlanes& frustum, const CStateManager& mgr) const override;
  void Render(const CStateManager& mgr) const override;
  CColor GetInnerColor() const { return x490_innerColor; }
  CColor GetOuterColor() const { return x494_outerColor; }
  bool IsFiring() const { return x548_26_firing; }

private:
  rstl::vector< TUniqueId > x468_lights;
  int x478_beamAttributes;
  float x47c_lifeTime;
  float x480_pulseSpeed;
  float x484_shutdownTime;
  float x488_expansionSpeed;
  float x48c_;
  CColor x490_innerColor;
  CColor x494_outerColor;
  CDamageInfo x498_phazonDamage;
  EExpansionState x4b4_expansionState;
  float x4b8_beamWidth;
  float x4bc_lifeTimer;
  float x4c0_expansionT;
  float x4c4_expansion;
  float x4c8_beamAngle;
  float x4cc_energyPulseStartY;
  float x4d0_shutdownTimer;
  float x4d4_contactPulseTimer;
  float x4d8_energyPulseTimer;
  float x4dc_playerEffectPulseTimer;
  float x4e0_playerDamageDuration;
  float x4e4_playerDamageTimer;
  TLockedToken< CTexture > x4e8_texture;
  TLockedToken< CTexture > x4f4_glowTexture;
  TCachedToken< CGenDescription > x500_contactFxDesc;
  TCachedToken< CGenDescription > x50c_pulseFxDesc;
  rstl::single_ptr< CElementGen > x518_contactGen;
  rstl::single_ptr< CElementGen > x51c_pulseGen;
  rstl::single_ptr< CElementGen > x520_weaponGen;
  CAssetId x524_freezeSteamTxtr;
  CAssetId x528_freezeIceTxtr;
  rstl::optional_object< TToken< CElectricDescription > > x52c_visorElectric;
  rstl::optional_object< TToken< CGenDescription > > x538_visorParticle;
  u16 x544_freezeSfx;
  u16 x546_electricSfx;
  bool x548_24_ : 1;
  bool x548_25_enableEnergyPulse : 1;
  bool x548_26_firing : 1;
  bool x548_27_texturesLoaded : 1;
  bool x548_28_drawOwnerFirst : 1;
  bool x548_29_activePlayerPhazon : 1;
};

#endif // _CPLASMAPROJECTILE
