#ifndef _CGAMECAMERA
#define _CGAMECAMERA

#include "types.h"

#include "MetroidPrime/CActor.hpp"

#include "Kyoto/Math/CMatrix4f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

class CFinalInput;

class CGameCamera : public CActor {
public:
  CGameCamera(TUniqueId uid, bool active, const rstl::string& name, const CEntityInfo& info,
              const CTransform4f& xf, float fov, float nearZ, float farZ, float aspect,
              TUniqueId watchedId, bool disableInput, int controllerIdx);

  // CEntity
  ~CGameCamera() override;
  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;
  void SetActive(const bool active) override;

  // CGameCamera
  virtual void ProcessInput(const CFinalInput&, CStateManager& mgr) = 0;
  virtual void Reset(const CTransform4f&, CStateManager& mgr) = 0;

  TUniqueId GetWatchedObject() const { return xe8_watchedObject; }
  float GetFov() const { return x15c_currentFov; }
  void SetFov(float fov) { x15c_currentFov = fov; }
  float GetNearClipDistance() const { return x160_znear; }
  void SetFovInterpolation(float start, float fov, float time, float delayTime);
  void UpdatePerspective(float dt);

protected:
  TUniqueId xe8_watchedObject;
  mutable CMatrix4f xec_perspectiveMatrix;
  CTransform4f x12c_origXf;
  float x15c_currentFov;
  float x160_znear;
  float x164_zfar;
  float x168_aspect;
  uint x16c_controllerIdx;
  mutable bool x170_24_perspDirty : 1;
  bool x170_25_disablesInput : 1;
  float x174_delayTime;
  float x178_perspInterpRemTime;
  float x17c_perspInterpDur;
  float x180_perspInterpStartFov;
  float x184_perspInterpEndFov;
};
CHECK_SIZEOF(CGameCamera, 0x188)

#endif // _CGAMECAMERA
