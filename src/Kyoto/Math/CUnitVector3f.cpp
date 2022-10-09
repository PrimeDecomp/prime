#include "Kyoto/Math/CUnitVector3f.hpp"

CUnitVector3f::CUnitVector3f(const CVector3f& vec)
: CVector3f(vec.IsNonZero() ? vec.AsNormalized() : CVector3f::Zero()) {}
