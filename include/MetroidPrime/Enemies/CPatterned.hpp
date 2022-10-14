#ifndef _CPATTERNED
#define _CPATTERNED

#include "MetroidPrime/Enemies/CAi.hpp"

class CPatterned : public CAi {
public:
  ~CPatterned();
  void Accept(IVisitor& visitor);
  void Death(CStateManager& mgr, const CVector3f& direction, EScriptObjectState state) {}
  void KnockBack(const CVector3f&, CStateManager&, const CDamageInfo& info, EKnockBackType type,
                 bool inDeferred, float magnitude) {};
};

#endif // _CPATTERNED
