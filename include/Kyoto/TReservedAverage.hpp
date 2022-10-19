#ifndef _TRESERVEDAVERAGE
#define _TRESERVEDAVERAGE

#include "types.h"

#include "Kyoto/TAverage.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/reserved_vector.hpp"

template < typename T, int N >
class TReservedAverage : public rstl::reserved_vector< T, N > {
public:
  TReservedAverage() {}
  TReservedAverage(const T& value) {
    // resize(value, N); TODO
  }
  void AddValue(const T& value) {
    push_back(value);
    for (int i = size() - 1; i > 0; --i) {
      operator[](i) = operator[](i - 1);
    }
    operator[](0) = value;
  }
  rstl::optional_object< T > GetAverage() const;
};

#endif // _TRESERVEDAVERAGE
