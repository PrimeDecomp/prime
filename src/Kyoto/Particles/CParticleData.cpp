#include "Kyoto/Particles/CParticleData.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CParticleData::CParticleData(CInputStream& in)
: x0_duration(in.Get(TGetType(0)))
, x4_particle(in.Get(TGetType(0)), in.Get(TGetType(0)))
, xc_boneName(in.Get(TGetType< rstl::string >("")))
, x1c_scale(in.Get(TGetType(0.f)))
, x20_parentMode(EParentedMode(in.Get(TGetType< int >(0)))) {}
