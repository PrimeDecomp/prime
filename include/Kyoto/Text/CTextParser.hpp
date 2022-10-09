#ifndef _CTEXTPARSER
#define _CTEXTPARSER

#include <rstl/string.hpp>
#include <types.h>

#include <Kyoto/Text/CTextColor.hpp>

class IObjectStore;
class CTextExecuteBuffer;

class CTextParser {
public:
  CTextParser(IObjectStore& store);
  void ParseText(CTextExecuteBuffer&, const wchar_t* str, int len);
  uint GetAssetIdFromString(const rstl::string& str);
  uint GetFont(const wchar_t* str, int len);
  uint GetImage(const wchar_t* str, int len);
  uint HandleUserTag(CTextExecuteBuffer& buffer, const wchar_t* str, int len);
  void ParseTag(CTextExecuteBuffer&, const wchar_t* str, int len);
  static bool BeginsWith(const wchar_t* str1, int len, const wchar_t* str2);
  static bool Equals(const wchar_t* str1, int len, const wchar_t* str2);
  static uint ParseInt(const wchar_t* str, int len, bool);
  static uint FromHex(wchar_t c);
  static uint GetColorValue(const wchar_t* str);
  CTextColor ParseColor(const wchar_t* str, int len);

private:
  IObjectStore& mObjectStore;
};

#endif // _CTEXTPARSER
