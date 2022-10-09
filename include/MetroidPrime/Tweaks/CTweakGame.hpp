#ifndef _CTWEAKGAME
#define _CTWEAKGAME

#include "types.h"

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "rstl/string.hpp"

class CTweakGame : public ITweakObject {
public:
  ~CTweakGame() override;

  const rstl::string& GetWorldPrefix() { return x4_worldPrefix; }
  const rstl::string& GetDefaultRoom() const { return x14_defaultRoom; }
  bool GetSplashScreensDisabled() const { return x2b_splashScreensDisabled; }
  f32 GetFirstPersonFOV() const { return x24_fov; }
  f32 GetPressStartDelay() const { return x30_pressStartDelay; }
  f32 GetWavecapIntensityNormal() const { return x34_wavecapIntensityNormal; }
  f32 GetWavecapIntensityPoison() const { return x38_wavecapIntensityPoison; }
  f32 GetWavecapIntensityLava() const { return x3c_wavecapIntensityLava; }
  f32 GetRippleIntensityNormal() const { return x40_rippleIntensityNormal; }
  f32 GetRippleIntensityPoison() const { return x44_rippleIntensityPoison; }
  f32 GetRippleIntensityLava() const { return x48_rippleIntensityLava; }
  f32 GetFluidEnvBumpScale() const { return x4c_fluidEnvBumpScale; }
  f32 GetWaterFogDistanceBase() const { return x50_waterFogDistanceBase; }
  f32 GetWaterFogDistanceRange() const { return x54_waterFogDistanceRange; }
  f32 GetGravityWaterFogDistanceBase() const { return x58_gravityWaterFogDistanceBase; }
  f32 GetGravityWaterFogDistanceRange() const { return x5c_gravityWaterFogDistanceRange; }
  f32 GetHardModeDamageMultiplier() const { return x60_hardmodeDamageMult; }
  f32 GetHardModeWeaponMultiplier() const { return x64_hardmodeWeaponMult; }

private:
  rstl::string x4_worldPrefix;
  rstl::string x14_defaultRoom;
  f32 x24_fov;
  bool x28_unknown1;
  bool x29_unknown2;
  bool x2a_unknown3;
  bool x2b_splashScreensDisabled;
  f32 x2c_unknown5;
  f32 x30_pressStartDelay;
  f32 x34_wavecapIntensityNormal;
  f32 x38_wavecapIntensityPoison;
  f32 x3c_wavecapIntensityLava;
  f32 x40_rippleIntensityNormal;
  f32 x44_rippleIntensityPoison;
  f32 x48_rippleIntensityLava;
  f32 x4c_fluidEnvBumpScale;
  f32 x50_waterFogDistanceBase;
  f32 x54_waterFogDistanceRange;
  f32 x58_gravityWaterFogDistanceBase;
  f32 x5c_gravityWaterFogDistanceRange;
  f32 x60_hardmodeDamageMult;
  f32 x64_hardmodeWeaponMult;
};

extern CTweakGame* gpTweakGame;

#endif // _CTWEAKGAME
