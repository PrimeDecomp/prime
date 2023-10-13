#include "Weapons/IWeaponRenderer.hpp"

#include "Kyoto/Particles/CParticleGen.hpp"

class CDefaultWeaponRenderer : public IWeaponRenderer {
public:
  ~CDefaultWeaponRenderer() {}
  void AddParticleGen(const CParticleGen& gen) { gen.Render(); }
};

static CDefaultWeaponRenderer sDefaultRenderer;
IWeaponRenderer* IWeaponRenderer::sWeaponRenderer = &sDefaultRenderer;
