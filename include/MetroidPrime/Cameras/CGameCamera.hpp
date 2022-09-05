#ifndef _CGAMECAMERA_HPP
#define _CGAMECAMERA_HPP

#include "types.h"

#include "MetroidPrime/CActor.hpp"

#include "Kyoto/Math/CMatrix4f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

class CGameCamera : public CActor {
public:
  ~CGameCamera() override;
  void Accept(IVisitor& visitor) override;
  // TODO

private:
  TUniqueId xe8_watchedObject;
  mutable CMatrix4f xec_perspectiveMatrix;
  CTransform4f x12c_origXf;
  f32 x15c_currentFov;
  f32 x160_znear;
  f32 x164_zfar;
  f32 x168_aspect;
  uint x16c_controllerIdx;
  mutable bool x170_24_perspDirty : 1;
  bool x170_25_disablesInput : 1;
  f32 x174_delayTime;
  f32 x178_perspInterpRemTime;
  f32 x17c_perspInterpDur;
  f32 x180_perspInterpStartFov;
  f32 x184_perspInterpEndFov;
};
CHECK_SIZEOF(CGameCamera, 0x188)

#endif