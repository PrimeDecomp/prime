#ifndef _CDECAL
#define _CDECAL

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Particles/CParticleGlobals.hpp"
#include "Kyoto/TToken.hpp"
#include "Weapons/CDecalDescription.hpp"

#include <types.h>

class CDecalDescription;
class CDecal {
  static CRandom16 sDecalRandom;
  static bool sMoveRedToAlphaBuffer;

public:
  class CQuadDecal {
  public:
    CQuadDecal() : x0_24_invalid(true), x4_lifetime(0), x8_rotation(0.f) {}
    CQuadDecal(int lifetime, float rotation)
    : x0_24_invalid(true), x4_lifetime(lifetime), x8_rotation(rotation) {}

    inline bool IsInvalid() const { return x0_24_invalid; }
    inline void SetInvalid(bool invalid) { x0_24_invalid = invalid; }

    inline int GetLifetime() const { return x4_lifetime; }
    inline void SetLifetime(int lifetime) { x4_lifetime = lifetime; }

    inline float GetRotation() const { return x8_rotation; }
    inline void SetRotation(float rotation) { x8_rotation = rotation; }

    // private:
    bool x0_24_invalid : 1;
    int x4_lifetime;
    float x8_rotation;
  };

  static void SetGlobalSeed(ushort seed);
  CDecal(const TToken< CDecalDescription >& desc, const CTransform4f& xf);

  void RenderQuad(CQuadDecal& quad, const CDecalDescription::SQuadDescr& quadDesc) const;
  void RenderMdl() const;
  void Render() const;
  void Update(float dt);

  bool IsDone() const { return x5c_flags == 7; }

private:
  TLockedToken< CDecalDescription > x0_description;
  CTransform4f xc_transform;
  CQuadDecal x3c_quad1;
  CQuadDecal x48_quad2;
  int x54_modelLifetime;
  int x58_frameIdx;
  int x5c_flags;
  mutable CVector3f x60_rotation;

  void InitQuad(CQuadDecal& quad, const CDecalDescription::SQuadDescr& desc, int flag) {
    if (!desc.x14_TEX.null()) {
      if (!desc.x0_LFT.null()) {
        desc.x0_LFT->GetValue(0, quad.x4_lifetime);
      } else {
        quad.x4_lifetime = 0x7FFFFF;
      }

      if (!desc.x8_ROT.null()) {
        desc.x8_ROT->GetValue(0, quad.x8_rotation);
        quad.x0_24_invalid &= desc.x8_ROT->IsConstant();
      }

      if (!desc.x4_SZE.null()) {
        quad.x0_24_invalid &= desc.x4_SZE->IsConstant();
        if (quad.x0_24_invalid) {
          float size = 1.f;
          desc.x4_SZE->GetValue(0, size);
          quad.x0_24_invalid = size <= 1.f;
        }
      }

      if (!desc.xc_OFF.null()) {
        quad.x0_24_invalid &= desc.xc_OFF->IsFastConstant();
      }
    } else {
      quad.x0_24_invalid = false;
      x5c_flags |= flag;
    }
  }

  void ProcessQuad(CQuadDecal& quad, const CDecalDescription::SQuadDescr& desc, int flag) const {
    if (!desc.x14_TEX.null() && (x5c_flags & flag) == 0) {
      CParticleGlobals::SetParticleLifetime(quad.x4_lifetime);
      CParticleGlobals::UpdateParticleLifetimeTweenValues(x58_frameIdx);
      RenderQuad(quad, desc);
    }
  }
};
#endif // _CDECAL
