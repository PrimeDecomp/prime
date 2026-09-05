#ifndef _CSEGSTATEMENT
#define _CSEGSTATEMENT

#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include <types.h>

struct CSegStatement {
public:
  void SetStatus(uint status) { mStatus = status; }

  void Set(const CVector3f& offset) {
    mOffset = offset;
    mStatus = 1;
  }

public:
  CQuaternion mRotation;
  CVector3f mOffset;
  uint mStatus; // 0 free, 1 used
};

#endif // _CSEGSTATEMENT
