#ifndef _CVECTOR2I
#define _CVECTOR2I

#include "types.h"

class CVector2i {
public:
  CVector2i(int, int);

  int GetX() const { return mX; }
  int GetY() const { return mY; }

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
