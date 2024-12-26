#ifndef _CPARTICLESWOOSH_HPP
#define _CPARTICLESWOOSH_HPP

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Particles/CParticleGen.hpp"
#include "Kyoto/Particles/IElement.hpp"
#include "Kyoto/TToken.hpp"
#include "MetroidPrime/CParticleDatabase.hpp"

#include "dolphin/gx/GXEnum.h"

class CParticleSwoosh : public CParticleGen {
public:
  struct SSwooshData {};
  CParticleSwoosh(TToken< CSwooshDescription > desc, int i);
  ~CParticleSwoosh();

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
  rstl::optional_object< CAABox > GetBounds() const;
  int GetParticleCount() const;
  bool SystemHasLight() const;
  CLight GetLight();
  void DestroyParticles();
  void AddModifier(CWarp*);
  uint Get4CharId() const;

  void SetWarmUp() { x1d0_26_forceOneUpdate = true; }

private:
  TLockedToken< CSwooshDescription > x1c_desc;
  uint x28_curFrame;
  int x2c_PSLT;
  double x30_curTime;
  CVector3f x38_translation;
  CTransform4f x44_orientation;
  CTransform4f x74_invOrientation;
  CVector3f xa4_globalTranslation;
  CTransform4f xa4_globalOrientation;
  CVector3f xe0_globalScale;
  CTransform4f xec_scaleXf;
  CTransform4f x11c_invScaleXf;
  CVector3f x14c_localScale;
  uint x158_curParticle;
  rstl::vector< SSwooshData > x15c_swooshes;
  rstl::vector< CVector3f > x16c_p0;
  rstl::vector< CVector3f > x17c_p1;
  rstl::vector< CVector3f > x18c_p2;
  rstl::vector< CVector3f > x19c_p3;
  uint x1ac_particleCount;
  int x1b0_SPLN;
  int x1b4_LENG;
  int x1b8_SIDE;
  GXPrimitive x1bc_prim;
  CRandom16 x1c0_rand;
  float x1c4_;
  float x1c8_;
  float x1cc_TSPN;
  bool x1d0_24_emitting : 1;
  bool x1d0_25_AALP : 1;
  bool x1d0_26_forceOneUpdate : 1;
  bool x1d0_27_renderGaps : 1;
  bool x1d0_28_LLRD : 1;
  bool x1d0_29_VLS1 : 1;
  bool x1d0_30_VLS2 : 1;
  bool x1d0_31_constantTex : 1;
  bool x1d1_24_constantUv : 1;
  SUVElementSet x1d4_uvs;
  CTexture* x1e4_tex;
  float x1e8_uvSpan;
  int x1ec_TSPN;
  CVector3f x1f0_aabbMin;
  CVector3f x1fc_aabbMax;
  float x208_maxRadius;
  CColor x20c_moduColor;
};

#endif // _CPARTICLESWOOSH_HPP
