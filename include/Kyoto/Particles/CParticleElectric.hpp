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
  CAABox GetBounds() const override;
  int GetParticleCount() const override;
  bool SystemHasLight() const override;
  CLight GetLight() override;
  void DestroyParticles() override;
  void AddModifier(CWarp*) override;
  uint Get4CharId() const override;

private:
  uchar x4_pad[0x43c];
};
CHECK_SIZEOF(CParticleElectric, 0x458)

#endif // _CPARTICLEELECTRIC
