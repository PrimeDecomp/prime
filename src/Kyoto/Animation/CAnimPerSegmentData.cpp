#include "rstl/vector.hpp"

class CQuaternion;

// Declare the specialization before CInputStream defines the generic inline constructor.
template <>
rstl::vector< CQuaternion >::vector(CInputStream& in, const rmemory_allocator& allocator);

#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

template <>
rstl::vector< CQuaternion >::vector(CInputStream& in, const rmemory_allocator& allocator)
: x4_count(0), x8_capacity(0), xc_items(nullptr) {
  int count = in.Get(TGetType(0));
  reserve(count);
  for (int i = 0; i < count; i++) {
    push_back(in.Get< CQuaternion >());
  }
}
