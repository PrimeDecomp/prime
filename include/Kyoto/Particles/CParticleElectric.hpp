#ifndef _CPARTICLEELECTRIC
#define _CPARTICLEELECTRIC

#include "Kyoto/Particles/CParticleGen.hpp"

#include "Kyoto/TToken.hpp"

class CElectricDescription;

class CParticleElectric : public CParticleGen {
public:
  explicit CParticleElectric(TToken<CElectricDescription> desc);

  ~CParticleElectric();
  void Update(double);
  void Render() const;
  void SetOrientation(const CTransform4f& orientation);
  void SetTranslation(const CVector3f& translation);
  void SetGlobalOrientation(const CTransform4f& orientation);
  void SetGlobalTranslation(const CVector3f& translation);
  void SetGlobalScale(const CVector3f& scale);
  void SetLocalScale(const CVector3f& scale);
  void SetParticleEmission(bool emission);
  void SetModulationColor(const CColor& col);
  void SetGeneratorRate(float rate) {}
  const CTransform4f& GetOrientation() const;
  const CVector3f& GetTranslation() const;
  CTransform4f GetGlobalOrientation() const;
  CVector3f GetGlobalTranslation() const;
  CVector3f GetGlobalScale() const;
  bool GetParticleEmission() const;
  CColor GetModulationColor() const;
  bool IsSystemDeletable() const;
  rstl::optional_object<CAABox> GetBounds() const;
  int GetParticleCount() const;
  bool SystemHasLight() const;
  CLight GetLight();
  void DestroyParticles();
  void AddModifier(CWarp*);
  uint Get4CharId() const;

  
  void SetOverrideIPos(const CVector3f& vec) { x178_overrideIPos = vec; }
  void SetOverrideIVel(const CVector3f& vec) { x188_overrideIVel = vec; }
  void SetOverrideFPos(const CVector3f& vec) { x198_overrideFPos = vec; }
  void SetOverrideFVel(const CVector3f& vec) { x1a8_overrideFVel = vec; }

private:
  uchar x1c_pad[0x15c];
  rstl::optional_object<CVector3f> x178_overrideIPos;
  rstl::optional_object<CVector3f> x188_overrideIVel;
  rstl::optional_object<CVector3f> x198_overrideFPos;
  rstl::optional_object<CVector3f> x1a8_overrideFVel;
  uchar x1b8_pad[0x2a0];
};
CHECK_SIZEOF(CParticleElectric, 0x458)

#endif // _CPARTICLEELECTRIC
