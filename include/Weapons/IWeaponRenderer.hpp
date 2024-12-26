#ifndef _IWEAPONRENDERER
#define _IWEAPONRENDERER

#include "Kyoto/Alloc/CMemory.hpp"

class CParticleGen;

class IWeaponRenderer {
public:
  virtual ~IWeaponRenderer() = 0;
  virtual void AddParticleGen(const CParticleGen& gen) = 0;
  static void SetRenderer(IWeaponRenderer* renderer) { sWeaponRenderer = renderer; }
  static IWeaponRenderer* GetRenderer() { return sWeaponRenderer; }

private:
  static IWeaponRenderer* sWeaponRenderer;
};

inline IWeaponRenderer::~IWeaponRenderer() {}

#endif // _IWEAPONRENDERER
