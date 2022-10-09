#ifndef _CDECAL
#define _CDECAL

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/TToken.hpp"
#include "Weapons/CDecalDescription.hpp"

#include <types.h>

class CDecalDescription;
class CDecal {
  static CRandom16 sDecalRandom;
  static bool sMoveRedToAlpha;

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

  private:
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

private:
  TLockedToken< CDecalDescription > x0_description;
  CTransform4f xc_transform;
  CQuadDecal x3c_quad1;
  CQuadDecal x48_quad2;
  int x54_modelLifetime;
  int x58_frameIdx;
  int x5c_flags;
  CVector3f x60_rotation;
};
#endif // _CDECAL
