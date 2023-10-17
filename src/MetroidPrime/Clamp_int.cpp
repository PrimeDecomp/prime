#include <Kyoto/Math/CMath.hpp>
#include <rstl/math.hpp>

template <>
const int& CMath::Clamp< int >(const int& min, const int& val, const int& max) {
  return min > val ? min : max < val ? max : val;
}
