#include "Kyoto/Particles/CEffectComponent.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CEffectComponent::CEffectComponent(CInputStream& in)
: x0_name(in)
, x10_tag(GetSObjectTagFromStream(in))
, x18_boneName(in)
, x28_scale(in.Get<float>())
, x2c_parentedMode(CParticleData::EParentedMode(in.Get<uint>()))
, x30_flags(in.Get<uint>()) {}


SObjectTag CEffectComponent::GetSObjectTagFromStream(CInputStream& in) {
  const FourCC type = in.Get<CAssetId>();
  const CAssetId id = in.Get<CAssetId>();  
  return SObjectTag(type, id);
}
