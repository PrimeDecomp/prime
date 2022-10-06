#ifndef _CRAINSPLASHGENERATOR_HPP
#define _CRAINSPLASHGENERATOR_HPP

#include "types.h"

class CVector3f;

class CRainSplashGenerator {
public:
  CRainSplashGenerator(const CVector3f& scale, int maxSplashes, int genRate, float minZ,
                       float alpha);

private:
  u8 x0_pad[0x4c];
};
CHECK_SIZEOF(CRainSplashGenerator, 0x4c)

#endif // _CRAINSPLASHGENERATOR_HPP
