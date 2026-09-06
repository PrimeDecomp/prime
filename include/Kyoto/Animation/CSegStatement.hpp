#ifndef _CSEGSTATEMENT
#define _CSEGSTATEMENT

#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include <types.h>

struct CSegStatement {
public:
  CSegStatement() : mStatus(0) {}
  CQuaternion GetOrientation() const { return Orientation(); }
  CVector3f GetOffset() const { return Offset(); }
  CQuaternion& Orientation() { return mRotation; }
  const CQuaternion& Orientation() const { return mRotation; }
  CVector3f& Offset() { return mOffset; }
  const CVector3f& Offset() const { return mOffset; }
  bool OffsetValid() const { return mStatus != 0; }
  void Set(const CQuaternion& rotation) { Orientation() = rotation; }

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
CHECK_SIZEOF(CSegStatement, 0x20)

#endif // _CSEGSTATEMENT
