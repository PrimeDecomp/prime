#include "Kyoto/Particles/CParticleData.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CParticleData::CParticleData(CInputStream& in)
: x0_duration(in.Get<int>())
, x4_particle(in)
, xc_boneName(in.Get< rstl::string >())
, x1c_scale(in.Get<float>())
, x20_parentMode(in.Get< int >()) {}
