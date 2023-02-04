#include "Kyoto/Particles/CParticleGen.hpp"

void CParticleGen::AddModifier(CWarp* warp) {
  x4_modifiersList.push_back(warp);
}
