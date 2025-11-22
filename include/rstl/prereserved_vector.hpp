#ifndef _RSTL_PRERESERVED_VECTOR
#define _RSTL_PRERESERVED_VECTOR

#include <types.h>

namespace rstl {
template < typename T >
class prereserved_vector {
public:
  prereserved_vector() : mData(nullptr), mSize(0) {}

  uint size() const { return mSize; }
  void set_size(uint size) { mSize = size; }
  void set_data(T* data) { mData = data; }

  T& operator[](uint idx) { return mData[idx]; }
  const T& operator[](uint idx) const { return mData[idx]; }

private:
  T* mData;
  uint mSize;
};
}; // namespace rstl

#endif // _RSTL_PRERESERVED_VECTOR
