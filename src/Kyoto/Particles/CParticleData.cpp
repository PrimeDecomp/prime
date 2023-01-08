#include "Kyoto/Particles/CParticleData.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CParticleData::CParticleData(CInputStream& in)
: x0_duration(in.ReadLong())
, x4_particle(in.ReadLong(), in.ReadLong())
, xc_boneName(in.Get<rstl::string>())
, x1c_scale(in.ReadFloat())
, x20_parentMode(EParentedMode(in.ReadLong())) {}
