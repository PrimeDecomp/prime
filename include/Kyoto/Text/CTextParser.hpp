#ifndef _CTEXTPARSER
#define _CTEXTPARSER

#include <rstl/string.hpp>
#include <types.h>

#include <Kyoto/Text/CTextColor.hpp>
#include <Kyoto/TToken.hpp>
#include "Kyoto/Text/CFontImageDef.hpp"

class IObjectStore;
class CRasterFont;
class CTextExecuteBuffer;

class CTextParser {
public:
  CTextParser(IObjectStore& store);
  void ParseText(CTextExecuteBuffer&, const wchar_t* str, int len, rstl::vector<rstl::pair<int, int> >& vec);
  uint GetAssetIdFromString(const rstl::string& str);
  TToken< CRasterFont > GetFont(const wchar_t* str, int len);
  CFontImageDef GetImage(const wchar_t* str, int len, rstl::vector<rstl::pair<int, int> >& vec);
  uint HandleUserTag(CTextExecuteBuffer& buffer, const wchar_t* str, int len);
  void ParseTag(CTextExecuteBuffer&, const wchar_t* str, int len, rstl::vector<rstl::pair<int, int> >& vec);
  static bool BeginsWith(const wchar_t* str1, int len, const wchar_t* str2);
  static bool Equals(const wchar_t* str1, int len, const wchar_t* str2);
  static int ParseInt(const wchar_t* str, int len, bool);
  static int FromHex(wchar_t c);
  static int GetColorValue(const wchar_t* str);
  CTextColor ParseColor(const wchar_t* str, int len);

private:
  IObjectStore& mObjectStore;
};

#endif // _CTEXTPARSER
