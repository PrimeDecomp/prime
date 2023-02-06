#ifndef _CPARTICLEELECTRIC
#define _CPARTICLEELECTRIC

#include "Kyoto/Particles/CParticleGen.hpp"

#include "Kyoto/TToken.hpp"

class CElectricDescription;

class CParticleElectric : public CParticleGen {
public:
  explicit CParticleElectric(TToken<CElectricDescription> desc);

  ~CParticleElectric() override;
  void Update(double) override;
  void Render() const override;
  void SetOrientation(const CTransform4f& orientation) override;
  void SetTranslation(const CVector3f& translation) override;
  void SetGlobalOrientation(const CTransform4f& orientation) override;
  void SetGlobalTranslation(const CVector3f& translation) override;
  void SetGlobalScale(const CVector3f& scale) override;
  void SetLocalScale(const CVector3f& scale) override;
  void SetParticleEmission(bool emission) override;
  void SetModulationColor(const CColor& col) override;
  void SetGeneratorRate(float rate) {}
  const CTransform4f& GetOrientation() const override;
  const CVector3f& GetTranslation() const override;
  CTransform4f GetGlobalOrientation() const override;
  CVector3f GetGlobalTranslation() const override;
  CVector3f GetGlobalScale() const override;
  bool GetParticleEmission() const override;
  CColor GetModulationColor() const override;
  bool IsSystemDeletable() const override;
  rstl::optional_object<CAABox> GetBounds() const override;
  int GetParticleCount() const override;
  bool SystemHasLight() const override;
  CLight GetLight() override;
  void DestroyParticles() override;
  void AddModifier(CWarp*) override;
  uint Get4CharId() const override;

  
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
