#ifndef _NORMALTABLE
#define _NORMALTABLE

#include "Kyoto/Math/CVector3f.hpp"

static const CVector3f normalTable[6] = {
  CVector3f(-1.f, 0.f, 0.f),
  CVector3f(1.f, 0.f, 0.f),
  CVector3f(0.f, -1.f, 0.f),
  CVector3f(0.f, 1.f, 0.f),
  CVector3f(0.f, 0.f, -1.f),
  CVector3f(0.f, 0.f, 1.f),
};

#endif // _NORMALTABLE
