#include "Weapons/IWeaponRenderer.hpp"

#include "Kyoto/Particles/CParticleGen.hpp"
#include "Kyoto/Alloc/CMemory.hpp"

static CDefaultRenderer sDefaultRenderer = CDefaultRenderer();
IWeaponRenderer* IWeaponRenderer::sWeaponRenderer = &sDefaultRenderer;


CDefaultRenderer::~CDefaultRenderer() {
}

void CDefaultRenderer::AddParticleGen(const CParticleGen& gen) {
    const_cast<CParticleGen&>(gen).Render();
}
