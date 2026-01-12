#ifndef _CSEGSTATEMENT
#define _CSEGSTATEMENT

#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include <types.h>

struct CSegStatement {
public:
  void SetStatus(uint status) { mStatus = status; }

public:
  CQuaternion mRotation;
  CVector3f mOffset;
  uint mStatus; // 0 free, 1 used
};

#endif // _CSEGSTATEMENT
