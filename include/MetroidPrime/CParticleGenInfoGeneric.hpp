#ifndef _CPARTICLEGENINFOGENERIC
#define _CPARTICLEGENINFOGENERIC

#include "MetroidPrime/CParticleGenInfo.hpp"

class CParticleGen;

class CParticleGenInfoGeneric : public CParticleGenInfo {
public:
  CParticleGenInfoGeneric(const SObjectTag& part, rstl::ncrc_ptr< CParticleGen > system, int frames,
                          const rstl::string& boneName, CVector3f scale,
                          CParticleData::EParentedMode parentMode, int flags,
                          CStateManager& stateMgr, TAreaId areaId, int lightId,
                          EParticleGenType state);
  ~CParticleGenInfoGeneric();

  virtual void AddToRenderer();
  virtual void Render();
  virtual void Update(float dt, CStateManager& stateMgr);
  virtual void SetOrientation(const CTransform4f& xf, CStateManager& stateMgr);
  virtual void SetTranslation(const CVector3f& trans, CStateManager& stateMgr);
  virtual void SetGlobalOrientation(const CTransform4f& xf, CStateManager& stateMgr);
  virtual void SetGlobalTranslation(const CVector3f& trans, CStateManager& stateMgr);
  virtual void SetGlobalScale(const CVector3f& scale);
  virtual void SetParticleEmission(bool isActive, CStateManager& stateMgr);
  virtual bool IsSystemDeletable() const;
  virtual rstl::optional_object<CAABox> GetBounds() const;
  virtual bool HasActiveParticles() const;
  virtual void DestroyParticles();
  virtual bool HasLight() const;
  virtual TUniqueId GetLightId() const;
  virtual void DeleteLight(CStateManager& stateMgr);
  virtual void SetModulationColor(const CColor& color);

  const rstl::rc_ptr< CParticleGen >& GetParticleSystem() const { return x84_system; }

private:
  rstl::ncrc_ptr< CParticleGen > x84_system;
  TUniqueId x88_lightId;
};

#endif // _CPARTICLEGENINFOGENERIC
