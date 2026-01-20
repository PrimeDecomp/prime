#ifndef _CGUNWEAPON
#define _CGUNWEAPON

#include "types.h"

#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/CModelData.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/Weapons/GunController/CGunMotion.hpp"
#include "MetroidPrime/Weapons/WeaponCommon.hpp"
#include "MetroidPrime/Weapons/WeaponTypes.hpp"

#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "Collision/CMaterialList.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

class CGenDescription;
class CGunController;
class CAnimCharacterSet;
class CWeaponDescription;
class CElementGen;
class CRainSplashGenerator;
class CTransform4f;
class CModelFlags;
class CActorLights;
class SWeaponInfo;
class SShotParam;

enum EFrozenFxType {
  kFFT_None,
  kFFT_Frozen,
  kFFT_Thawed,
};

class CVelocityInfo {
public:
  ~CVelocityInfo();

  CVector3f& Velocity(int i) { return x0_vel[i]; }
  const CVector3f& GetVelocity(int i) const { return x0_vel[i]; }
  bool GetTargetHoming(int i) const { return x1c_targetHoming[i]; }

  void Clear();

  void AddVelocity(const CVector3f& vel) { x0_vel.push_back(vel); }
  void AddTargetHoming(const bool& homing) { x1c_targetHoming.push_back(homing); }
  void AddTrat(const float& trat) { x24_trat.push_back(trat); }

private:
  rstl::reserved_vector< CVector3f, 2 > x0_vel;
  rstl::reserved_vector< bool, 2 > x1c_targetHoming;
  rstl::reserved_vector< float, 2 > x24_trat;
};

class CGunWeapon {

public:
  CGunWeapon(CAssetId ancsId, EWeaponType type, TUniqueId playerId, EMaterialTypes playerMaterial,
             const CVector3f& scale);
  virtual ~CGunWeapon();

  enum ESecondaryFxType {
    kSFT_None,
    kSFT_Charge,
    kSFT_ToCombo,
    kSFT_CancelCharge,
  };

  // Virtual Methods
  virtual void Reset(CStateManager& mgr);
  virtual void PlayAnim(NWeaponTypes::EGunAnimType type, bool loop);
  virtual void PreRenderGunFx(const CStateManager& mgr, const CTransform4f& xf);
  virtual void PostRenderGunFx(const CStateManager& mgr, const CTransform4f& xf);
  virtual void UpdateGunFx(bool shotSmoke, float dt, const CStateManager& mgr,
                           const CTransform4f& xf);
  virtual void Fire(bool underwater, float dt, CPlayerState::EChargeStage chargeState,
                    const CTransform4f& xf, CStateManager& mgr, TUniqueId homingTarget,
                    float chargeFactor1, float chargeFactor2);
  virtual void EnableFx(bool enable);
  virtual void EnableSecondaryFx(ESecondaryFxType type);
  virtual void Draw(bool drawSuitArm, const CStateManager& mgr, const CTransform4f& xf,
                    const CModelFlags& flags, const CActorLights* lights) const;
  virtual void DrawMuzzleFx(const CStateManager& mgr) const;
  virtual void Update(float dt, CStateManager& mgr);
  virtual void Load(CStateManager& mgr, bool subtypeBasePose);
  virtual void Unload(CStateManager& mgr);
  virtual bool IsLoaded() const;

  const CVelocityInfo& GetVelocityInfo() const { return x1d0_velInfo; }
  rstl::optional_object< CModelData >& SolidModelData() { return x10_solidModelData; }
  const CModelData& GetSolidModelData() const { return x10_solidModelData.data(); }

  EWeaponType GetType() const { return x1c0_weaponType; }
  TUniqueId GetPlayerId() const { return x1c4_playerId; }
  EMaterialTypes GetPlayerMaterial() const { return x1c8_playerMaterial; }

  CAABox GetBounds() const;
  CAABox GetBounds(const CTransform4f& xf) const;
  const SWeaponInfo& GetWeaponInfo() const;
  void ActivateCharge(bool enable, bool resetEffect);
  bool PlayPasAnim(SamusGun::EAnimationState state, CStateManager& mgr, float angle);
  bool IsChargeAnimOver() const;
  void UpdateMuzzleFx(float dt, const CVector3f& scale, const CVector3f& pos, bool emitting);
  CElementGen* GetChargeMuzzleFx() const;
  void DrawHologram(const CStateManager& mgr, const CTransform4f& xf,
                    const CModelFlags& flags) const;
  void ReturnToDefault(CStateManager& mgr);
  bool ComboFireOver() const;
  void EnterFidget(CStateManager& mgr, SamusGun::EFidgetType type, int parm2);
  void Touch(const CStateManager& mgr);
  void TouchHolo(const CStateManager& mgr);
  void AsyncLoadSuitArm(CStateManager& mgr);
  void AsyncLoadFidget(CStateManager& mgr, SamusGun::EFidgetType type, int animSet);
  void UnLoadFidget();
  bool IsFidgetLoaded();
  void EnableFrozenEffect(EFrozenFxType type);

  CDamageInfo GetDamageInfo(CStateManager& mgr, CPlayerState::EChargeStage chargeState,
                            float chargeFactor);
  CDamageInfo GetShotDamageInfo(const SShotParam& shotParam, CStateManager& mgr) const;

  static const char* GetMuzzleLocator() { return skMuzzleLocator; }

protected:
  // x0 is vtable
  CVector3f x4_scale;
  rstl::optional_object< CModelData > x10_solidModelData;
  rstl::optional_object< CModelData > x60_holoModelData;
  rstl::optional_object< CModelData > xb0_suitArmModelData;
  rstl::single_ptr< CGunController > x100_gunController;
  TToken< CAnimCharacterSet > x104_gunCharacter;
  rstl::vector< CToken > x10c_anims;
  rstl::vector< int > x11c_unk;
  rstl::vector< CToken > x12c_deps;
  TToken< CAnimCharacterSet > x13c_armCharacter;
  rstl::reserved_vector< TCachedToken< CWeaponDescription >, 2 > x144_weapons;
  TCachedToken< CGenDescription > x160_xferEffect;
  rstl::reserved_vector< TCachedToken< CGenDescription >, 2 > x16c_muzzleEffects;
  rstl::reserved_vector< TCachedToken< CGenDescription >, 2 > x188_frozenEffects;
  rstl::reserved_vector< rstl::auto_ptr< CElementGen >, 2 > x1a4_muzzleGenerators;
  rstl::single_ptr< CElementGen > x1b8_frozenGenerator;
  CRainSplashGenerator* x1bc_rainSplashGenerator;
  EWeaponType x1c0_weaponType;
  TUniqueId x1c4_playerId;
  EMaterialTypes x1c8_playerMaterial;
  ESecondaryFxType x1cc_enabledSecondaryEffect;
  CVelocityInfo x1d0_velInfo;
  CPlayerState::EBeamId x200_beamId;
  EFrozenFxType x204_frozenEffect;
  uint x208_muzzleEffectIdx;
  uint x20c_shaderIdx;
  // 0x1: load request, 0x2: muzzle fx, 0x4: projectile data, 0x8: anims, 0x10: everything else
  int x210_loadFlags;
  CAssetId x214_ancsId;
  bool x218_24 : 1;
  bool x218_25_enableCharge : 1;
  bool x218_26_loaded : 1;
  // Initialize in selected beam's pose, rather than power beam's pose
  bool x218_27_subtypeBasePose : 1;
  bool x218_28_suitArmLocked : 1;
  bool x218_29_drawHologram : 1;

  static const char* const skMuzzleLocator;
  static const char* const skElbowLocator;
  static const int skShootAnim[2];

  void AllocResPools(CPlayerState::EBeamId beam);
  void FreeResPools();
  static void FillTokenVector(const rstl::vector< SObjectTag >& tags,
                              rstl::vector< CToken >& objects, bool includeTxtr);
  void BuildDependencyList(CPlayerState::EBeamId beam);
  void LoadSuitArm(CStateManager& mgr);
  void LoadGunModels(CStateManager& mgr);
  void LoadAnimations();
  bool IsAnimsLoaded() const;
  void LoadMuzzleFx(float dt);
  void LoadProjectileData(CStateManager& mgr);
  void LoadFxIdle(float dt, CStateManager& mgr);
  void LockTokens(CStateManager& mgr);
  void UnlockTokens();

  static void PointGenerator(void*, const CVector3f*, const CVector3f*, int);
};
CHECK_SIZEOF(CGunWeapon, 0x21c)

#endif // _CGUNWEAPON
