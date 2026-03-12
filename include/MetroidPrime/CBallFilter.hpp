#ifndef _CBALLFILTER
#define _CBALLFILTER

#include "MetroidPrime/ICollisionFilter.hpp"

class CActor;
class CCollisionInfoList;

class CBallFilter : public ICollisionFilter {
public:
  explicit CBallFilter(const CActor& actor) : x4_actor(actor) {}
  void Filter(const CCollisionInfoList& in, CCollisionInfoList& out) const;

private:
  const CActor& x4_actor;
};

#endif // _CBALLFILTER
