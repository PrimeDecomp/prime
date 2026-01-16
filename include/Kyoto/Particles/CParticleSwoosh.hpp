#ifndef _CPARTICLESWOOSH
#define _CPARTICLESWOOSH

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
  struct SSwooshData {
    SSwooshData(const CVector3f& translation = CVector3f::Zero(),
                const CVector3f& offset = CVector3f::Zero(), float irot = 0.f, float rotm = 0.f, int startFrame = 0,
                bool active = false, const CTransform4f& orient = CTransform4f::Identity(),
                const CVector3f& velocity = CVector3f::Zero(), float leftRadius = 0.f, float rightRadius = 0.f,
                const CColor& color = CColor(0.f, 0.f, 0.f, 0.f))
    : mActive(active)
    , mLeftRad(leftRadius)
    , mRightRad(rightRadius)
    , mTranslation(translation)
    , mOffset(offset)
    , mUseOffset(offset)
    , mInitialRot(irot)
    , mRotm(rotm)
    , mOrientation(orient)
    , mColor(color)
    , mStartFrame(startFrame)
    , mVelocity(velocity) {}

    bool mActive;
    float mLeftRad;
    float mRightRad;
    CVector3f mTranslation;    // Updated by system's velocity sources or user code
    CVector3f mOffset;         // Updated by POFS once per system update (also resets x24_useOffset)
    CVector3f mUseOffset;      // Combination of POFS and NPOS, once per particle instance
    float mInitialRot;         // Rotation bias once per system update
    float mRotm;               // Rotation bias once per particle instance
    CTransform4f mOrientation; // Updated by user code
    int mFrame;                // Frame index of evaluated data
    CColor mColor;             // Updated by COLR
    int mStartFrame;
    CVector3f mVelocity;
  };
  CParticleSwoosh(TToken< CSwooshDescription > desc, int i);
  ~CParticleSwoosh();

  bool Update(double dt);
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

  const int GetSwooshCount() const { return x15c_swooshes.size(); }

  bool IsLargeEnough() const;

private:
  TLockedToken< CSwooshDescription > x1c_desc;
  uint x28_curFrame;
  int x2c_PSLT;
  double x30_curTime;
  CVector3f x38_translation;
  CTransform4f x44_orientation;
  CTransform4f x74_invOrientation;
  CVector3f xa4_globalTranslation;
  CTransform4f xb0_globalOrientation;
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

  static uint mSwooshAliveCount;
};

#endif // _CPARTICLESWOOSH
