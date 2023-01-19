#ifndef _RSTL_STRING
#define _RSTL_STRING

#include "types.h"

#include "rstl/rmemory_allocator.hpp"

class CInputStream;
class COutputStream;

namespace rstl {
template < typename _CharTp >
struct char_traits {};

template < typename _CharTp, typename Traits = char_traits< _CharTp >,
           typename Alloc = rmemory_allocator >
class basic_string {
  struct COWData {
    uint x0_capacity;
    uint x4_refCount;
    _CharTp* x8_data;
  };

  const _CharTp* x0_ptr;
  COWData* x4_cow;
  uint x8_size;
  uint _pad; // Alloc?

  void internal_prepare_to_write(int len, bool);
  void internal_allocate(int size);
  // {
  //     x4_cow = reinterpret_cast<COWData*>(new uchar[size * sizeof(_CharTp) +
  //     8]); x0_ptr = x4_cow->x8_data; x4_cow->x0_capacity = uint(size);
  //     x4_cow->x4_refCount = 1;
  // }

  void internal_dereference();
  // {
  //     if (x4_cow && --x4_cow->x4_refCount == 0)
  //         delete[] x4_cow;
  // }

  static const _CharTp mNull;

public:
  struct literal_t {};

  basic_string() : x0_ptr(&mNull), x4_cow(nullptr), x8_size(0) {}

  basic_string(literal_t, const _CharTp* data);
  // {
  //     x0_ptr = data;
  //     x4_cow = nullptr;

  //     const _CharTp* it = data;
  //     while (*it)
  //         ++it;

  //     x8_size = uint((it - data) / sizeof(_CharTp));
  // }

  basic_string(const basic_string& str);
  // {
  //     x0_ptr = str.x0_ptr;
  //     x4_cow = str.x4_cow;
  //     x8_size = str.x8_size;
  //     if (x4_cow)
  //         ++x4_cow->x4_refCount;
  // }

  basic_string(CInputStream& in, const Alloc& = rmemory_allocator());

  basic_string(const _CharTp* data, int size = -1, const Alloc& = rmemory_allocator());
  // {
  //     if (size <= 0 && !data)
  //     {
  //         x0_ptr = &mNull;
  //         x4_cow = nullptr;
  //         x8_size = 0;
  //         return;
  //     }

  //     const _CharTp* it = data;
  //     uint len = 0;
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

  size_t size() const { return x8_size; }
  void reserve(int len) { internal_prepare_to_write(len, true); }

  void assign(const basic_string&);
  basic_string& operator=(const basic_string& other) {
    assign(other);
    return *this;
  }
  basic_string operator+(const _CharTp*);
  void append(const basic_string& other);
  void append(int, _CharTp);
  void append(const _CharTp*, int);

  int _eq_helper(const basic_string& other) const;
  bool operator==(const basic_string& other) const;
  bool operator<(const basic_string& other) const;

  const _CharTp* data() const { return x0_ptr; }
  void PutTo(COutputStream& out) const;
  const _CharTp at(int idx) const { return data()[idx]; }
};

template < typename _CharTp, typename Traits, typename Alloc >
bool basic_string< _CharTp, Traits, Alloc >::operator==(const basic_string& other) const {
  return _eq_helper(other) == 0;
}

template < typename _CharTp, typename Traits, typename Alloc >
bool basic_string< _CharTp, Traits, Alloc >::operator<(const basic_string& other) const {
  return _eq_helper(other) < 0;
}

// template <>
// const char basic_string<char>::mNull = 0;
// template <>
// const wchar_t basic_string<wchar_t>::mNull = 0;

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

string operator+(const string& a, const string& b);
// {
//   string result(a);
//   result.append(b);
//   return result;
// }

static inline string operator+(const string& a, char c) {
  string result(a);
  result.append(1, c);
  return result;
}

CHECK_SIZEOF(string, 0x10)
} // namespace rstl

#endif // _RSTL_STRING
