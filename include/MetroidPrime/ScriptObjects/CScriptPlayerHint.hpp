#ifndef _CSCRIPTPLAYERHINT
#define _CSCRIPTPLAYERHINT

#include "MetroidPrime/CActor.hpp"

class CScriptPlayerHint : public CActor {
public:
  CScriptPlayerHint(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                    const CTransform4f& xf, bool active, int priority, int overrideFlags);
  ~CScriptPlayerHint();

  void Accept(IVisitor& visit) override;
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&) override;
  int GetPriority() const { return x100_priority; }
  int GetOverrideFlags() const { return x104_overrideFlags; }
  TUniqueId GetActorId() const { return x108_mpId; }
  void ClearObjectList();
  void SetDeactivated() { xfc_deactivated = true; }

private:
  rstl::reserved_vector< TUniqueId, 8 > xe8_objectList;
  bool xfc_deactivated;
  int x100_priority;
  int x104_overrideFlags;
  TUniqueId x108_mpId;

  void AddToObjectList(TUniqueId uid);
  void RemoveFromObjectList(TUniqueId uid, CStateManager& mgr);
};

#endif // _CSCRIPTPLAYERHINT
