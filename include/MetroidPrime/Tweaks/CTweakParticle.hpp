#ifndef _CTWEAKPARTICLE
#define _CTWEAKPARTICLE

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/TOneStatic.hpp"

#include "rstl/string.hpp"

class CInputStream;
class CTweakParticle;

class CTweakParticle : public ITweakObject, public TOneStatic< CTweakParticle > {
  rstl::string m_particle;
  rstl::string m_powerBeam;
  rstl::string m_genThrust;

public:
  CTweakParticle(CInputStream&);
  ~CTweakParticle();
};

#endif // _CTWEAKPARTICLE
