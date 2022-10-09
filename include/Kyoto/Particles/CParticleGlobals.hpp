#ifndef _CPARTICLEGLOBALS
#define _CPARTICLEGLOBALS

class CParticleGlobals {
public:
  static void SetEmitterTime(int time);
  static void SetParticleLifetime(int lifetime);
  static void UpdateParticleLifetimeTweenValues(int time);
};

#endif // _CPARTICLEGLOBALS
