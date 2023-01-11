#ifndef _CTEXTCOLOR
#define _CTEXTCOLOR

#include <types.h>

#ifdef __MWERKS__
#pragma cpp_extensions on
#endif

class CTextColor {
public:
  CTextColor(uchar r, uchar g, uchar b, uchar a) : mR(r), mG(g), mB(b), mA(a) {}

  CTextColor(const CTextColor& other) : mR(other.mR), mG(other.mG), mB(other.mB), mA(other.mA) {}

  const CTextColor& operator=(const CTextColor& other) {
    mR = other.mR;
    mG = other.mG;
    mB = other.mB;
    mA = other.mA;
    return *this;
  }

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
#pragma cpp_extensions off
#endif

#endif // _CTEXTCOLOR
