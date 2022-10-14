#include "MetroidPrime/Tweaks/CTweakParticle.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CTweakParticle::~CTweakParticle() {}

CTweakParticle::CTweakParticle(CInputStream& in)
: m_particle(in), m_powerBeam(in), m_genThrust(in) 
{
}
