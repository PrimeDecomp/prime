#include "WorldFormat/CWorldLight.hpp"

#include "Kyoto/Streams/CInputStream.hpp"
#include <rstl/math.hpp>

const CVector3f CWorldLight::kDefaultPosition = CVector3f(0.f, 0.f, 0.f);
const CVector3f CWorldLight::kDefaultDirection = CVector3f(0.f, 1.f, 0.f);

CWorldLight::CWorldLight(CInputStream& in)
: x0_type(static_cast< EWorldLightType >(in.Get< uint >()))
, x4_color(in)
, x10_position(in)
, x1c_direction(in)
, x28_q(in.Get< float >())
, x2c_cutoffAngle(in.Get< float >())
, x30_(in.Get< float >())
, x34_castShadows(in.Get< bool >())
, x38_(in.Get< float >())
, x3c_falloff(static_cast< EFalloffType >(in.Get< uint >()))
, x40_(in.Get< float >()) {}

CLight CWorldLight::GetAsCGraphicsLight() const {
  CVector3f floatColor = x4_color;
  CColor color(floatColor[0], floatColor[1], floatColor[2]);

  float q = x28_q;
  if (x28_q < FLT_EPSILON) {
    q = 10.f * FLT_EPSILON;
  }

  if (x0_type == kWLT_LocalAmbient) {
    floatColor *= q;

    floatColor[0] = rstl::min_val(1.f, floatColor[0]);
    floatColor[1] = rstl::min_val(1.f, floatColor[1]);
    floatColor[2] = rstl::min_val(1.f, floatColor[2]);
    CColor ambientColor(floatColor[0], floatColor[1], floatColor[2]);

    return CLight::BuildLocalAmbient(x10_position, ambientColor);
  }

  if (x0_type == kWLT_Directional) {
    return CLight::BuildDirectional(x1c_direction, color);
  }

  if (x0_type == kWLT_Spot) {
    CLight light =
        CLight::BuildSpot(x10_position, x1c_direction.AsNormalized(), color, x2c_cutoffAngle / 2.f);
    float quadratic = x3c_falloff == kFT_Quadratic ? (25000.0f / q) : 0.f;
    float linear = x3c_falloff == kFT_Linear ? ((1.f / 0.004f) / q) : 0.f;
    float constant = x3c_falloff == kFT_Constant ? (2.0f / q) : 0.f;

    light.SetAttenuation(constant, linear, quadratic);
    return light;
  }

  float quadratic = x3c_falloff == kFT_Quadratic ? (25000.0f / q) : 0.f;
  float linear = x3c_falloff == kFT_Linear ? ((1.f / 0.004f) / q) : 0.f;
  float constant = x3c_falloff == kFT_Constant ? (2.0f / q) : 0.f;
  return CLight::BuildCustom(x10_position, CVector3f(1.f, 0.f, 0.f), color, constant, linear,
                             quadratic, 1.f, 0.f, 0.f);
}
