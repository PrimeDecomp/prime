#ifndef _CREPULSOR
#define _CREPULSOR

#include "MetroidPrime/CActor.hpp"

class CRepulsor : public CActor {
  float xe8_affectRadius;

public:
  CRepulsor(TUniqueId, bool, const rstl::string&, const CEntityInfo&, const CVector3f&, float);

  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&) override;

  float GetAffectRadius() const { return xe8_affectRadius; }
};

#endif // _CREPULSOR
