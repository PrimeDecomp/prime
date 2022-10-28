#ifndef _CKNOCKBACKCONTROLLER
#define _CKNOCKBACKCONTROLLER

#include "types.h"

#include "Kyoto/Animation/CPASAnimState.hpp"

class CDamageInfo;
class CPatterned;

enum EKnockBackType {
  kKBT_Radius,
  kKBT_Direct,
};
enum EKnockBackVariant {
  kKBV_Small,
  kKBV_Medium,
  kKBV_Large,
};
enum EKnockBackWeaponType {
  kKBWT_Invalid = -1,
  kKBWT_Power,
  kKBWT_PowerCharged,
  kKBWT_PowerComboed,
  kKBWT_PowerComboedDirect,
  kKBWT_Wave,
  kKBWT_WaveCharged,
  kKBWT_WaveComboed,
  kKBWT_WaveComboedDirect,
  kKBWT_Ice,
  kKBWT_IceCharged,
  kKBWT_IceComboed,
  kKBWT_IceComboedDirect,
  kKBWT_Plasma,
  kKBWT_PlasmaCharged,
  kKBWT_PlasmaComboed,
  kKBWT_Missile,
  kKBWT_Bomb,
  kKBWT_PowerBomb,
  kKBWT_Phazon,
};
enum EKnockBackCharacterState {
  kKBCS_Alive,
  kKBCS_Dead,
  kKBCS_FrozenAlive,
  kKBCS_FrozenDead,
};
enum EKnockBackAnimationState {
  kKBAS_Invalid = -1,
  kKBAS_None,
  kKBAS_Flinch,
  kKBAS_KnockBack,
  kKBAS_Hurled,
  kKBAS_Fall,
};
enum EKnockBackAnimationFollowUp {
  kKBAFU_Invalid = -1,
  kKBAFU_None,
  kKBAFU_Freeze,
  kKBAFU_Shock,
  kKBAFU_Burn,
  kKBAFU_PhazeOut,
  kKBAFU_Death,
  kKBAFU_ExplodeDeath,
  kKBAFU_IceDeath,
  kKBAFU_BurnDeath,
  kKBAFU_LaggedBurnDeath,
};

class CKnockBackController {
  friend class CPatterned;

public:
  struct KnockBackParms {
    EKnockBackAnimationState x0_animState;
    EKnockBackAnimationFollowUp x4_animFollowup;
    float x8_followupDuration;
    float xc_intoFreezeDur;
  };

  explicit CKnockBackController(EKnockBackVariant variant);
  void SetKnockBackVariant(EKnockBackVariant v) { x0_variant = v; }
  void DeferKnockBack(EWeaponType tp) {
    x14_deferWeaponType = tp;
    x68_deferRemTime = 0.05f;
  }
  void sub80233d40(int i, float f1, float f2);
  void SetAutoResetImpulse(bool b);
  void SetImpulseDurationIdx(int i);
  void SetAnimationStateRange(EKnockBackAnimationState a, EKnockBackAnimationState b) {
    x18_minAnimState = a;
    x1c_maxAnimState = b;
  }
  void Update(float dt, CStateManager& mgr, CPatterned& parent);
  void KnockBack(const CVector3f& backVec, CStateManager& mgr, CPatterned& parent,
                 const CDamageInfo& info, EKnockBackType type, float magnitude);

  void ApplyImpulse(float dt, CPatterned& parent);
  bool TickDeferredTimer(float dt);
  EKnockBackCharacterState GetKnockBackCharacterState(const CPatterned& parent) const;
  void ValidateState(const CPatterned& parent);
  float CalculateExtraHurlVelocity(CStateManager& mgr, float magnitude, float kbResistance) const;
  void DoKnockBackAnimation(const CVector3f& backVec, CStateManager& mgr, CPatterned& parent,
                            float magnitude);
  void ResetKnockBackImpulse(const CPatterned& parent, const CVector3f& backVec,
                             float magnitude);
  void DoDeferredKnockBack(CStateManager& mgr, CPatterned& parent);
  EKnockBackWeaponType GetKnockBackWeaponType(const CDamageInfo& info, EWeaponType wType,
                                              EKnockBackType type);
  void SelectDamageState(const CPatterned& parent, const CDamageInfo& info, EWeaponType wType,
                         EKnockBackType type);

  void SetSeverity(pas::ESeverity v) { x7c_severity = v; }
  void SetEnableFreeze(bool b) { x81_25_enableFreeze = b; }
  bool GetEnableFreeze() const { return x81_25_enableFreeze; }
  void SetEnableShock(bool b) { x81_26_enableShock = b; }
  void SetEnableBurn(bool b) { x81_27_enableBurn = b; }
  void SetEnableBurnDeath(bool b) { x81_28_enableBurnDeath = b; }
  void SetEnableExplodeDeath(bool b) { x81_29_enableExplodeDeath = b; }
  void SetEnableLaggedBurnDeath(bool b) { x81_30_enableLaggedBurnDeath = b; }
  void SetX81_31(bool b) { x81_31_ = b; }
  void SetX82_24(bool b) { x82_24_ = b; }
  void SetLocomotionDuringElectrocution(bool b) { x82_26_locomotionDuringElectrocution = b; }
  const KnockBackParms& GetActiveParms() const { return x4_activeParms; }
  EKnockBackVariant GetVariant() const { return x0_variant; }
  float GetFlinchRemTime() const { return x64_flinchRemTime; }
  // void SetAvailableState(EKnockBackAnimationState s, bool b) {
  //   x80_availableStates.set(size_t(s), b);
  // }
  // bool TestAvailableState(EKnockBackAnimationState s) const {
  //   return x80_availableStates.test(size_t(s));
  // }

private:
  EKnockBackVariant x0_variant;
  KnockBackParms x4_activeParms;
  EWeaponType x14_deferWeaponType;
  EKnockBackAnimationState x18_minAnimState;
  EKnockBackAnimationState x1c_maxAnimState;
  uint x20_impulseDurationIdx;
  rstl::reserved_vector< rstl::pair< float, float >, 5 > x24_;
  CVector3f x50_impulseDir;
  float x5c_impulseMag;
  float x60_impulseRemTime;
  float x64_flinchRemTime;
  float x68_deferRemTime;
  uint x6c_;
  uint x70_;
  uint x74_;
  uint x78_;
  pas::ESeverity x7c_severity;
  uchar x80_availableStates;
  bool x81_24_autoResetImpulse : 1;
  bool x81_25_enableFreeze : 1;
  bool x81_26_enableShock : 1;
  bool x81_27_enableBurn : 1;
  bool x81_28_enableBurnDeath : 1;
  bool x81_29_enableExplodeDeath : 1;
  bool x81_30_enableLaggedBurnDeath : 1;
  bool x81_31_ : 1;
  bool x82_24_ : 1;
  bool x82_25_inDeferredKnockBack : 1;
  bool x82_26_locomotionDuringElectrocution : 1;
};
CHECK_SIZEOF(CKnockBackController, 0x84)

#endif // _CKNOCKBACKCONTROLLER
