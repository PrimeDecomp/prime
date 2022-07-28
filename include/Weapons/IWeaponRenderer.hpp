#ifndef __IWEAPONRENDERER_HPP__
#define __IWEAPONRENDERER_HPP__

class CParticleGen;
class IWeaponRenderer {
public:
    virtual ~IWeaponRenderer() {}
    virtual void AddParticleGen(const CParticleGen& gen) = 0;
    
    static void SetRenderer(IWeaponRenderer* renderer) { sWeaponRenderer = renderer; }
private:
    static IWeaponRenderer* sWeaponRenderer;
};


class CDefaultRenderer : public IWeaponRenderer {
public:
    ~CDefaultRenderer();
    void AddParticleGen(const CParticleGen& gen);
};

#endif //__IWEAPONRENDERER_HPP__
