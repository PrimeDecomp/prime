#ifndef _CANIMMATHUTILS
#define _CANIMMATHUTILS

#include "Kyoto/Math/CQuaternion.hpp"

class CAnimMathUtils {
public:
  static CQuaternion Slerp(const CQuaternion& a, const CQuaternion& b, float t);
  static CQuaternion SlerpLocal(const CQuaternion& from, const CQuaternion& to, float t);
};

#endif // _CANIMMATHUTILS