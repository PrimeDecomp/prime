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
  void AddValue(const T& value);
  rstl::optional_object< T > GetAverage() const {
    if (empty()) {
      return rstl::optional_object_null();
    } else {
      return GetAverageValue(data(), size());
    }
  }
};

template < typename T >
TAverage< T >::TAverage(int capacity, const T& value) {
  resize(capacity, value);
}

template < typename T >
void TAverage< T >::AddValue(const T& value) {
  if (size() == capacity()) {
    // TODO ?
    x4_count -= 1;
  }
  insert(begin(), value);
}

template < typename T >
T GetAverageValue(const T* ptr, int count); // TODO

#endif
