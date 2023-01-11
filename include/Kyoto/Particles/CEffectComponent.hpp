#ifndef _CEFFECTCOMPONENT
#define _CEFFECTCOMPONENT

#include "Kyoto/Particles/CParticleData.hpp"

#include "rstl/string.hpp"

class CEffectComponent {
public:
  explicit CEffectComponent(CInputStream& in);

  const rstl::string& GetComponentName() const { return x0_name; }
  const SObjectTag& GetParticleTag() const { return x10_tag; }
  const rstl::string& GetSegmentName() const { return x18_boneName; }
  float GetScale() const { return x28_scale; }
  CParticleData::EParentedMode GetParentedMode() const { return x2c_parentedMode; }
  uint GetFlags() const {return x30_flags; }

private:
  SObjectTag GetSObjectTagFromStream(CInputStream& in);

  rstl::string x0_name;
  SObjectTag x10_tag;
  rstl::string x18_boneName;
  float x28_scale;
  CParticleData::EParentedMode x2c_parentedMode;
  uint x30_flags;
};

#endif // _CEFFECTCOMPONENT
