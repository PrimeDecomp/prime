#ifndef _CSEQUENCEFUNDAMENTALS
#define _CSEQUENCEFUNDAMENTALS
#include "Kyoto/Animation/CBoolPOINode.hpp"
#include "Kyoto/Animation/CInt32POINode.hpp"
#include "Kyoto/Animation/CParticlePOINode.hpp"
#include "Kyoto/Animation/CSoundPOINode.hpp"
#include "Kyoto/Animation/CSteadyStateAnimInfo.hpp"

class CSequenceFundamentals {
public:
  CSequenceFundamentals(const CSteadyStateAnimInfo& info,
                        const rstl::vector< CBoolPOINode >& boolNodes,
                        const rstl::vector< CInt32POINode >& int32Nodes,
                        const rstl::vector< CParticlePOINode >& particleNodes,
                        const rstl::vector< CSoundPOINode >& soundNodes)
  : x0_steadyStateAnimInfo(info)
  , x18_boolPOINodes(boolNodes)
  , x28_int32POINodes(int32Nodes)
  , x38_particlePOINodes(particleNodes)
  , x48_soundPOINodes(soundNodes) {}

  const CSteadyStateAnimInfo& GetSteadyStateAnimInfo() const { return x0_steadyStateAnimInfo; }
  const rstl::vector< CBoolPOINode >& GetBoolPointsOfInterest() const { return x18_boolPOINodes; }
  const rstl::vector< CInt32POINode >& GetInt32PointsOfInterest() const {
    return x28_int32POINodes;
  }
  const rstl::vector< CParticlePOINode >& GetParticlePointsOfInterest() const {
    return x38_particlePOINodes;
  }
  const rstl::vector< CSoundPOINode >& GetSoundPointsOfInterest() const {
    return x48_soundPOINodes;
  }

private:
  CSteadyStateAnimInfo x0_steadyStateAnimInfo;
  rstl::vector< CBoolPOINode > x18_boolPOINodes;
  rstl::vector< CInt32POINode > x28_int32POINodes;
  rstl::vector< CParticlePOINode > x38_particlePOINodes;
  rstl::vector< CSoundPOINode > x48_soundPOINodes;
};
CHECK_SIZEOF(CSequenceFundamentals, 0x58)
#endif // _CSEQUENCEFUNDAMENTALS
