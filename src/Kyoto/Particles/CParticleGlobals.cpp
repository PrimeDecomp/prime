#include "Kyoto/Particles/CParticleGlobals.hpp"

int CParticleGlobals::mParticleLifetime = 0.f;
float CParticleGlobals::mParticleLifetimeReal = 0.f;
int CParticleGlobals::mEmitterTime = 0;
float CParticleGlobals::mEmitterTimeReal = 0.f;
int CParticleGlobals::mParticleLifetimePercentage = 0;
float CParticleGlobals::mParticleLifetimePercentageReal = 0.f;
float CParticleGlobals::mParticleLifetimePercentageRemainder = 0.f;
CElementGen::CParticle* CParticleGlobals::mCurrentParticle = nullptr;
float* CParticleGlobals::mParticleAccessParameters = nullptr;
CParticleGlobals::SParticleSystem* CParticleGlobals::mCurrentParticleSystem = nullptr;

void CParticleGlobals::SetParticleLifetime(int lifetime) {
  mParticleLifetime = lifetime;
  mParticleLifetimeReal = static_cast< float >(lifetime);
}

void CParticleGlobals::SetEmitterTime(int time) {
  mEmitterTime = time;
  mEmitterTimeReal = static_cast< float >(time);
}

void CParticleGlobals::UpdateParticleLifetimeTweenValues(int time) {
  float d = mParticleLifetime != 0.f ? mParticleLifetime : 1.f;
  mParticleLifetimePercentageReal = time * 100.f / d;
  mParticleLifetimePercentage = mParticleLifetimePercentageReal;
  mParticleLifetimePercentageRemainder =
      mParticleLifetimePercentageReal - mParticleLifetimePercentage;
  if (mParticleLifetimePercentage < 0) {
    mParticleLifetimePercentage = 0;
  } else if (mParticleLifetimePercentage > 100) {
    mParticleLifetimePercentage = 100;
  }
}
