#ifndef _CSCRIPTRELAY
#define _CSCRIPTRELAY

#include "MetroidPrime/CEntity.hpp"

class CScriptRelay : public CEntity {
  TUniqueId x34_nextRelay;
  int x38_sendCount;

public:
  CScriptRelay(TUniqueId, const rstl::string&, const CEntityInfo&, bool);
  
  void UpdateObjectRef(CStateManager& stateMgr);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId, CStateManager& stateMgr);
  void Think(float, CStateManager& stateMgr);
  void Accept(IVisitor& visitor);

  ~CScriptRelay();
};

#endif // _CSCRIPTRELAY
