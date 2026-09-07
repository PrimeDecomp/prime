#ifndef _CANIMMATHUTILS
#define _CANIMMATHUTILS

#include "Kyoto/Math/CMath.hpp"

class CQuaternion;

class CAnimMathUtils {
public:
  static const float kInterpolationThreshold;
  static CQuaternion Slerp(const CQuaternion& start, const CQuaternion& end, float t);
  static CQuaternion SlerpLocal(const CQuaternion& start, const CQuaternion& end, float t);
};
#endif // _CANIMMATHUTILS
