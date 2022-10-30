#ifndef _CBONETRACKING
#define _CBONETRACKING

#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/optional_object.hpp"

enum EBoneTrackingFlags {
  kBTF_None = 0,
  kBTF_NoParent = 1,
  kBTF_NoParentOrigin = 2,
  kBTF_NoHorizontalAim = 4,
  kBTF_ParentIk = 8,
};

class CBoneTracking {
public:
  CBoneTracking(const CAnimData& animData, const rstl::string& bone, float maxTrackingAngle,
                float angSpeed, EBoneTrackingFlags flags);

  void SetActive(bool v);

private:
  CQuaternion x0_rotation;
  float x10_;
  CSegId x14_segId;
  float x18_time;
  float x1c_maxTrackingAngle;
  float x20_angSpeed;
  rstl::optional_object< CVector3f > x24_targetPosition;
  TUniqueId x34_target;
  uchar x36_flags;
};

#endif // _CBONETRACKING
