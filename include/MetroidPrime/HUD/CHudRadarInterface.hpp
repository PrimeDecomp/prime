#ifndef _CHUDRADARINTERFACE
#define _CHUDRADARINTERFACE

#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/TToken.hpp"
#include "types.h"

class CGuiFrame;
class CGuiWidget;
class CGuiModel;
class CGuiTextPane;
class CGuiCamera;
class CAuiEnergyBarT01;
class CAuiMeter;
class CStateManager;

class CTexture;
class CHudRadarInterface {
public:
  CHudRadarInterface(CGuiFrame& frame, const CStateManager& mgr);
  void SetIsVisibleGame(bool visible);
  void Update(float dt, const CStateManager& mgr);
  void Draw(const CStateManager& mgr, float alpha) const;

private:
  enum ERadarMode { kRM_Three = 3, kRM_Four = 4 };
  static bool IsWidgetVisibleMode(ERadarMode mode) {
    return mode == kRM_Three || mode == kRM_Four;
  }

  struct SRadarPaintDrawParms {
    SRadarPaintDrawParms(const CVector3f& playerPos, const CTransform4f& preTranslate,
                        const CTransform4f& postTranslate, float scopeRadius, float scopeScalar,
                        float alpha, float xyRadius, float zRadius, float zCloseRadius)
    : x0_playerPos(playerPos)
    , xc_preTranslate(preTranslate)
    , x3c_postTranslate(postTranslate)
    , x6c_scopeRadius(scopeRadius)
    , x70_scopeScalar(scopeScalar)
    , x74_alpha(alpha)
    , x78_xyRadius(xyRadius)
    , x7c_zRadius(zRadius)
    , x80_zCloseRadius(zCloseRadius) {}

    CVector3f x0_playerPos;
    CTransform4f xc_preTranslate;
    CTransform4f x3c_postTranslate;
    float x6c_scopeRadius;
    float x70_scopeScalar;
    float x74_alpha;
    float x78_xyRadius;
    float x7c_zRadius;
    float x80_zCloseRadius;
    uchar x84_pad[4];
  };

  void DoDrawRadarPaint(float radius) const;
  void DrawRadarPaint(const CVector3f& enemyPos, float radius, float alpha,
                     const SRadarPaintDrawParms& parms) const;

  TCachedToken< CTexture > x0_txtrRadarPaint;
  CTransform4f xc_radarStuffXf;
  bool x3c_24_visibleGame : 1;
  bool x3c_25_visibleDebug : 1;
  CGuiWidget* x40_BaseWidget_RadarStuff;
  CGuiCamera* x44_camera;
};
CHECK_SIZEOF(CHudRadarInterface, 0x48)

#endif // _CHUDRADARINTERFACE
