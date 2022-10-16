#ifndef _CTWEAKGAME
#define _CTWEAKGAME

#include "types.h"

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/TOneStatic.hpp"

#include "rstl/string.hpp"

class CTweakGame;

class CTweakGame : public ITweakObject, public TOneStatic< CTweakGame > {
public:
  CTweakGame(CInputStream&);
  ~CTweakGame() override;

  const rstl::string& GetWorldPrefix() { return x4_worldPrefix; }
  const rstl::string& GetDefaultRoom() const { return x14_defaultRoom; }
  bool GetSplashScreensDisabled() const { return x2b_splashScreensDisabled; }
  float GetFirstPersonFOV() const { return x24_fov; }
  float GetPressStartDelay() const { return x30_pressStartDelay; }
  float GetWavecapIntensityNormal() const { return x34_wavecapIntensityNormal; }
  float GetWavecapIntensityPoison() const { return x38_wavecapIntensityPoison; }
  float GetWavecapIntensityLava() const { return x3c_wavecapIntensityLava; }
  float GetRippleIntensityNormal() const { return x40_rippleIntensityNormal; }
  float GetRippleIntensityPoison() const { return x44_rippleIntensityPoison; }
  float GetRippleIntensityLava() const { return x48_rippleIntensityLava; }
  float GetFluidEnvBumpScale() const { return x4c_fluidEnvBumpScale; }
  float GetWaterFogDistanceBase() const { return x50_waterFogDistanceBase; }
  float GetWaterFogDistanceRange() const { return x54_waterFogDistanceRange; }
  float GetGravityWaterFogDistanceBase() const { return x58_gravityWaterFogDistanceBase; }
  float GetGravityWaterFogDistanceRange() const { return x5c_gravityWaterFogDistanceRange; }
  float GetHardModeDamageMultiplier() const { return x60_hardmodeDamageMult; }
  float GetHardModeWeaponMultiplier() const { return x64_hardmodeWeaponMult; }

private:
  rstl::string x4_worldPrefix;
  rstl::string x14_defaultRoom;
  float x24_fov;
  bool x28_unknown1;
  bool x29_unknown2;
  bool x2a_unknown3;
  bool x2b_splashScreensDisabled;
  float x2c_unknown5;
  float x30_pressStartDelay;
  float x34_wavecapIntensityNormal;
  float x38_wavecapIntensityPoison;
  float x3c_wavecapIntensityLava;
  float x40_rippleIntensityNormal;
  float x44_rippleIntensityPoison;
  float x48_rippleIntensityLava;
  float x4c_fluidEnvBumpScale;
  float x50_waterFogDistanceBase;
  float x54_waterFogDistanceRange;
  float x58_gravityWaterFogDistanceBase;
  float x5c_gravityWaterFogDistanceRange;
  float x60_hardmodeDamageMult;
  float x64_hardmodeWeaponMult;
};

extern CTweakGame* gpTweakGame;

#endif // _CTWEAKGAME
