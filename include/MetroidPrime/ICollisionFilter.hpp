#ifndef _ICOLLISIONFILTER
#define _ICOLLISIONFILTER

class CCollisionInfoList;

class ICollisionFilter {
public:
  virtual void Filter(const CCollisionInfoList& in, CCollisionInfoList& out) const = 0;
};

#endif // _ICOLLISIONFILTER
