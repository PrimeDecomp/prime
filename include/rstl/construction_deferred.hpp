#ifndef _RSTL_CONSTRUCTION_DEFERRED
#define _RSTL_CONSTRUCTION_DEFERRED

#include "types.h"

#include "rstl/construct.hpp"

namespace rstl {
template < typename T >
class construction_deferred {
public:
  construction_deferred() : m_valid(false) {}

  template < typename A >
  void build(const A& arg) {
    rstl::construct(get_ptr(), arg);
    makeValid();
  }
  void clear(); // TODO
  bool valid() const { return m_valid; }

  T* get_ptr() { return reinterpret_cast< T* >(x0_data); }
  T& data() {
    // TODO ensureIsValid
    return *get_ptr();
  }
  T& operator*() { return data(); }

private:
  uchar x0_data[sizeof(T)];
  bool m_valid __attribute__((aligned(4)));

  void makeValid() { m_valid = true; }
};
} // namespace rstl

#endif // _RSTL_CONSTRUCTION_DEFERRED
