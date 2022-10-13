#ifndef _ICOLLISIONFILTER
#define _ICOLLISIONFILTER

class CActor;
class CCollisionInfoList;

class ICollisionFilter {
  CActor& x4_actor;

protected:
  explicit ICollisionFilter(CActor& actor) : x4_actor(actor) {}

public:
  virtual ~ICollisionFilter() {};
  virtual void Filter(const CCollisionInfoList& in, CCollisionInfoList& out) const = 0;
};

#endif // _ICOLLISIONFILTER
