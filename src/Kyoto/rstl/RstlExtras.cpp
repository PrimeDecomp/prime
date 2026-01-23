#include "Kyoto/Alloc/CMemory.hpp"
#include "rstl/StringExtras.hpp"
#include "rstl/math.hpp"
#include "rstl/rc_ptr.hpp"

#include "Kyoto/Basics/CCast.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

namespace rstl {
CRefData CRefData::sNull(nullptr, 0x1000000 - 1);
}

int CStringExtras::IndexOfSubstring(const rstl::string& left, const rstl::string& right) {
  int rightSize = right.size();
  if (rightSize == 0) {
    return 0;
  }
  int leftSize = left.size();
  if (leftSize == 0) {
    return -1;
  }

  for (int i = 0; i < (leftSize - rightSize) + 1; ++i) {
    int j = 0;
    for (; j < rightSize; ++j) {
      if (ConvertToUpperCase(right.at(i)) != ConvertToUpperCase(left.at(i + j))) {
        break;
      }
    }
    if (j == rightSize) {
      return i;
    }
  }
  return -1;
}

int CStringExtras::CompareCaseInsensitive(const rstl::string& left, const rstl::string& right) {
  int left_size = left.size();
  int right_size = right.size();
  int max_size = rstl::min_val(left_size, right_size);

  for (int idx = 0; idx < max_size; ++idx) {
    if (ConvertToUpperCase(left.at(idx)) < ConvertToUpperCase(right.at(idx))) {
      return -1;
    }

    if (ConvertToUpperCase(left.at(idx)) > ConvertToUpperCase(right.at(idx))) {
      return 1;
    }
  }
  if (left_size < right_size) {
    return -1;
  } else if (left_size > right_size) {
    return 1;
  } else {
    return 0;
  }
}

char CStringExtras::ConvertToUpperCase(char c) {
  if (c >= CCast::ToChar('a') && c <= CCast::ToChar('z')) {
    return (c - CCast::ToChar(' ')) & 0xFF;
  }

  return c;
}

rstl::string CStringExtras::CreateFromInteger(int v) {
  int iVar3 = ((v >> 31) ^ v) - (v >> 31);
  int iVar4 = 0;
  uchar tmp[24];
  if (v == 0) {
    return rstl::string_l("0");
  }

  uchar* ptr = &tmp[0];
  while (iVar3 > 0) {
    ++iVar4;
    int iVar1 = iVar3 / 10 + (iVar3 >> 31);
    *ptr = iVar3 + (((iVar1 - (iVar1 >> 31)) * 10) + '0');
    ++ptr;
    iVar3 = iVar1 - (iVar1 >> 31);
  }

  rstl::string ret;
  if (v < 0) {
    ret.append("-");
  }

  for (int i = 0; i < iVar4; ++i) {
    ret.append(1, tmp[iVar4 - i]);
  }

  return ret;
}

rstl::string CStringExtras::ConvertToANSI(const rstl::wstring& str) {
  rstl::string ret;
  ret.reserve(str.size() + 1);

  for (int i = 0; i < (int)str.size(); ++i) {
    ret.assign(ret + (char)(str.at(i)));
  }
  return ret;
}
rstl::wstring CStringExtras::ConvertToUNICODE(const rstl::string& str) {
  rstl::wstring ret;
  ret.reserve(str.size() + 1);

  for (int i = 0; i < (int)str.size(); ++i) {
    ret.append(1, (wchar_t)str.at(i));
  }
  return ret;
}

rstl::string CStringExtras::ReadString(CInputStream& in) {
  rstl::string ret;
  int strLen = in.ReadInt32();
  ret.reserve(strLen);
  while (strLen > 0) {
    int len = strLen > 512u ? 512 : strLen;
    char tmp[512];
    in.ReadBytes(tmp, len);
    ret.append(tmp, len);
    strLen -= len;
  }

  return ret;
}

rstl::vector< rstl::string > CStringExtras::TokenizeString(const rstl::string& string,
                                                           const char* delims, int expectedSize) {
  rstl::vector< rstl::string > ret;
  ret.reserve(expectedSize);
}
