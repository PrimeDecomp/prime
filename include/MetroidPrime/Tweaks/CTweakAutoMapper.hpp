#ifndef _CTWEAKAUTOMAPPER
#define _CTWEAKAUTOMAPPER

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TOneStatic.hpp"

#include "rstl/reserved_vector.hpp"

class CInputStream;
class CTweakAutoMapper;
class CTweakAutoMapper : public ITweakObject, public TOneStatic< CTweakAutoMapper > {
public:
  ~CTweakAutoMapper();
  CTweakAutoMapper(CInputStream&);

  const CColor& GetDoorColor(int idx) const { return x100_doorColors[idx]; }
  const CColor& GetOpenDoorColor() const { return x11c_openDoorColor; }
  const CVector3f& GetDoorCenter() const {
    return CVector3f(xa4_doorCenterA, xa8_doorCenterB, xac_doorCenterC);
  }

private:
  bool x4_24_showOneMiniMapArea : 1;
  bool x4_25_ : 1;
  bool x4_26_scaleMoveSpeedWithCamDist : 1;
  float x8_camDist;
  float xc_minCamDist;
  float x10_maxCamDist;
  float x14_minCamRotateX;
  float x18_maxCamRotateX;
  float x1c_camAngle;
  float x20_;
  CColor x24_automapperWidgetColor;
  float x28_miniCamDist;
  float x2c_miniCamXAngle;
  float x30_miniCamAngle;
  float x34_;
  CColor x38_automapperWidgetMiniColor;
  CColor x3c_surfColorVisited;
  CColor x40_outlineColorVisited;
  CColor x44_surfColorUnvisited;
  CColor x48_outlineColorUnvisited;
  CColor x4c_surfaceSelectColorVisited;
  CColor x50_outlineSelectColorVisited;
  float x54_mapSurfaceNormColorLinear;
  float x58_mapSurfaceNormColorConstant;
  float x5c_;
  float x60_;
  float x64_openMapScreenTime;
  float x68_closeMapScreenTime;
  float x6c_hintPanTime;
  float x70_zoomUnitsPerFrame;
  float x74_rotateDegPerFrame;
  float x78_baseMapScreenCameraMoveSpeed;
  CColor x7c_surfaceSelectColorUnvisited;
  CColor x80_outlineSelectColorUnvisited;
  float x84_miniAlphaSurfaceVisited;
  float x88_alphaSurfaceVisited;
  float x8c_miniAlphaOutlineVisited;
  float x90_alphaOutlineVisited;
  float x94_miniAlphaSurfaceUnvisited;
  float x98_alphaSurfaceUnvisited;
  float x9c_miniAlphaOutlineUnvisited;
  float xa0_alphaOutlineUnvisited;
  float xa4_doorCenterA;
  float xa8_doorCenterB;
  float xac_doorCenterC;
  float xb0_;
  float xb4_;
  float xb8_miniMapViewportWidth;
  float xbc_miniMapViewportHeight;
  float xc0_miniMapCamDistScale;
  float xc4_mapPlaneScaleX;
  float xc8_mapPlaneScaleZ;
  bool xcc_;
  float xd0_universeCamDist;
  float xd4_minUniverseCamDist;
  float xd8_maxUniverseCamDist;
  float xdc_switchToFromUniverseTime;
  float xe0_camPanUnitsPerFrame;
  float xe4_automapperScaleX;
  float xe8_automapperScaleZ;
  float xec_camVerticalOffset;
  CColor xf0_miniMapSamusModColor;
  CColor xf4_areaFlashPulseColor;
  CColor xf8_;
  CColor xfc_;
  rstl::reserved_vector< CColor, 5 > x100_doorColors;
  CColor x118_doorBorderColor;
  CColor x11c_openDoorColor;
};
CHECK_SIZEOF(CTweakAutoMapper, 0x120)

extern CTweakAutoMapper* gpTweakAutoMapper;
extern "C" int lbl_805A8EB0;

#endif // _CTWEAKAUTOMAPPER
