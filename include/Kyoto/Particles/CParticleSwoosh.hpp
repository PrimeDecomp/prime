#ifndef _CPARTICLESWOOSH
#define _CPARTICLESWOOSH

#include "Kyoto/Particles/CParticleGen.hpp"

class CSwooshDescription;
class CParticleSwoosh : public CParticleGen {
public:
  CParticleSwoosh(const TToken<CSwooshDescription>& desc, int);
  ~CParticleSwoosh();
  void Update(double);
  void Render() const;
  void SetOrientation(const CTransform4f& xf);
  void SetTranslation(const CVector3f& vec);
  void SetGlobalOrientation(const CTransform4f& xf);
  void SetGlobalTranslation(const CVector3f& vec);
  void SetGlobalScale(const CVector3f& scale);
  void SetLocalScale(const CVector3f& scale);
  void SetParticleEmission(bool emission);
  void SetModulationColor(const CColor& col);
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
  void AddModifier(CWarp* warp);
  uint Get4CharId() const;
};

#endif // _CPARTICLESWOOSH
