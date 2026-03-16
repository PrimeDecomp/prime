#ifndef _CTWEAKPLAYERGUN
#define _CTWEAKPLAYERGUN

#include "types.h"

#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TOneStatic.hpp"

#include "rstl/reserved_vector.hpp"

struct SWeaponInfo {
  float x0_coolDown;
  CDamageInfo x4_normal;
  CDamageInfo x20_charged;

  SWeaponInfo() : x0_coolDown(0.1f) {}
  explicit SWeaponInfo(CInputStream& in);
};

class CTweakPlayerGun : public ITweakObject, public TOneStatic< CTweakPlayerGun > {
public:
  CTweakPlayerGun(CInputStream& in);
  ~CTweakPlayerGun() override;

  float GetUpLookAngle() const { return x4_upLookAngle; }
  float GetDownLookAngle() const { return x8_downLookAngle; }
  float GetVerticalSpread() const { return xc_verticalSpread; }
  float GetHorizontalSpread() const { return x10_horizontalSpread; }
  float GetHighVerticalSpread() const { return x14_highVerticalSpread; }
  float GetHighHorizontalSpread() const { return x18_highHorizontalSpread; }
  float GetLowVerticalSpread() const { return x1c_lowVerticalSpread; }
  float GetLowHorizontalSpread() const { return x20_lowHorizontalSpread; }
  float GetAimVerticalSpeed() const { return x24_aimVerticalSpeed; }
  float GetAimHorizontalSpeed() const { return x28_aimHorizontalSpeed; }
  float GetBombFuseTime() const { return x2c_bombFuseTime; }
  float GetBombDropDelayTime() const { return x30_bombDropDelayTime; }
  float GetHoloHoldTime() const { return x34_holoHoldTime; }
  float GetGunTransformTime() const { return x38_gunTransformTime; }
  float GetGunHolsterTime() const { return x3c_gunHolsterTime; }
  float GetGunNotFiringTime() const { return x40_gunNotFiringTime; }
  float GetFixedVerticalAim() const { return x44_fixedVerticalAim; }
  float GetGunExtendDistance() const { return x48_gunExtendDistance; }
  const CVector3f& GetGunPosition() const { return x4c_gunPosition; }
  const CVector3f& GetGrapplingArmPosition() const { return x64_grapplingArmPosition; }

  const SWeaponInfo& GetBeamInfo(int beam) const;

  const CDamageInfo& GetBombInfo() const { return x70_bomb; }

// private:
  float x4_upLookAngle;
  float x8_downLookAngle;
  float xc_verticalSpread;
  float x10_horizontalSpread;
  float x14_highVerticalSpread;
  float x18_highHorizontalSpread;
  float x1c_lowVerticalSpread;
  float x20_lowHorizontalSpread;
  float x24_aimVerticalSpeed;
  float x28_aimHorizontalSpeed;
  float x2c_bombFuseTime;
  float x30_bombDropDelayTime;
  float x34_holoHoldTime;
  float x38_gunTransformTime;
  float x3c_gunHolsterTime;
  float x40_gunNotFiringTime;
  float x44_fixedVerticalAim;
  float x48_gunExtendDistance;
  CVector3f x4c_gunPosition;
  CVector3f x58_;
  CVector3f x64_grapplingArmPosition;
  CDamageInfo x70_bomb;
  CDamageInfo x8c_powerBomb;
  CDamageInfo x1d4_missile;
  SWeaponInfo xa8_beams[5];
  rstl::reserved_vector< CDamageInfo, 5 > x1f0_combos;
  rstl::reserved_vector< float, 5 > x280_ricochetData;
};

extern CTweakPlayerGun* gpTweakPlayerGun;

#endif // _CTWEAKPLAYERGUN
