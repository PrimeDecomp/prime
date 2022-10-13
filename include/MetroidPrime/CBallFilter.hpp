#ifndef _CBALLFILTER
#define _CBALLFILTER

#include "MetroidPrime/ICollisionFilter.hpp"

class CCollisionInfoList;
class CPhysicsActor;

class CBallFilter : public ICollisionFilter {
public:
  explicit CBallFilter(CActor& actor) : ICollisionFilter(actor) {}
  void Filter(const CCollisionInfoList& in, CCollisionInfoList& out) const;
};

#endif // _CBALLFILTER
