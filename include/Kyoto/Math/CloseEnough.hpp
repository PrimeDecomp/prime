#ifndef _CLOSEENOUGH
#define _CLOSEENOUGH

#include "types.h"

#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "math.h"

struct Real32 {
  static inline float Epsilon() { return FLT_EPSILON; }
};
struct Double {
  static inline double Epsilon() { return DBL_EPSILON; }
};
static inline float vector3_epsilon() { return FLT_EPSILON; }
static inline float vector2_epsilon() { return FLT_EPSILON; }

bool close_enough(const CVector2f& a, const CVector2f& b, float epsilon = vector2_epsilon());
bool close_enough(const CVector3f& a, const CVector3f& b, float epsilon = vector3_epsilon());
inline bool close_enough(float a, float b, float epsilon = Real32::Epsilon()) {
  return fabs(a - b) < epsilon;
}
inline bool close_enough(double a, double b, double epsilon = Double::Epsilon()) {
  return fabs(a - b) < epsilon;
}

#endif // _CLOSEENOUGH
