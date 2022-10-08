#ifndef __CSCRIPTSWITCH_HPP__
#define __CSCRIPTSWITCH_HPP__

#include "MetroidPrime/CEntity.hpp"

class CScriptSwitch : public CEntity {
public:
  CScriptSwitch(TUniqueId uid, const rstl::string& name, const CEntityInfo& info, bool, bool, bool);

  void Accept(IVisitor& visitor);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr);
  ~CScriptSwitch();

private:
  u8 mOpened;
  u8 mCloseOnOpened;
};

#endif // __CSCRIPTSWITCH_HPP__
