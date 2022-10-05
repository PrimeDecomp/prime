#include "Kyoto/Math/CloseEnough.hpp"

static CVector2f svector2_Identity(0.f, 0.f);

bool close_enough(const CVector3f& a, const CVector3f& b, float epsilon) {
  return close_enough(a.GetX(), b.GetX(), epsilon) && close_enough(a.GetY(), b.GetY(), epsilon) &&
         close_enough(a.GetZ(), b.GetZ(), epsilon);
}

bool close_enough(const CVector2f& a, const CVector2f& b, float epsilon) {
  return close_enough(a.GetX(), b.GetX(), epsilon) && close_enough(a.GetY(), b.GetY(), epsilon);
}
