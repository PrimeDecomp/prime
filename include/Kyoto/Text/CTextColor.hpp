#ifndef __CTEXTCOLOR_HPP__
#define __CTEXTCOLOR_HPP__

#include <types.h>

class CTextColor {
public:
    CTextColor(uchar r, uchar g, uchar b, uchar a)
    : mR(r), mG(g), mB(b), mA(a) {}
private:
    uchar mR;
    uchar mG;
    uchar mB;
    uchar mA;
};

#endif