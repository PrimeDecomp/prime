#ifndef _CBONETRACKING
#define _CBONETRACKING

#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/optional_object.hpp"
class CBoneTracking {
private:
  CQuaternion x0_rotation;
  float x10_;
  CSegId x14_segId;
  float x18_time;
  float x1c_maxTrackingAngle;
  float x20_angSpeed;
  rstl::optional_object<CVector3f> x24_targetPosition;
  TUniqueId x34_target;
  uchar x36_flags;
};

#endif // _CBONETRACKING
