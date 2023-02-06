#ifndef _CSCRIPTRANDOMRELAY
#define _CSCRIPTRANDOMRELAY

#include "MetroidPrime/CEntity.hpp"

class CScriptRandomRelay : public CEntity {
public:
  CScriptRandomRelay(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                     int sendSetSize, int sendSetVariance, bool percentSize, bool active);
  ~CScriptRandomRelay();

  void Accept(IVisitor& visitor);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId, CStateManager& stateMgr);
  void SendLocalScriptMsgs(EScriptObjectState state, CStateManager& stateMgr);

private:
  int x34_sendSetSize;
  int x38_sendSetVariance;
  bool x3c_percentSize;
};

#endif // _CSCRIPTRANDOMRELAY
