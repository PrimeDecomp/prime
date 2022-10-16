#include "MetroidPrime/Tweaks/CTweakGame.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CTweakGame::~CTweakGame() {}

CTweakGame::CTweakGame(CInputStream& in)
: x4_worldPrefix(in)
, x14_defaultRoom(in)
, x24_fov(in.ReadFloat())
, x28_unknown1(in.ReadBool())
, x29_unknown2(in.ReadBool())
, x2a_unknown3(in.ReadBool())
, x2b_splashScreensDisabled(in.ReadBool())
, x2c_unknown5(in.ReadFloat())
, x30_pressStartDelay(in.ReadFloat())
, x34_wavecapIntensityNormal(in.ReadFloat())
, x38_wavecapIntensityPoison(in.ReadFloat())
, x3c_wavecapIntensityLava(in.ReadFloat())
, x40_rippleIntensityNormal(in.ReadFloat())
, x44_rippleIntensityPoison(in.ReadFloat())
, x48_rippleIntensityLava(in.ReadFloat())
, x4c_fluidEnvBumpScale(in.ReadFloat())
, x50_waterFogDistanceBase(in.ReadFloat())
, x54_waterFogDistanceRange(in.ReadFloat())
, x58_gravityWaterFogDistanceBase(in.ReadFloat())
, x5c_gravityWaterFogDistanceRange(in.ReadFloat())
, x60_hardmodeDamageMult(in.ReadFloat())
, x64_hardmodeWeaponMult(in.ReadFloat()) {
  x2b_splashScreensDisabled = false;
}
