#ifndef MP1_CSEQUENCEFUNDAMENTALS_HPP
#define MP1_CSEQUENCEFUNDAMENTALS_HPP
#include "Kyoto/Animation/CBoolPOINode.hpp"
#include "Kyoto/Animation/CInt32POINode.hpp"
#include "Kyoto/Animation/CParticlePOINode.hpp"
#include "Kyoto/Animation/CSoundPOINode.hpp"
#include "Kyoto/Animation/CSteadyStateAnimInfo.hpp"

class CSequenceFundamentals {
public:
  CSequenceFundamentals(
      const rstl::vector< CBoolPOINode >& boolNodes,
      const rstl::vector< CInt32POINode >& int32Nodes,
      const rstl::vector< CParticlePOINode >& particleNodes,
      const rstl::vector< CSoundPOINode >& soundNodes)
  : x0_steadyStateAnimInfo(false, CCharAnimTime::Infinity(), CVector3f::Zero())
  , x18_boolPOINodes(boolNodes)
  , x38_int32POINodes(int32Nodes)
  , x48_particlePOINodes(particleNodes)
  , x58_soundPOINodes(soundNodes) {}

private:
  CSteadyStateAnimInfo x0_steadyStateAnimInfo;
  rstl::vector< CBoolPOINode > x18_boolPOINodes;
  rstl::vector< CInt32POINode > x38_int32POINodes;
  rstl::vector< CParticlePOINode > x48_particlePOINodes;
  rstl::vector< CSoundPOINode > x58_soundPOINodes;
};
#endif // MP1_CSEQUENCEFUNDAMENTALS_HPP
