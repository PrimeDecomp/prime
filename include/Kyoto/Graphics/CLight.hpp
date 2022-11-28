#ifndef _CLIGHT
#define _CLIGHT

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CVector3f.hpp"

enum ELightType {
  kLT_Spot = 0,
  kLT_Point = 1,
  kLT_Directional = 2,
  kLT_LocalAmbient = 3,
  kLT_Custom = 4,
};

enum EFalloffType { kFT_Constant, kFT_Linear, kFT_Quadratic };

class CLight {
  static const CVector3f kDefaultPosition;
  static const CVector3f kDefaultDirection;

  float CalculateLightRadius() const;

public:
  CLight(ELightType type, const CVector3f& position, const CVector3f& direction,
         const CColor& color, float cutoff);
  CLight(const CVector3f& pos, const CVector3f& direction, const CColor& color, float distC,
         float distL, float distQ, float angleC, float angleL, float angleQ);
  CLight(const CLight&);

  void SetPosition(const CVector3f& pos);
  const CVector3f& GetPosition() const { return x0_pos; }
  void SetDirection(const CVector3f& dir);
  const CVector3f& GetDirection() const { return xc_dir; }
  void SetColor(const CColor& col);
  void SetAttenuation(float constant, float linear, float quadratic);
  float GetSpotCutoff() const { return x20_spotCutoff; }
  float GetAttenuationConstant() const { return x24_distC; }
  float GetAttenuationLinear() const { return x28_distL; }
  float GetAttenuationQuadratic() const { return x2c_distQ; }

  void SetAngleAttenuation(float constant, float linear, float quadratic);
  float GetAngleAttenuationConstant() const { return x30_angleC; }
  float GetAngleAttenuationLinear() const { return x34_angleL; }
  float GetAngleAttenuationQuadratic() const { return x38_angleQ; }

  ELightType GetType() const { return x1c_type; }
  uint GetId() const { return x40_lightId; }
  float GetIntensity() const;
  float GetRadius() const;
  const CColor& GetColor() const { return x18_color; }

  int GetPriority() const { return x3c_priority; }
  void SetPriority(uint priority) { x3c_priority = priority; }
  void SetLightId(uint lightId) { x40_lightId = lightId; }

  CVector3f GetNormalIndependentLightingAtPoint(const CVector3f& point) const;

  static CLight BuildDirectional(const CVector3f& dir, const CColor& color);
  static CLight BuildSpot(const CVector3f& pos, const CVector3f& dir, const CColor& color,
                          float cutoff);
  static CLight BuildPoint(const CVector3f& pos, const CColor& color);
  static CLight BuildCustom(const CVector3f& pos, const CVector3f& dir, const CColor& color,
                            float distC, float distL, float distQ, float angleC, float angleL,
                            float angleQ);
  static CLight BuildLocalAmbient(const CVector3f& pos, const CColor& color);

private:
  CVector3f x0_pos;
  CVector3f xc_dir;
  CColor x18_color;
  ELightType x1c_type;
  float x20_spotCutoff;
  float x24_distC;
  float x28_distL;
  float x2c_distQ;
  float x30_angleC;
  float x34_angleL;
  float x38_angleQ;
  int x3c_priority;
  uint x40_lightId;
  mutable float x44_cachedRadius;
  mutable float x48_cachedIntensity;
  mutable bool x4c_24_intensityDirty : 1;
  mutable bool x4c_25_radiusDirty : 1;
};
CHECK_SIZEOF(CLight, 0x50)

#endif // _CLIGHT
