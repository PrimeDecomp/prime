#ifndef _CVECTOR2I
#define _CVECTOR2I

#include "types.h"

class CVector2i {
public:
  CVector2i(int x, int y);

  int GetX() const { return mX; }
  int GetY() const { return mY; }

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
