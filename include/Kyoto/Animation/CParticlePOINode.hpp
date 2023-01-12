#ifndef _CPARTICLEPOINODE
#define _CPARTICLEPOINODE

#include "Kyoto/Animation/CPOINode.hpp"
#include "Kyoto/Particles/CParticleData.hpp"

class CParticlePOINode : public CPOINode {
public:
  CParticlePOINode(rstl::string name, ushort type, const CCharAnimTime& time, int index,
                   bool unique, float weight, int charIdx, int flags, const CParticleData& data);
  //: CPOINode(name, type, time, index, unique, weight, charIdx, flags), x38_val(value) {}

  explicit CParticlePOINode(CInputStream& in);

  const CParticleData& GetParticleData() const { return x38_data; }

  static CParticlePOINode CopyNodeMinusStartTime(const CParticlePOINode& node,
                                                 const CCharAnimTime& startTime);

private:
  CParticleData x38_data;
};

#endif // _CPARTICLEPOINODE
