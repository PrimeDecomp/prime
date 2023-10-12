#include "GuiSys/CGuiLight.hpp"
#include "GuiSys/CGuiFrame.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CGuiLight* CGuiLight::Create(CGuiFrame* parent, CInputStream& in, IObjectStore* sp) {
  CGuiWidgetParms parms = ReadWidgetHeader(parent, in);
  CColor color = parms.x10_color;
  ELightType type = (ELightType)in.ReadInt32();
  float distC = in.ReadFloat();
  float distL = in.ReadFloat();
  float distQ = in.ReadFloat();
  float angC = in.ReadFloat();
  float angL = in.ReadFloat();
  float angQ = in.ReadFloat();
  uint lightId = in.ReadInt32();

  CGuiLight* ret = nullptr;

  switch (type) {
  case kLT_Spot: {
    float cutoff = in.ReadFloat();
    CLight lt = CLight::BuildSpot(CVector3f::Zero(), CVector3f::Zero(), color, cutoff);
    lt.SetAttenuation(distC, distL, distQ);
    lt.SetAngleAttenuation(angC, angL, angQ);
    lt.SetLightId(lightId);

    ret = rs_new CGuiLight(parms, lt);
    break;
  }
  case kLT_Point: {
    CLight lt = CLight::BuildPoint(CVector3f::Zero(), color);
    lt.SetAttenuation(distC, distL, distQ);
    lt.SetLightId(lightId);
    ret = rs_new CGuiLight(parms, lt);
    break;
  }
  case kLT_Directional: {
    CLight lt = CLight::BuildDirectional(CVector3f::Zero(), color);
    lt.SetLightId(lightId);
    ret = rs_new CGuiLight(parms, lt);
    break;
  }
  default:
    break;
  }

  ret->ParseBaseInfo(parent, in, parms);
  parent->AddLight(ret);
  return ret;
}

CGuiLight::CGuiLight(const CGuiWidgetParms& parms, const CLight& light)
: CGuiWidget(parms)
, xb8_type(light.GetType())
, xbc_spotCutoff(light.GetSpotCutoff())
, xc0_distC(light.GetAttenuationConstant())
, xc4_distL(light.GetAttenuationLinear())
, xc8_distQ(light.GetAttenuationQuadratic())
, xcc_angleC(light.GetAngleAttenuationConstant())
, xd0_angleL(light.GetAngleAttenuationLinear())
, xd4_angleQ(light.GetAngleAttenuationQuadratic())
, xd8_lightId(light.GetId())
, xdc_ambColor(CColor::Black()) {}

CGuiLight::~CGuiLight() { GetFrame()->RemoveLight(this); }

void CGuiLight::SetIsVisible(const bool visible) {
  if (visible) {
    GetFrame()->AddLight(this);
  } else {
    GetFrame()->RemoveLight(this);
  }

  CGuiWidget::SetIsVisible(visible);
}

CLight CGuiLight::BuildLight() const {
  CLight ret = CLight::BuildLocalAmbient(CVector3f::Zero(), CColor(0.f, 0.f, 0.f));
  CVector3f pos = GetWorldPosition();
  CVector3f dir = GetWorldTransform().GetColumn(kDY);
  CColor color = GetColor();
  switch (xb8_type) {
  case kLT_Spot:
    ret = CLight::BuildSpot(pos, dir, color, xbc_spotCutoff);
    break;
  case kLT_Point:
    ret = CLight::BuildPoint(pos, color);
    break;
  case kLT_Directional:
    ret = CLight::BuildDirectional(dir, color);
    break;
  case kLT_Custom:
    ret = CLight::BuildCustom(pos, dir, color, xc0_distC, xc4_distL, xc8_distQ, xcc_angleC,
                              xd0_angleL, xd4_angleQ);
  default:
    break;
  }

  ret.SetAttenuation(xc0_distC, xc4_distL, xc8_distQ);
  ret.SetAngleAttenuation(xcc_angleC, xd0_angleL, xd4_angleQ);
  ret.SetLightId(xd8_lightId);
  return ret;
}

FourCC CGuiLight::GetWidgetTypeID() const {
  return 'LITE';
}
