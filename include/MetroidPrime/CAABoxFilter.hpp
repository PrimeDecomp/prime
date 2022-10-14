#ifndef _CAABOXFILTER
#define _CAABOXFILTER

#include "MetroidPrime/ICollisionFilter.hpp"

class CCollisionInfoList;

class CAABoxFilter : public ICollisionFilter {
public:
  explicit CAABoxFilter(CActor& actor) : ICollisionFilter(actor) {}
  static void FilterBoxFloorCollisions(const CCollisionInfoList& in, CCollisionInfoList& out);
  void Filter(const CCollisionInfoList& in, CCollisionInfoList& out) const;
};

#endif // _CAABOXFILTER
