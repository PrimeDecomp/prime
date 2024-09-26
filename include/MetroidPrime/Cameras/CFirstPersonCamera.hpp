#ifndef _CFIRSTPERSONCAMERA
#define _CFIRSTPERSONCAMERA

#include "MetroidPrime/Cameras/CGameCamera.hpp"

class CFirstPersonCamera : public CGameCamera {
public:
  CFirstPersonCamera(const TUniqueId& uid, const CTransform4f& xf, TUniqueId watchedObj,
                     float orbitCameraSpeed, float fov, float nearz, float farz, float aspect);

  // CEntity
  ~CFirstPersonCamera() override;
  void Accept(IVisitor& visitor) override;
  void PreThink(float dt, CStateManager& mgr) override;
  void Think(float dt, CStateManager& mgr) override;

  // CActor
  void Render(const CStateManager&) const override;

  // CGameCamera
  void ProcessInput(const CFinalInput& input, CStateManager& mgr) override;
  void Reset(const CTransform4f& xf, CStateManager& mgr) override;

  void SetScriptPitchId(TUniqueId uid) { x1c4_pitchId = uid; }
  // UpdateElevation__18CFirstPersonCameraFR13CStateManager
  // UpdateTransform__18CFirstPersonCameraFR13CStateManagerf
  const CTransform4f& GetGunFollowTransform() const;
  // SetLockCamera__18CFirstPersonCameraFb
  void CancelCinematicOffset();

private:
  float x188_orbitCameraSpeed;
  bool x18c_lockCamera;
  CTransform4f x190_gunFollowXf;
  float x1c0_pitch;
  TUniqueId x1c4_pitchId;
  bool x1c6_24_deferBallTransitionProcessing : 1;
  CVector3f x1c8_closeInVec;
  float x1d4_closeInTimer;
};

#endif // _CFIRSTPERSONCAMERA
