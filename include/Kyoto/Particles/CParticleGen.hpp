#ifndef _CPARTICLEGEN
#define _CPARTICLEGEN

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CLight.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Particles/CWarp.hpp"

#include "rstl/list.hpp"
#include "rstl/pair.hpp"
#include "rstl/optional_object.hpp"

class CWarp;

class CParticleGen {
public:
  virtual ~CParticleGen() {};
  virtual void Update(double) = 0;
  virtual void Render() const = 0;
  virtual void SetOrientation(const CTransform4f& orientation) = 0;
  virtual void SetTranslation(const CVector3f& translation) = 0;
  virtual void SetGlobalOrientation(const CTransform4f& orientation) = 0;
  virtual void SetGlobalTranslation(const CVector3f& translation) = 0;
  virtual void SetGlobalScale(const CVector3f& scale) = 0;
  virtual void SetLocalScale(const CVector3f& scale) = 0;
  virtual void SetParticleEmission(bool emission) = 0;
  virtual void SetModulationColor(const CColor& col) = 0;
  virtual void SetGeneratorRate(float rate) {}
  virtual const CTransform4f& GetOrientation() const = 0;
  virtual const CVector3f& GetTranslation() const = 0;
  virtual CTransform4f GetGlobalOrientation() const = 0;
  virtual CVector3f GetGlobalTranslation() const = 0;
  virtual CVector3f GetGlobalScale() const = 0;
  virtual bool GetParticleEmission() const = 0;
  virtual CColor GetModulationColor() const = 0;
  virtual float GetGeneratorRate() const { return 1.f; }
  virtual bool IsSystemDeletable() const = 0;
  virtual rstl::optional_object<CAABox> GetBounds() const = 0;
  virtual int GetParticleCount() const = 0;
  virtual bool SystemHasLight() const = 0;
  virtual CLight GetLight() = 0;
  virtual void DestroyParticles() = 0;
  virtual void AddModifier(CWarp*) = 0;
  virtual uint Get4CharId() const = 0;

private:
  rstl::list< CWarp* > x4_modifiersList;
};

#endif // _CPARTICLEGEN
