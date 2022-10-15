#ifndef _CSCRIPTMEMORYRELAY
#define _CSCRIPTMEMORYRELAY

#include "MetroidPrime/CEntity.hpp"

class CScriptMemoryRelay : public CEntity {
  uchar x34_24_defaultActive : 1;
  bool x34_25_skipSendActive : 1;
  bool x34_26_ignoreMessages : 1;
public:
  CScriptMemoryRelay(TUniqueId, const rstl::string&, const CEntityInfo&, bool, bool, bool);
  ~CScriptMemoryRelay();

  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  void Accept(IVisitor& visitor);
};

#endif // _CSCRIPTMEMORYRELAY
