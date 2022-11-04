#ifndef _CCOLOR
#define _CCOLOR

#include "types.h"

#include "Kyoto/Basics/CCast.hpp"
#include "Kyoto/Math/CMath.hpp"

#include <dolphin/gx/GXStruct.h>

#ifdef __MWERKS__
#pragma cpp_extensions on
#endif

class CInputStream;
class CColor {
public:
  CColor() { Set(255, 0, 255); }
  CColor(uint col) { Set(col); }
  CColor(CInputStream& in);
  CColor(float r, float g, float b, float a = 1.f);
  CColor(uchar r, uchar g, uchar b, uchar a = 255) {
    mR = r;
    mG = g;
    mB = b;
    mA = a;
  }

  void Set(float r, float g, float b, float a);
  void Set(uchar r, uchar g, uchar b, uchar a = 255) {
    mR = r;
    mG = g;
    mB = b;
    mA = a;
  }
  void Set(uint col) { mRgba = col; }
  void Get(float& r, float& g, float& b, float& a) const;
  void Get(float& r, float& g, float& b) const;
  // TODO check. Maybe this calls SetAlpha(uchar)?
  void SetAlpha(float a) { mA = CCast::ToUint8(a * 255.f); }
  void SetAlpha(uchar a) { mRgba = (mRgba & ~0xff) | a; }

  static CColor Lerp(const CColor& a, const CColor& b, float t);
  static uint Lerp(uint a, uint b, float t);
  static CColor Modulate(const CColor& a, const CColor& b);
  static CColor Add(const CColor& a, const CColor& b);
  float GetRed() const { return CCast::ToReal32(mR) * (1.f / 255.f); }
  float GetGreen() const { return CCast::ToReal32(mG) * (1.f / 255.f); }
  float GetBlue() const { return CCast::ToReal32(mB) * (1.f / 255.f); }
  float GetAlpha() const { return CCast::ToReal32(mA) * (1.f / 255.f); }
  uchar GetRedu8() const { return mR; }
  uchar GetGreenu8() const { return mG; }
  uchar GetBlueu8() const { return mB; }
  uchar GetAlphau8() const { return mA; }
  ushort ToRGB5A3() const;
  uint GetColor_u32() const { return mRgba; }
  const GXColor& GetGXColor() const { return *reinterpret_cast< const GXColor* >(this); }

  CColor WithAlphaOf(float a) const { return CColor((mRgba & ~0xff) | CCast::ToUint8(a * 255.f)); }
  CColor WithAlphaModulatedBy(float a) const {
    return CColor((mRgba & ~0xff) | CCast::ToUint8(a * static_cast< float >(mA)));
  }

  bool operator==(const CColor& other) const { return mRgba == other.mRgba; }

  // TODO check
  static GXColor ToGX(uint c) { return *reinterpret_cast< const GXColor* >(&c); }

  static const CColor& Black();
  static const CColor& White();
  static const CColor& Grey();
  static const CColor& Red();
  static const CColor& Green();
  static const CColor& Blue();
  static const CColor& Yellow();
  static const CColor& Purple();
  static const CColor& Orange();

private:
  union {
    struct {
      uchar mR;
      uchar mG;
      uchar mB;
      uchar mA;
    };
    uint mRgba;
  };

  static const CColor sBlackColor;
  static const CColor sWhiteColor;
  static const CColor sGreyColor;
  static const CColor sRedColor;
  static const CColor sGreenColor;
  static const CColor sBlueColor;
  static const CColor sYellowColor;
  static const CColor sPurpleColor;
  static const CColor sOrangeColor;
};
CHECK_SIZEOF(CColor, 0x4)

#ifdef __MWERKS__
#pragma cpp_extensions off
#endif

#endif // _CCOLOR
