#include "WorldFormat/CWorldLight.hpp"

#include "Kyoto/Streams/CInputStream.hpp"
// #include <hacks.h>
#include <rstl/math.hpp>

const CVector3f CWorldLight::kDefaultPosition = CVector3f(0.f, 0.f, 0.f);
// FORCEPADDING(sizeof(CVector3f)) kPadding;
const CVector3f CWorldLight::kDefaultDirection = CVector3f(0.f, 1.f, 0.f);

CWorldLight::CWorldLight(CInputStream& in)
: x0_type((EWorldLightType)in.Get< uint >())
, x4_color(in)
, x10_position(in)
, x1c_direction(in)
, x28_q(in.Get< float >())
, x2c_cutoffAngle(in.Get< float >())
, x30_(in.Get< float >())
, x34_castShadows(in.Get< bool >())
, x38_(in.Get< float >())
, x3c_falloff((EFallofType)in.Get< uint >())
, x40_(in.Get< float >()) {}

CLight CWorldLight::GetAsCGraphicsLight() const {
  float R = x4_color.GetX();
  float G = x4_color.GetY();
  float B = x4_color.GetZ();
  CColor color(R, G, B);

  float q = x28_q < FLT_EPSILON ? 0.000001f : x28_q;
  if (x0_type == kWLT_LocalAmbient) {
    R *= q;
    G *= q;
    B *= q;

    R = rstl::min_val(1.f, R);
    G = rstl::min_val(1.f, G);
    B = rstl::min_val(1.f, B);
    return CLight::BuildLocalAmbient(x10_position, CColor(R, G, B));
  }
  if (x0_type == kWLT_Directional) {
    return CLight::BuildDirectional(x10_position, color);
  }
  if (x0_type == kWLT_Spot) {
    CLight light =
        CLight::BuildSpot(x10_position, x1c_direction.AsNormalized(), color, x2c_cutoffAngle * .5f);
    float quadratic = x3c_falloff == kFT_Quadratic ? (25000.0f / q) : 0.f;
    float linear = x3c_falloff == kFT_Linear ? (250.f / q) : 0.f;
    float constant = x3c_falloff == kFT_Constant ? (2.0f / q) : 0.f;

    light.SetAttenuation(constant, linear, quadratic);
    return light;
  }
  float quadratic = x3c_falloff == kFT_Quadratic ? (25000.0f / q) : 0.f;
  float linear = x3c_falloff == kFT_Linear ? (250.f / q) : 0.f;
  float constant = x3c_falloff == kFT_Constant ? (2.0f / q) : 0.f;
  return CLight::BuildCustom(x10_position, CVector3f(1.f, 0.f, 0.f), color, constant, linear,
                             quadratic, 1.f, 0.f, 0.f);
}
