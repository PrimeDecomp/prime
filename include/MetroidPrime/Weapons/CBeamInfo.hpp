#ifndef _CBEAMINFO
#define _CBEAMINFO

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/Graphics/CColor.hpp"

class CBeamInfo {

private:
  uint x0_;
  /*
   * 0x1: motion blur
   * 0x2: pulse effect
   * 0x4: one shot
   * 0x8: phazon damage
   */
  int x4_beamAttributes;
  CAssetId x8_contactFxId;
  CAssetId xc_pulseFxId;
  CAssetId x10_textureId;
  CAssetId x14_glowTextureId;
  int x18_length;
  float x1c_radius;
  float x20_expansionSpeed;
  float x24_lifeTime;
  float x28_pulseSpeed;
  float x2c_shutdownTime;
  float x30_contactFxScale;
  float x34_pulseFxScale;
  float x38_travelSpeed;
  CColor x3c_innerColor;
  CColor x40_outerColor;
};

#endif // _CBEAMINFO
