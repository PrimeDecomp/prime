#ifndef __CPARTICLEGLOBALS_HPP__
#define __CPARTICLEGLOBALS_HPP__

class CParticleGlobals {
public:
  static void SetEmitterTime(int time);
  static void SetParticleLifetime(int lifetime);
  static void UpdateParticleLifetimeTweenValues(int time);
};

#endif // __CPARTICLEGLOBALS_HPP__
