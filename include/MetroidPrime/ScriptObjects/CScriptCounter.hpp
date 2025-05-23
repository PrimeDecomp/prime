#ifndef _CSCRIPTCOUNTER
#define _CSCRIPTCOUNTER

#include "MetroidPrime/CEntity.hpp"

class CScriptCounter : public CEntity {
  int x34_initial;
  int x38_current;
  int x3c_max;
  bool x40_autoReset;

public:
  CScriptCounter(TUniqueId, const rstl::string& name, const CEntityInfo& info, int, int, bool,
                 bool);
  ~CScriptCounter();

  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId, CStateManager& stateMgr) override;
  void Accept(IVisitor& visitor) override;
};

#endif // _CSCRIPTCOUNTER
