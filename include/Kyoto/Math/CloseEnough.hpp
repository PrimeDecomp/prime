#ifndef __CLOSEENOUGH_HPP__
#define __CLOSEENOUGH_HPP__

#include "types.h"

#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "math.h"

static bool close_enough(const CVector2f& a, const CVector2f& b, f32 epsilon = 0.001f);
static bool close_enough(const CVector3f& a, const CVector3f& b, f32 epsilon = 0.001f);
inline bool close_enough(float a, float b, f32 epsilon = 0.001f) {
  return fabs(a - b) < epsilon;
}

#endif // __CLOSEENOUGH_HPP__
