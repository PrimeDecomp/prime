#ifndef _CPARTICLEGLOBALS
#define _CPARTICLEGLOBALS

#include "types.h"

#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/Particles/CElementGen.hpp"

class CParticleGlobals {
public:
  struct SParticleSystem {
    FourCC x0_type;
    CElementGen* x4_system;
  };

  static void SetEmitterTime(int time);
  static void SetParticleLifetime(int lifetime);
  static void UpdateParticleLifetimeTweenValues(int time);

  static int GetParticleLifetime() { return mParticleLifetime; }
  static float GetParticleLifetimeReal() { return mParticleLifetimeReal; }
  static int GetEmitterTime() { return mEmitterTime; }
  static float GetEmitterTimeReal() { return mEmitterTimeReal; }
  static int GetParticleLifetimePercentage() { return mParticleLifetimePercentage; }
  static float GetParticleLifetimePercentageReal() { return mParticleLifetimePercentageReal; }
  static float GetParticleLifetimePercentageRemainder() {
    return mParticleLifetimePercentageRemainder;
  }
  static CElementGen::CParticle* GetCurrentParticle() { return mCurrentParticle; }
  static float* GetParticleAccessParameters() { return mParticleAccessParameters; }
  static SParticleSystem* GetCurrentParticleSystem() { return mCurrentParticleSystem; }

private:
  static int mParticleLifetime;
  static float mParticleLifetimeReal;
  static int mEmitterTime;
  static float mEmitterTimeReal;
  static int mParticleLifetimePercentage;
  static float mParticleLifetimePercentageReal;
  static float mParticleLifetimePercentageRemainder;
  static CElementGen::CParticle* mCurrentParticle;
  static float* mParticleAccessParameters;
  static SParticleSystem* mCurrentParticleSystem;
};

#endif // _CPARTICLEGLOBALS
