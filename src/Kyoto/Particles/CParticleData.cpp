#include "Kyoto/Particles/CParticleData.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CParticleData::CParticleData(CInputStream& in)
: x0_duration(in.Get(TGetType(x0_duration)))
, x4_particle(in)
, xc_boneName(in.Get(TGetType(xc_boneName)))
, x1c_scale(in.Get(TGetType(x1c_scale)))
, x20_parentMode(in.Get(TGetType(x20_parentMode))) {}
