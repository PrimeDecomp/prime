#ifndef _CSCRIPTCONTROLLERACTION
#define _CSCRIPTCONTROLLERACTION

#include "MetroidPrime/CEntity.hpp"

#include "MetroidPrime/CControlMapper.hpp"

class CScriptControllerAction : public CEntity {
  ControlMapper::ECommands x34_command;
  uint x38_mapScreenSubaction;
  bool x3c_24_mapScreenResponse : 1;
  bool x3c_25_deactivateOnClose : 1;
  bool x3c_26_pressed : 1;

public:
  CScriptControllerAction(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                          bool active, ControlMapper::ECommands command, bool b1, uint w1, bool b2);
  ~CScriptControllerAction();

  void Accept(IVisitor& visitor) override;
  void Think(float, CStateManager&) override;
};

#endif // _CSCRIPTCONTROLLERACTION
