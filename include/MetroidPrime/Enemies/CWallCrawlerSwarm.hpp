#ifndef _CWALLCRAWLERSWARM
#define _CWALLCRAWLERSWARM

#include "MetroidPrime/CActor.hpp"

class CWallCrawlerSwarm : public CActor {
public:
  class CBoid {};

  CVector3f GetLastKilledOffset() const { return x130_lastKilledOffset; }

private:
  CAABox xe8_aabox;
  int x100_thinkCounter;
  float x104_occludedTimer;
  rstl::vector< CBoid > x108_boids;
  CVector3f x118_boundingBoxExtent;
  mutable CVector3f x124_lastOrbitPosition;
  CVector3f x130_lastKilledOffset;
  // TODO
};

#endif // _CWALLCRAWLERSWARM
