#ifndef MP1_CANIMMATHUTILS_HPP
#define MP1_CANIMMATHUTILS_HPP

#include "Kyoto/Math/CMath.hpp"

class CAnimMathUtils {
public:
  static CQuaternion Slerp(const CQuaternion& start, const CQuaternion& end, float t);
  static CQuaternion SlerpLocal(const CQuaternion& start, const CQuaternion& end, float t);
};
#endif // MP1_CANIMMATHUTILS_HPP
