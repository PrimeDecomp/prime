#ifndef _CTEXTCOLOR
#define _CTEXTCOLOR

#include <types.h>

class CTextColor {
public:
  CTextColor(uchar r, uchar g, uchar b, uchar a) : mR(r), mG(g), mB(b), mA(a) {}

private:
  uchar mR;
  uchar mG;
  uchar mB;
  uchar mA;
};

#endif // _CTEXTCOLOR
