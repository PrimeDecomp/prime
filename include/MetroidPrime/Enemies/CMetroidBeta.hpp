#ifndef _CMETROIDBETA
#define _CMETROIDBETA

#include "MetroidPrime/Enemies/CPatterned.hpp"

class CMetroidBeta : public CPatterned {
public:
  void RenderHitBallEffect() const;
  void RenderHitGunEffect() const;
};

#endif // _CMETROIDBETA
