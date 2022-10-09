#ifndef _CCAMERAFILTERPASS
#define _CCAMERAFILTERPASS

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/auto_ptr.hpp"

class CTexture;

class CCameraFilterPass {
public:
  enum EFilterType {
    kFT_Passthru,
    kFT_Multiply,
    kFT_Invert,
    kFT_Add,
    kFT_Subtract,
    kFT_Blend,
    kFT_Widescreen,
    kFT_SceneAdd,
    kFT_NoColor,
    kFT_InvDstMultiply,
  };
  enum EFilterShape {
    kFS_Fullscreen,
    kFS_FullscreenHalvesLeftRight,
    kFS_FullscreenHalvesTopBottom,
    kFS_FullscreenQuarters,
    kFS_CinemaBars,
    kFS_ScanLinesEven,
    kFS_ScanLinesOdd,
    kFS_RandomStatic,
    kFS_CookieCutterDepthRandomStatic
  };

  void SetFilter(EFilterType type, EFilterShape shape, float time, const CColor& color,
                 CAssetId txtr);
  void DisableFilter(float time);

  static void DrawWideScreen(const CColor& color, const CTexture* tex, f32 v);

private:
  EFilterType x0_curType;
  EFilterType x4_nextType;
  EFilterShape x8_shape;
  float xc_duration;
  float x10_remTime;
  CColor x14_prevColor;
  CColor x18_curColor;
  CColor x1c_nextColor;
  CAssetId x20_nextTxtr;
  rstl::auto_ptr< TLockedToken< CTexture > > x24_texObj;
};
CHECK_SIZEOF(CCameraFilterPass, 0x2c)

#endif // _CCAMERAFILTERPASS
