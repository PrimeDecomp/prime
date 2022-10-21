#ifndef _CAREAFOG_HPP
#define _CAREAFOG_HPP

#include "types.h"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CVector2f.hpp"

enum ERglFogMode {
  kRFM_None = GX_FOG_NONE,

  kRFM_PerspLin = GX_FOG_PERSP_LIN,
  kRFM_PerspExp = GX_FOG_PERSP_EXP,
  kRFM_PerspExp2 = GX_FOG_ORTHO_EXP2,
  kRFM_PerspRevExp = GX_FOG_PERSP_REVEXP,
  kRFM_PerspRevExp2 = GX_FOG_PERSP_REVEXP2,

  kRFM_OrthoLin = GX_FOG_ORTHO_LIN,
  kRFM_OrthoExp = GX_FOG_ORTHO_EXP,
  kRFM_OrthoExp2 = GX_FOG_ORTHO_EXP2,
  kRFM_OrthoRevExp = GX_FOG_ORTHO_REVEXP,
  kRFM_OrthoRevExp2 = GX_FOG_ORTHO_REVEXP2,
};

class CAreaFog {
private:
  ERglFogMode x0_fogMode;
  CVector2f x4_rangeCur;
  CVector2f xc_rangeTarget;
  CVector2f x14_rangeDelta;
  CColor x1c_colorCur;
  unkptr x20_;
  unkptr x24_;
  CColor x28_colorTarget;
  unkptr x2c_;
  unkptr x30_;
  float x34_colorDelta;

public:
  void SetCurrent() const;
  void Update(float dt);
  void RollFogOut(float rangeDelta, float colorDelta, const CColor& color);
  void FadeFog(ERglFogMode, const CColor& color, const CVector2f& vec1, float,
               const CVector2f& vec2);
  void SetFogExplicit(ERglFogMode mode, const CColor& color, const CVector2f& range);
  bool IsFogDisabled() const;
  void DisableFog();
};
CHECK_SIZEOF(CAreaFog, 0x38)

#endif
