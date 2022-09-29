#include "Kyoto/Math/CAABox.hpp"

#include "Kyoto/Math/CMath.hpp"

CVector3f CAABox::ClosestPointAlongVector(const CVector3f& vec) const {
  return CVector3f(CMath::FastFSel(vec.GetX(), min.GetX(), max.GetX()),
                   CMath::FastFSel(vec.GetY(), min.GetY(), max.GetY()),
                   CMath::FastFSel(vec.GetZ(), min.GetZ(), max.GetZ()));
}
