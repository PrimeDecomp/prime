#include "Kyoto/Text/CTextParser.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/Text/CRasterFont.hpp"
#include "Kyoto/Text/CTextExecuteBuffer.hpp"
#include "Kyoto/Text/TextCommon.hpp"
#include <rstl/StringExtras.hpp>
#include <rstl/algorithm.hpp>
#include <stdlib.h>

// Unused asset-ID format retained in the original string pool.
static const char* const skAssetIdFormat = "%02x%02x%02x%02x";

CTextParser::CTextParser(IObjectStore& store) : mObjectStore(store) {}

void CTextParser::ParseText(CTextExecuteBuffer& buffer, const wchar_t* str, int len,
                            const rstl::vector< rstl::pair< CAssetId, CAssetId > >* txtrMap) {
  int b = 0, e = 0;
  for (b = 0, e = 0; str[e] && (len == -1 || e < len);) {
    if (str[e] == L'&') {
      if ((len == -1 || e + 1 < len) && str[e + 1] != L'&') {
        if (e > b) {
          buffer.AddString(str + b, e - b);
        }
        ++e;
        b = e;

        while ((len == -1 || e < len) && str[e] && str[e] != L';')
          ++e;

        ParseTag(buffer, str + b, e - b, txtrMap);
        b = e + 1;
      } else {
        buffer.AddString(str + b, e + 1 - b);
        e += 2;
        b = e;
      }
    } else {
      ++e;
    }
  }

  if (e > b)
    buffer.AddString(str + b, e - b);
}

const CAssetId
CTextParser::GetAssetIdFromString(const rstl::string& inStr,
                                  const rstl::vector< rstl::pair< CAssetId, CAssetId > >* txtrMap) {
  rstl::wstring str = CStringExtras::ConvertToUNICODE(inStr);
  int id = (GetColorValue(str.data()) << 24) | (GetColorValue(str.data() + 2) << 16) |
           (GetColorValue(str.data() + 4) << 8) | GetColorValue(str.data() + 6);
  if (txtrMap) {
    typedef rstl::pair< CAssetId, CAssetId > AssetPair;
    rstl::vector< AssetPair >::const_iterator search = rstl::binary_find(
        txtrMap->begin(), txtrMap->end(), static_cast< CAssetId >(id),
        rstl::pair_sorter_finder< AssetPair, rstl::less< CAssetId > >(rstl::less< CAssetId >()));
    if (search != txtrMap->end()) {
      return search->second;
    }
  }

  return id;
}

TToken< CRasterFont > CTextParser::GetFont(const wchar_t* str, int len) {
  uint id = (GetColorValue(str) << 24) | GetColorValue(str + 2) << 16 |
            GetColorValue(str + 4) << 8 | GetColorValue(str + 6);

  return mObjectStore.GetObj(SObjectTag('FONT', id));
}

CFontImageDef CTextParser::GetImage(const wchar_t* str, int len,
                                    const rstl::vector< rstl::pair< CAssetId, CAssetId > >* vec) {
  const rstl::string text = CStringExtras::ConvertToANSI(rstl::wstring(str, len));
  int commaCount = 0;
  int pos = 0;
  while (true) {
    pos = text.find(',', pos);
    if (pos == -1) {
      break;
    }
    ++commaCount;
    ++pos;
  }
  if (commaCount > 0) {
    const rstl::vector< rstl::string > tokens =
        CStringExtras::TokenizeString(text, ",", commaCount + 1);
    if (rstl::operator==(rstl::istring(tokens[0].c_str()), rstl::istring_l("A"))) {
      const float fps = atof(tokens[1].c_str());
      rstl::vector< TToken< CTexture > > textures;
      textures.reserve(tokens.size() - 2);
      for (int i = 2; i < tokens.size(); ++i) {
        textures.push_back(
            mObjectStore.GetObj(SObjectTag('TXTR', GetAssetIdFromString(tokens[i], vec))));
      }
      return CFontImageDef(textures, fps, CVector2f(1.f, 1.f));
    }
    if (rstl::operator==(rstl::istring(tokens[0].c_str()), rstl::istring_l("SA")) &&
        tokens.size() >= 5) {
      const float fps = atof(tokens[1].c_str());
      const float cropX = atof(tokens[2].c_str());
      const float cropY = atof(tokens[3].c_str());
      rstl::vector< TToken< CTexture > > textures;
      textures.reserve(tokens.size() - 4);
      for (int i = 4; i < tokens.size(); ++i) {
        textures.push_back(
            mObjectStore.GetObj(SObjectTag('TXTR', GetAssetIdFromString(tokens[i], vec))));
      }
      return CFontImageDef(textures, fps, CVector2f(cropX, cropY));
    }
    if (rstl::operator==(rstl::istring(tokens[0].c_str()), rstl::istring_l("SI")) &&
        tokens.size() == 4) {
      const float cropX = atof(tokens[1].c_str());
      const float cropY = atof(tokens[2].c_str());
      return CFontImageDef(
          mObjectStore.GetObj(SObjectTag('TXTR', GetAssetIdFromString(tokens[3], vec))),
          CVector2f(cropX, cropY));
    }
  }
  return CFontImageDef(mObjectStore.GetObj(SObjectTag('TXTR', GetAssetIdFromString(text, vec))),
                       CVector2f(1.f, 1.f));
}

uint CTextParser::HandleUserTag(CTextExecuteBuffer& buffer, const wchar_t* string, int len) {
  return 0;
}

void CTextParser::ParseTag(CTextExecuteBuffer& buffer, const wchar_t* string, int len,
                           const rstl::vector< rstl::pair< CAssetId, CAssetId > >* vec) {
  if (BeginsWith(string, len, L"font=")) {
    TToken< CRasterFont > font = GetFont(string + 5, len - 5);
    buffer.AddFont(font);
  } else if (BeginsWith(string, len, L"image=")) {
    CFontImageDef texture = GetImage(string + 6, len - 6, vec);
    buffer.AddImage(texture);
  } else if (BeginsWith(string, len, L"fg-color=")) {
    buffer.AddColor(kCT_Foreground, ParseColor(string + 9, len - 9));
  } else if (BeginsWith(string, len, L"main-color=")) {
    buffer.AddColor(kCT_Main, ParseColor(string + 11, len - 11));
  } else if (BeginsWith(string, len, L"geometry-color=")) {
    buffer.AddColor(kCT_Geometry, ParseColor(string + 11, len - 11));
  } else if (BeginsWith(string, len, L"outline-color=")) {
    buffer.AddColor(kCT_Outline, ParseColor(string + 14, len - 14));
  } else if (BeginsWith(string, len, L"color")) {
    int idx = string[6] - L'0';
    if (idx < 0 || idx > 9) {
      return;
    }
    const wchar_t* str_remain = string + 7;
    len -= 7;
    if (*str_remain >= L'0' && *str_remain <= L'9') {
      wchar_t tmp = *str_remain;
      ++str_remain;
      len--;
      idx = (idx * 10) + (tmp - L'0');
    }
    if (Equals(str_remain + 10, len - 10, L"no")) {
      buffer.AddRemoveColorOverride(idx);
    } else {
      buffer.AddColorOverride(idx, ParseColor(str_remain + 10, len - 10));
    }
  } else if (BeginsWith(string, len, L"line-spacing=")) {
    const float v = (float)ParseInt(string + 13, len - 13, true);
    buffer.AddLineSpacing(v / 100.f);
  } else if (BeginsWith(string, len, L"line-extra-space=")) {
    buffer.AddLineExtraSpace(ParseInt(string + 17, len - 17, true));
  } else if (BeginsWith(string, len, L"just=")) {
    if (Equals(string + 5, len - 5, L"left")) {
      buffer.AddJustification(kJustification_Left);
    } else if (Equals(string + 5, len - 5, L"center")) {
      buffer.AddJustification(kJustification_Center);
    } else if (Equals(string + 5, len - 5, L"right")) {
      buffer.AddJustification(kJustification_Right);
    } else if (Equals(string + 5, len - 5, L"full")) {
      buffer.AddJustification(kJustification_Full);
    } else if (Equals(string + 5, len - 5, L"nleft")) {
      buffer.AddJustification(kJustification_NLeft);
    } else if (Equals(string + 5, len - 5, L"ncenter")) {
      buffer.AddJustification(kJustification_NCenter);
    } else if (Equals(string + 5, len - 5, L"nright")) {
      buffer.AddJustification(kJustification_NRight);
    }
  } else if (BeginsWith(string, len, L"vjust=")) {
    if (Equals(string + 6, len - 6, L"top")) {
      buffer.AddVerticalJustification(kVerticalJustification_Top);
    } else if (Equals(string + 6, len - 6, L"center")) {
      buffer.AddVerticalJustification(kVerticalJustification_Center);
    } else if (Equals(string + 6, len - 6, L"bottom")) {
      buffer.AddVerticalJustification(kVerticalJustification_Bottom);
    } else if (Equals(string + 6, len - 6, L"full")) {
      buffer.AddVerticalJustification(kVerticalJustification_Full);
    } else if (Equals(string + 6, len - 6, L"ntop")) {
      buffer.AddVerticalJustification(kVerticalJustification_NTop);
    } else if (Equals(string + 6, len - 6, L"ncenter")) {
      buffer.AddVerticalJustification(kVerticalJustification_NCenter);
    } else if (Equals(string + 6, len - 6, L"nbottom")) {
      buffer.AddVerticalJustification(kVerticalJustification_NBottom);
    }
  } else if (Equals(string, len, L"push")) {
    buffer.AddPushState();
  } else if (Equals(string, len, L"pop")) {
    buffer.AddPopState();
  } else {
    HandleUserTag(buffer, string, len);
  }
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
  for (; str2[i] != L'\x0' && i < len; ++i) {
    if (str1[i] != str2[i]) {
      return false;
    }
  }

  return str2[i] == L'\x0';
}

int CTextParser::ParseInt(const wchar_t* str, int len, bool signVal) {
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

int CTextParser::FromHex(wchar_t ch) {
  if (ch >= L'0' && ch <= L'9')
    return ch - L'0';

  if (ch >= L'A' && ch <= L'F')
    return ch - L'A' + 10;

  if (ch >= L'a' && ch <= L'f')
    return ch - L'a' + 10;

  return 0;
}

const int CTextParser::GetColorValue(const wchar_t* str) {
  return FromHex(str[1]) + (FromHex(str[0]) << 4);
}

CTextColor CTextParser::ParseColor(const wchar_t* str, int len) {
  uint r = GetColorValue(str + 1);
  uint g = GetColorValue(str + 3);
  uint b = GetColorValue(str + 5);
  uint a = len == 9 ? GetColorValue(str + 7) : 255;

  return CTextColor(r, g, b, a);
}
