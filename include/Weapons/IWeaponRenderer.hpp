#ifndef _IWEAPONRENDERER
#define _IWEAPONRENDERER

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Particles/CParticleGen.hpp"

class IWeaponRenderer {
public:
  virtual ~IWeaponRenderer() = 0;
  virtual void AddParticleGen(const CParticleGen& gen) = 0;
  static void SetRenderer(IWeaponRenderer* renderer) { sWeaponRenderer = renderer; }

private:
  static IWeaponRenderer* sWeaponRenderer;
};

inline IWeaponRenderer::~IWeaponRenderer() {}

class CDefaultWeaponRenderer : public IWeaponRenderer {
public:
  ~CDefaultWeaponRenderer() {}
  void AddParticleGen(const CParticleGen& gen) { gen.Render(); }
};

#endif // _IWEAPONRENDERER
