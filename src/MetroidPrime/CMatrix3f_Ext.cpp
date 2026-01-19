#include <Kyoto/Math/CMatrix3f.hpp>

CMatrix3f CMatrix3f::FromTransform(const CTransform4f& xf) {
  return CMatrix3f(xf.GetRow(kDX), xf.GetRow(kDY), xf.GetRow(kDZ));
}