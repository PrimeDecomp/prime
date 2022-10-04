#include "Kyoto/Math/CVector2i.hpp"

CVector2i::CVector2i(int x, int y) : mX(x), mY(y) {}

CVector2i operator+(const CVector2i& lhs, const CVector2i& rhs) {
  return CVector2i(lhs.GetX() + rhs.GetX(), lhs.GetY() + rhs.GetY());
}

CVector2i operator-(const CVector2i& lhs, const CVector2i& rhs) {
  return CVector2i(lhs.GetX() - rhs.GetX(), lhs.GetY() - rhs.GetY());
}

bool operator==(const CVector2i& lhs, const CVector2i& rhs) {
  return lhs.GetX() == rhs.GetX() && lhs.GetY() == rhs.GetY();
}

CVector2i operator*(const CVector2i& lhs, int rhs) {
  return CVector2i(lhs.GetX() * rhs, lhs.GetY() * rhs);
}

CVector2i operator/(const CVector2i& lhs, int rhs) {
  return CVector2i(lhs.GetX() / rhs, lhs.GetY() / rhs);
}
