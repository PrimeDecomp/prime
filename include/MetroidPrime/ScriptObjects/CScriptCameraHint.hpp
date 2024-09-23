#ifndef _CSCRIPTCAMERAHINT
#define _CSCRIPTCAMERAHINT

#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/Cameras/CBallCamera.hpp"
#include "MetroidPrime/Cameras/CCameraHint.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CTransform4f.hpp"

#include "rstl/reserved_vector.hpp"

class CCameraSpring;

class CScriptCameraHint : public CActor {
public:
  CScriptCameraHint(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                    const CTransform4f& xf, bool active, int priority,
                    CBallCamera::EBallCameraBehaviour behavior, int overrideFlags, float minDist,
                    float maxDist, float backwardsDist, const CCameraSpring&, const CCameraSpring&,
                    float, const CVector3f&, const CVector3f&, float);

  // CEntity
  ~CScriptCameraHint() override;
  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;

  // GetOverrideFlags__17CScriptCameraHintCFv
  // GetBehaviourType__17CScriptCameraHintCFv
  int GetPriority() const { return xe8_priority; }
  // OverrideCameraInfo__17CScriptCameraHintFP11CBallCamera

private:
  int xe8_priority;
  CCameraHint xec_hint;
  rstl::reserved_vector< TUniqueId, 8 > x150_helpers;
  TUniqueId x164_delegatedCamera;
  bool x166_inactive;
  CTransform4f x168_origXf;
};
CHECK_SIZEOF(CScriptCameraHint, 0x198)

#endif // _CSCRIPTCAMERAHINT
