#include <float.h>

#include "Kyoto/Graphics/CLight.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "rstl/math.hpp"

static const float gkEpsilon32 = FLT_EPSILON;

const CVector3f CLight::kDefaultPosition(0.f, 0.f, 0.f);
const CVector3f CLight::kDefaultDirection(0.f, -1.f, 0.f);

CLight::CLight(ELightType type, const CVector3f& position, const CVector3f& direction,
               const CColor& color, float cutoff)
: x0_pos(position)
, xc_dir(direction)
, x18_color(color)
, x1c_type(type)
, x20_spotCutoff(cutoff)
, x24_distC(0.f)
, x28_distL(1.f)
, x2c_distQ(0.f)
, x30_angleC(0.f)
, x34_angleL(1.f)
, x38_angleQ(0.f)
, x3c_priority(0)
, x40_lightId(0)
, x44_cachedRadius(0.f)
, x48_cachedIntensity(0.f)
, x4c_24_intensityDirty(true)
, x4c_25_radiusDirty(true) {}

CLight::CLight(const CVector3f& position, const CVector3f& direction, const CColor& color,
               float distC, float distL, float distQ, float angleC, float angleL, float angleQ)
: x0_pos(position)
, xc_dir(direction)
, x18_color(color)
, x1c_type(kLT_Custom)
, x20_spotCutoff(0.f)
, x24_distC(distC)
, x28_distL(distL)
, x2c_distQ(distQ)
, x30_angleC(angleC)
, x34_angleL(angleL)
, x38_angleQ(angleQ)
, x3c_priority(0)
, x40_lightId(0)
, x44_cachedRadius(0.f)
, x48_cachedIntensity(0.f)
, x4c_24_intensityDirty(true)
, x4c_25_radiusDirty(true) {}

CLight CLight::BuildLocalAmbient(const CVector3f& pos, const CColor& col) {
  return CLight(kLT_LocalAmbient, pos, kDefaultDirection, col, 180.f);
}


CLight CLight::BuildDirectional(const CVector3f& direction, const CColor& col) {
  return CLight(kLT_Directional, kDefaultPosition, direction, col, 180.f);
}


CLight CLight::BuildPoint(const CVector3f& pos, const CColor& color) {
  return CLight(kLT_Point, pos, kDefaultDirection, color, 180.f);
}

CLight CLight::BuildSpot(const CVector3f& pos, const CVector3f& dir, const CColor& color,
                         float cutoff) {
  return CLight(kLT_Spot, pos, dir, color, cutoff);
}

CLight CLight::BuildCustom(const CVector3f& pos, const CVector3f& dir, const CColor& color,
                           float distC, float distL, float distQ, float angleC, float angleL,
                           float angleQ) {
  return CLight(pos, dir, color, distC, distL, distQ, angleC, angleL, angleQ);
}


void CLight::SetAttenuation(float constant, float linear, float quadratic) {
  x24_distC = constant;
  x28_distL = linear;
  x2c_distQ = quadratic;
  x4c_25_radiusDirty = true;
  x4c_24_intensityDirty = true;
}


void CLight::SetAngleAttenuation(float constant, float linear, float quadratic) {
  x30_angleC = constant;
  x34_angleL = linear;
  x38_angleQ = quadratic;
  x4c_25_radiusDirty = true;
  x4c_24_intensityDirty = true;
}

void CLight::SetColor(const CColor& col) {
  x18_color = col;
  x4c_25_radiusDirty = true;
  x4c_24_intensityDirty = true;
}

void CLight::SetPosition(const CVector3f& position) { x0_pos = position; }

void CLight::SetDirection(const CVector3f& direction) { xc_dir = direction; }

float CLight::GetRadius() const {
  if (x4c_25_radiusDirty) {
    x44_cachedRadius = CalculateLightRadius();
    x4c_25_radiusDirty = false;
  }
  return x44_cachedRadius;
}


float CLight::CalculateLightRadius() const {
  if (x28_distL < gkEpsilon32 && x2c_distQ < gkEpsilon32) {
    return 3.0E36f;
  }

  float intensity = GetIntensity();
  float ret = 0.f;
  if (x2c_distQ > gkEpsilon32) {
    const float mulVal = rstl::min_val(0.05882353f, 0.2f); // Yes, retro really did do this
    if (intensity > gkEpsilon32) {
      ret = CMath::SqrtF(intensity / (mulVal * x2c_distQ));
    }
  } else {
    const float mulVal = rstl::min_val(0.05882353f, 0.2f); // See above comment
    if (x28_distL > gkEpsilon32) {
      ret = intensity / (mulVal * x28_distL);
    }
  }

  return ret;
}

float CLight::GetIntensity() const {
  if (x4c_24_intensityDirty) {
    x4c_24_intensityDirty = false;
    float coef = 1.f;
    if (x1c_type == kLT_Custom) {
      coef = x30_angleC;
    }
    x48_cachedIntensity =
        coef *
        rstl::max_val(x18_color.GetRed(), rstl::max_val(x18_color.GetGreen(), x18_color.GetBlue()));
  }
  return x48_cachedIntensity;
}
// Hack for float ordering
static void StrippedFunc() {
  static float f1 = -1.f;
  static float f2 = 0.f;
}

CVector3f CLight::GetNormalIndependentLightingAtPoint(const CVector3f& point) const {
  CVector3f floatCol(x18_color.GetRed(), x18_color.GetGreen(), x18_color.GetBlue());
  if (x1c_type == kLT_LocalAmbient)
    return floatCol;

  float dist = rstl::max_val((x0_pos - point).Magnitude(), gkEpsilon32);
  return floatCol * (1.f / (dist * (x2c_distQ * dist) + (x28_distL * dist + x24_distC)));
}
