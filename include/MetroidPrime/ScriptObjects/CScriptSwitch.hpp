#ifndef _CSCRIPTSWITCH
#define _CSCRIPTSWITCH

#include "types.h"

#include "MetroidPrime/CEntity.hpp"

class CScriptSwitch : public CEntity {
public:
  CScriptSwitch(TUniqueId uid, const rstl::string& name, const CEntityInfo& info, bool, bool, bool);

  void Accept(IVisitor& visitor);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr);
  ~CScriptSwitch();

private:
  bool mOpened;
  bool mCloseOnOpened;
};

#endif // _CSCRIPTSWITCH
