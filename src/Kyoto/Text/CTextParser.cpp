#include <Kyoto/Text/CTextParser.hpp>

#include <Kyoto/Text/CTextExecuteBuffer.hpp>
#include <Kyoto/IObjectStore.hpp>

CTextParser::CTextParser(IObjectStore& store) 
: mObjectStore(store) {}

void CTextParser::ParseText(CTextExecuteBuffer& buffer, const wchar_t* str, int len) {
}

uint CTextParser::GetAssetIdFromString(const rstl::string& str) {

}

uint CTextParser::GetFont(const wchar_t* str, int len) {
    return -1;
}

uint CTextParser::GetImage(const wchar_t* str, int len) {
    return -1;
}

uint CTextParser::HandleUserTag(CTextExecuteBuffer& buffer, const wchar_t* string, int len) {
    return 0;
}

void CTextParser::ParseTag(CTextExecuteBuffer& buffer, const wchar_t* string, int len) {

}

bool CTextParser::BeginsWith(const wchar_t* str1, int len, const wchar_t* str2) {
  int i = 0;
  for (; str2[i] != L'\x0' && i < len; ++i) {
    if (str1[i] != str2[i]) {
      return false;
    }
  }
  
  return str2[i] == L'\x0';
}

bool CTextParser::Equals(const wchar_t* str1, int len, const wchar_t* str2) {
    int i = 0;
    for (;str2[i] != L'\x0' && i < len; ++i) {
        if (str1[i] != str2[i]) {
            return false;
        }
    }

    return str2[i] == L'\x0';
}

uint CTextParser::ParseInt(const wchar_t* str, int len, bool signVal) {
  bool neg = false;
  int procCur = 0;
  if (signVal && len > 0 && *str == L'-') {
    neg = true;
    procCur = 1;
  }

  int val = 0;
  while (len > procCur) {
    val *= 10;
    wchar_t ch = str[procCur];
    val += ch - L'0';
    ++procCur;
  }

  return neg ? -val : val;
}

uint CTextParser::FromHex(wchar_t ch) {
  if (ch >= L'0' && ch <= L'9')
    return ch - L'0';

  if (ch >= L'A' && ch <= L'F')
    return ch - L'A' + 10;

  if (ch >= L'a' && ch <= L'f')
    return ch - L'a' + 10;

  return 0;
}

uint CTextParser::GetColorValue(const wchar_t* str) {
    uint a = (FromHex(str[0]) << 4);
    uint b = FromHex(str[1]);
    return b + a;
}

CTextColor CTextParser::ParseColor(const wchar_t* str, int len) {
    uint r = GetColorValue(str + 1);
    uint g = GetColorValue(str + 3);
    uint b = GetColorValue(str + 5);
    uint a = len == 9 ? GetColorValue(str + 7) : 255;

    return CTextColor(r, g, b, a);
}
