#ifndef _CBEAMINFO
#define _CBEAMINFO

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/SObjectTag.hpp"

class CBeamInfo {
public:
  CBeamInfo(s32 beamAttributes, CAssetId contactFxId, CAssetId pulseFxId, CAssetId textureId,
            CAssetId glowTextureId, s32 length, float radius, float expansionSpeed, float lifeTime,
            float pulseSpeed, float shutdownTime, float contactFxScale, float pulseFxScale,
            const CColor& innerColor, const CColor& outerColor, float travelSpeed)
  : x4_beamAttributes(beamAttributes)
  , x8_contactFxId(contactFxId)
  , xc_pulseFxId(pulseFxId)
  , x10_textureId(textureId)
  , x14_glowTextureId(glowTextureId)
  , x18_length(length)
  , x1c_radius(radius)
  , x20_expansionSpeed(expansionSpeed)
  , x24_lifeTime(lifeTime)
  , x28_pulseSpeed(pulseSpeed)
  , x2c_shutdownTime(shutdownTime)
  , x30_contactFxScale(contactFxScale)
  , x34_pulseFxScale(pulseFxScale)
  , x38_travelSpeed(travelSpeed)
  , x3c_innerColor(innerColor)
  , x40_outerColor(outerColor) {}

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
