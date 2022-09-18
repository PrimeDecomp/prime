#ifndef _CPARTICLEGEN_HPP
#define _CPARTICLEGEN_HPP

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CLight.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CWarp;
class CParticleGen {
public:
  virtual ~CParticleGen() = 0;
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
  virtual CTransform4f GetOrientation() const = 0;
  virtual CVector3f GetTranslation() const = 0;
  virtual CTransform4f GetGlobalOrientation() const = 0;
  virtual CVector3f GetGlobalTranslation() const = 0;
  virtual CVector3f GetGlobalScale() const = 0;
  virtual bool GetParticleEmission() const = 0;
  virtual CColor GetModulationColor() const = 0;
  virtual float GetGeneratorRate() const { return 1.f; }
  virtual bool IsSystemDeletable() const = 0;
  virtual CAABox GetBounds() const = 0;
  virtual int GetParticleCOunt() const = 0;
  virtual bool SystemHasLight() const = 0;
  virtual CLight GetLight() = 0;
  virtual void DestroyParticles() = 0;
  virtual void AddModifier(CWarp*) = 0;
  virtual uint Get4CharId() const = 0;
};

#endif // _CPARTICLEGEN_HPP
