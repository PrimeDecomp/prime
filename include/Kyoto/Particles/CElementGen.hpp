#ifndef _CELEMENTGEN
#define _CELEMENTGEN

#include "types.h"

#include "Kyoto/Particles/CParticleGen.hpp"
#include "Kyoto/TToken.hpp"

class CGenDescription;

class CElementGen : public CParticleGen {
public:
  enum EModelOrientationType { kMOT_Normal, kMOT_One };
  enum EOptionalSystemFlags { kOSF_None, kOSF_One, kOSF_Two };
  enum LightType { kLT_None = 0, kLT_Custom = 1, kLT_Directional = 2, kLT_Spot = 3 };

  CElementGen(TToken< CGenDescription >, EModelOrientationType = kMOT_Normal,
              EOptionalSystemFlags = kOSF_One);
  ~CElementGen();

  virtual void Update(double);
  virtual void Render() const;
  virtual void SetOrientation(const CTransform4f& orientation);
  virtual void SetTranslation(const CVector3f& translation);
  virtual void SetGlobalOrientation(const CTransform4f& orientation);
  virtual void SetGlobalTranslation(const CVector3f& translation);
  virtual void SetGlobalScale(const CVector3f& scale);
  virtual void SetLocalScale(const CVector3f& scale);
  virtual void SetParticleEmission(bool emission);
  virtual void SetModulationColor(const CColor& col);
  virtual void SetGeneratorRate(float rate) {}
  virtual CTransform4f GetOrientation() const;
  virtual CVector3f GetTranslation() const;
  virtual CTransform4f GetGlobalOrientation() const;
  virtual CVector3f GetGlobalTranslation() const;
  virtual CVector3f GetGlobalScale() const;
  virtual bool GetParticleEmission() const;
  virtual CColor GetModulationColor() const;
  virtual bool IsSystemDeletable() const;
  virtual CAABox GetBounds() const;
  virtual int GetParticleCount() const;
  virtual bool SystemHasLight() const;
  virtual CLight GetLight();
  virtual void DestroyParticles();
  virtual void AddModifier(CWarp*);
  virtual uint Get4CharId() const;

  int GetEmitterTime() const;

  // TODO
  int GetCumulativeParticleCount() const { return *reinterpret_cast< const int* >(&x4_pad[0x25c]); }

  static void Initialize();
  static void ShutDown();

private:
  uchar x4_pad[0x33C];
};
CHECK_SIZEOF(CElementGen, 0x340)

#endif // _CELEMENTGEN
