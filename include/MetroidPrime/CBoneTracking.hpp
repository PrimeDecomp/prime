#ifndef _CBONETRACKING
#define _CBONETRACKING

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/string.hpp"

enum EBoneTrackingFlags {
  kBTF_None = 0,
  kBTF_NoParent = 1,
  kBTF_NoParentOrigin = 2,
  kBTF_NoHorizontalAim = 4,
  kBTF_ParentIk = 8,
};

class CAnimData;
class CStateManager;
class CTransform4f;
class CBodyController;

class CBoneTracking {
public:
  CBoneTracking(const CAnimData& animData, const rstl::string& bone, float maxTrackingAngle,
                float angSpeed, EBoneTrackingFlags flags);

  void Update(const float dt);
  void PreRender(const CStateManager& mgr, CAnimData& animData, const CTransform4f& xf,
                 const CVector3f& scale, const CBodyController& controller);
  void PreRender(const CStateManager& mgr, CAnimData& animData, const CTransform4f& xf,
                 const CVector3f& scale, const bool tracking);
  void SetActive(const bool v);
  void SetTarget(const TUniqueId uid);
  void UnsetTarget();
  void SetTargetPosition(const CVector3f& target);
  void SetNoHorizontalAim(const bool aim);

private:
  CQuaternion x0_rotation;
  float x10_;
  CSegId x14_segId;
  float x18_time;
  float x1c_maxTrackingAngle;
  float x20_angSpeed;
  rstl::optional_object< CVector3f > x24_targetPosition;
  TUniqueId x34_target;
  bool x36_24_active : 1;
  bool x36_25_hasTrackedRotation : 1;
  bool x36_26_noParent : 1;
  bool x36_27_noParentOrigin : 1;
  bool x36_28_noHorizontalAim : 1;
  bool x36_29_parentIk : 1;
};

#endif // _CBONETRACKING
