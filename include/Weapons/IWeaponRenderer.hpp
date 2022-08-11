#ifndef __IWEAPONRENDERER_HPP__
#define __IWEAPONRENDERER_HPP__

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Particles/CParticleGen.hpp"

class IWeaponRenderer {
public:
    virtual ~IWeaponRenderer() {};
    virtual void AddParticleGen(const CParticleGen& gen) = 0;
    static void SetRenderer(IWeaponRenderer* renderer) { sWeaponRenderer = renderer; }
private:
    static IWeaponRenderer* sWeaponRenderer;
};

class CDefaultWeaponRenderer : public IWeaponRenderer {
public:
    virtual ~CDefaultWeaponRenderer() {};
    void AddParticleGen(const CParticleGen& gen) { gen.Render(); }
};

#endif //__IWEAPONRENDERER_HPP__
