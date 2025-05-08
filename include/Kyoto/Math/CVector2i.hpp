#ifndef _CVECTOR2I
#define _CVECTOR2I

#include "Kyoto/Streams/CInputStream.hpp"
#include "types.h"

class CVector2i {
public:
  CVector2i(int x = 0, int y = 0);
  CVector2i(CInputStream& in) {
    mX = in.ReadLong();
    mY = in.ReadLong();
  }

  int GetX() const { return mX; }
  void SetX(const int x) { mX = x; }
  int GetY() const { return mY; }
  void SetY(const int y) { mY = y; }

  int& operator[](int idx) { return *(&mX + idx); }
  const int& operator[](int idx) const { return *(&mX + idx); }

private:
  int mX;
  int mY;
};

CVector2i operator+(const CVector2i& lhs, const CVector2i& rhs);
CVector2i operator+(const CVector2i& lhs, const CVector2i& rhs);
bool operator==(const CVector2i& lhs, const CVector2i& rhs);
CVector2i operator*(const CVector2i& lhs, int rhs);
CVector2i operator/(const CVector2i& lhs, int rhs);

#endif // _CVECTOR2I
