#ifndef _CSCRIPTDOCKAREACHANGE
#define _CSCRIPTDOCKAREACHANGE

#include "MetroidPrime/CEntity.hpp"

class CScriptDockAreaChange : public CEntity {
  int x34_dockReference;

public:
  CScriptDockAreaChange(TUniqueId, const rstl::string&, const CEntityInfo&, int, bool);

  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId, CStateManager& stateMgr) override;
  void Accept(IVisitor& visitor) override;

  ~CScriptDockAreaChange();
};

#endif // _CSCRIPTDOCKAREACHANGE
