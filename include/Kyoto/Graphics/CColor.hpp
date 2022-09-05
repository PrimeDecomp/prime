#ifndef __CCOLOR_HPP__
#define __CCOLOR_HPP__

#include "types.h"

#include "Kyoto/Basics/CCast.hpp"

#include <dolphin/gx/GXStruct.h>

#ifdef __MWERKS__
#pragma cpp_extensions on
#endif

class CInputStream;
class CColor {
public:
  CColor() {}
  CColor(uint col) : mRgba(col) {}
  CColor(CInputStream& in);
  CColor(f32 r, f32 g, f32 b, f32 a = 1.f);
  CColor(u8 r, u8 g, u8 b, u8 a = 255) {
    mR = r;
    mG = g;
    mB = b;
    mA = a;
  }

  void Set(float r, float g, float b, float a);
  void Get(float& r, float& g, float& b, float& a) const;
  void Get(float& r, float& g, float& b) const;
  static CColor Lerp(const CColor& a, const CColor& b, float t);
  static uint Lerp(uint a, uint b, float t);
  static CColor Modulate(const CColor& a, const CColor& b);
  static CColor Add(const CColor& a, const CColor& b);
  f32 GetRed() const { return CCast::ToReal32(mR) * (1/255.f); }
  f32 GetGreen() const { return CCast::ToReal32(mG) * (1/255.f); }
  f32 GetBlue() const { return CCast::ToReal32(mB) * (1/255.f); }
  f32 GetAlpha() const { return CCast::ToReal32(mA) * (1/255.f); }
  u8 GetRedu8() const { return mR; }
  u8 GetGreenu8() const { return mG; }
  u8 GetBlueu8() const { return mB; }
  u8 GetAlphau8() const { return mA; }
  u16 ToRGB5A3() const;
  GXColor ToGX(uint);

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
      u8 mR;
      u8 mG;
      u8 mB;
      u8 mA;
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

#ifdef __MWERKS__
#pragma cpp_extensions off
#endif

#endif // __CCOLOR_HPP__
