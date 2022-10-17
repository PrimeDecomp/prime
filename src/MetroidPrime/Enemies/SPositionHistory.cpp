#include "MetroidPrime/Enemies/SPositionHistory.hpp"

SPositionHistory::SPositionHistory(float mag) : x0_magSquared(mag * mag) {}

void SPositionHistory::AddValue(const CVector3f& pos) {
  if (x4_values.size() >= 16) {
    return;
  }
  if (x4_values.empty()) {
    x4_values.push_back(pos);
    return;
  }
  CVector3f diff = pos - x4_values.back();
  if (diff.MagSquared() > x0_magSquared) {
    x4_values.push_back(pos);
  }
}

CVector3f SPositionHistory::GetValue(const CVector3f& pos, const CVector3f& face) {
  CVector3f result = CVector3f::Zero();

  while (!x4_values.empty()) {
    const CVector3f v = x4_values.back() - pos;
    if (CVector3f::Dot(v, face) > 0.f && v.IsMagnitudeSafe()) {
      result = v.AsNormalized();
      break;
    }
    x4_values.pop_back();
  }

  return result;
}
