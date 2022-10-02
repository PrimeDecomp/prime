#ifndef _TAVERAGE_HPP
#define _TAVERAGE_HPP

#include "types.h"

#include "rstl/optional_object.hpp"
#include "rstl/vector.hpp"

template < typename T >
class TAverage : rstl::vector< T > {
public:
  TAverage() {}
  TAverage(int capacity, const T& value);
  void AddValue(const T& value) {
    push_back(value);
    for (int i = size() - 1; i > 0; --i) {
      operator[](i) = operator[](i - 1);
    }
    operator[](0) = value;
  }
  rstl::optional_object< T > GetAverage() const;
};

template < typename T >
TAverage< T >::TAverage(int capacity, const T& value) {
  resize(capacity, value);
}

#endif
