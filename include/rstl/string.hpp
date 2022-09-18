#ifndef _RSTL_STRING_HPP
#define _RSTL_STRING_HPP

#include "types.h"

#include "rstl/rmemory_allocator.hpp"

namespace rstl {
template < typename _CharTp >
struct char_traits {};

template < typename _CharTp, typename Traits = char_traits< _CharTp >,
           typename Alloc = rmemory_allocator >
class basic_string {
  struct COWData {
    u32 x0_capacity;
    u32 x4_refCount;
    _CharTp* x8_data;
  };

  const _CharTp* x0_ptr;
  COWData* x4_cow;
  u32 x8_size;
  u32 _pad; // Alloc?

  // void internal_allocate(int size)
  // {
  //     x4_cow = reinterpret_cast<COWData*>(new u8[size * sizeof(_CharTp) +
  //     8]); x0_ptr = x4_cow->x8_data; x4_cow->x0_capacity = u32(size);
  //     x4_cow->x4_refCount = 1;
  // }

  void internal_dereference();
  // {
  //     if (x4_cow && --x4_cow->x4_refCount == 0)
  //         delete[] x4_cow;
  // }

  static const _CharTp _EmptyString;

public:
  struct literal_t {};

  basic_string() : x0_ptr(&_EmptyString), x4_cow(nullptr), x8_size(0) {}

  basic_string(literal_t, const _CharTp* data);
  // {
  //     x0_ptr = data;
  //     x4_cow = nullptr;

  //     const _CharTp* it = data;
  //     while (*it)
  //         ++it;

  //     x8_size = u32((it - data) / sizeof(_CharTp));
  // }

  basic_string(const basic_string& str);
  // {
  //     x0_ptr = str.x0_ptr;
  //     x4_cow = str.x4_cow;
  //     x8_size = str.x8_size;
  //     if (x4_cow)
  //         ++x4_cow->x4_refCount;
  // }

  basic_string(const _CharTp* data, int size, const Alloc&);
  // {
  //     if (size <= 0 && !data)
  //     {
  //         x0_ptr = &_EmptyString;
  //         x4_cow = nullptr;
  //         x8_size = 0;
  //         return;
  //     }

  //     const _CharTp* it = data;
  //     u32 len = 0;
  //     while (*it)
  //     {
  //         if (size != -1 && len >= size)
  //             break;
  //         ++it;
  //         ++len;
  //     }

  //     internal_allocate(len + 1);
  //     x8_size = len;
  //     for (int i = 0; i < len; ++i)
  //         x4_cow->x8_data[i] = data[i];
  //     x4_cow->x8_data[len] = 0;
  // }

  ~basic_string() { internal_dereference(); }

  basic_string& operator=(const basic_string&);
  basic_string operator+(const basic_string&);

  const char* data() const { return x0_ptr; }
};

// template <>
// const char basic_string<char>::_EmptyString = 0;
// template <>
// const wchar_t basic_string<wchar_t>::_EmptyString = 0;

typedef basic_string< wchar_t > wstring;
typedef basic_string< char > string;

wstring wstring_l(const wchar_t* data);
// {
//     return wstring(wstring::literal_t(), data);
// }

string string_l(const char* data);
// {
//     return string(string::literal_t(), data);
// }

CHECK_SIZEOF(string, 0x10)
} // namespace rstl

#endif
