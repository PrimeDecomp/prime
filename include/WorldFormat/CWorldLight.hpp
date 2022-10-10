#ifndef _CWORLDLIGHT
#define _CWORLDLIGHT


#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Graphics/CLight.hpp"

class CInputStream;
class CWorldLight {
  static const CVector3f kDefaultPosition;
  static const CVector3f kDefaultDirection;
public:

  enum EWorldLightType {
    kWLT_LocalAmbient,
    kWLT_Directional,
    kWLT_Custom,
    kWLT_Spot,
    kWLT_Spot2,
    kWLT_LocalAmbient2,
  };

  CWorldLight(CInputStream& in);


  CLight GetAsCGraphicsLight() const;
public:
  EWorldLightType x0_type;
  CVector3f x4_color;
  CVector3f x10_position;
  CVector3f x1c_direction;
  float x28_q;
  float x2c_cutoffAngle;
  float x30_;
  bool x34_castShadows;
  float x38_;
  EFallofType x3c_falloff;
  float x40_;
};


#endif // _CWORLDLIGHT
