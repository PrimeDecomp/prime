#include "Kyoto/Particles/CParticleGlobals.hpp"

int CParticleGlobals::mParticleLifetime;
float CParticleGlobals::mParticleLifetimeReal;
int CParticleGlobals::mEmitterTime;
float CParticleGlobals::mEmitterTimeReal;
int CParticleGlobals::mParticleLifetimePercentage;
float CParticleGlobals::mParticleLifetimePercentageReal;
float CParticleGlobals::mParticleLifetimePercentageRemainder;
CElementGen::CParticle* CParticleGlobals::mCurrentParticle;
float* CParticleGlobals::mParticleAccessParameters;
CParticleGlobals::SParticleSystem* CParticleGlobals::mCurrentParticleSystem;

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
