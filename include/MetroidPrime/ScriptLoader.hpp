#ifndef _SCRIPTLOADER
#define _SCRIPTLOADER

class CEntity;
class CStateManager;
class CInputStream;
class CEntityInfo;
class CTransform4f;
class CVector3f;

class ScriptLoader {
public:
  static CEntity* LoadTrigger(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadCameraHintTrigger(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadDamageableTrigger(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSpawnPoint(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadDock(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadActor(CStateManager&, CInputStream&, int, const CEntityInfo&);  
};

#endif // _SCRIPTLOADER
