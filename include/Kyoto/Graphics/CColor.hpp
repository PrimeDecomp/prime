#ifndef __CCOLOR_HPP__
#define __CCOLOR_HPP__

#include "types.h"

#pragma cpp_extensions on

class CColor {
public:
  CColor() {}
  CColor(u32 col) : mRgba(col) {}
  CColor(f32 r, f32 g, f32 b, f32 a = 1.f);
  // : mR(r * 255.f), mG(g * 255.f), mB(b * 255.f), mA(a * 255.f) {}

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
    u32 mRgba;
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

#endif // __CCOLOR_HPP__
