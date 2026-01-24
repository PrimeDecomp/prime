#ifndef _CTEXTCOLOR
#define _CTEXTCOLOR

#include <types.h>

#ifdef __MWERKS__
#pragma cpp_extensions on
#endif

class CTextColor {
public:
  // TODO: Verify component ordering, there is evidence this might actually be ABGR instead of RGBA
  CTextColor(uchar r, uchar g, uchar b, uchar a) : mR(r), mG(g), mB(b), mA(a) {}

  CTextColor(const CTextColor& other) : mR(other.mR), mG(other.mG), mB(other.mB), mA(other.mA) {}

  const CTextColor& operator=(const CTextColor& other) {
    mR = other.mR;
    mG = other.mG;
    mB = other.mB;
    mA = other.mA;
    return *this;
  }
  
  uint GetRGBA() const { return mRgba; }
  
  const uchar GetAlpha() const { return mA; }
  const uchar GetBlue() const { return mB; }
  const uchar GetGreen() const { return mG; }
  const uchar GetRed() const { return mR; }

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
};

#ifdef __MWERKS__
#pragma cpp_extensions reset
#endif

#endif // _CTEXTCOLOR
