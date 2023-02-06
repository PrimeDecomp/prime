#ifndef _CSCRIPTHUDMEMO
#define _CSCRIPTHUDMEMO

#include "MetroidPrime/CEntity.hpp"

#include "MetroidPrime/HUD/CHUDMemoParms.hpp"

#include "rstl/optional_object.hpp"

class CStringTable;
class CScriptHUDMemo : public CEntity {
public:
  enum EDisplayType {
    kDT_StatusMessage,
    kDT_MessageBox,
  };

private:
  CHUDMemoParms x34_parms;
  EDisplayType x3c_dispType;
  CAssetId x40_stringTableId;
  rstl::optional_object< TLockedToken< CStringTable > > x44_stringTable;

public:
  CScriptHUDMemo(TUniqueId, const rstl::string&, const CEntityInfo&, const CHUDMemoParms&,
                 CScriptHUDMemo::EDisplayType, CAssetId, bool);
  ~CScriptHUDMemo();

  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  void Accept(IVisitor& visitor);
};
CHECK_SIZEOF(CScriptHUDMemo, 0x54)

#endif // _CSCRIPTHUDMEMO
