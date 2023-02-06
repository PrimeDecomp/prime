#ifndef _CSCRIPTPICKUPGENERATOR
#define _CSCRIPTPICKUPGENERATOR

#include "MetroidPrime/CEntity.hpp"

class CScriptPickupGenerator : public CEntity {
public:
  CScriptPickupGenerator(TUniqueId, const rstl::string&, const CEntityInfo&, const CVector3f&,
                         float, bool);
  ~CScriptPickupGenerator();

  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender,
                       CStateManager& stateMgr) override;

private:
  CVector3f x34_position;
  float x40_frequency;
  float x44_delayTimer;
  void ResetDelayTimer();
  void GetGeneratorIds(CStateManager& mgr, TUniqueId sender,
                       rstl::vector< TUniqueId >& idsOut) const;
  float GetPickupTemplates(CStateManager& mgr,
                           rstl::vector< rstl::pair< float, TEditorId > >& idsOut) const;
  void GeneratePickup(CStateManager& mgr, TEditorId templateId, TUniqueId generatorId) const;
};

#endif // _CSCRIPTPICKUPGENERATOR
