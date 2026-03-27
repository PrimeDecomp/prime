#ifndef _CSEQUENCEHELPER
#define _CSEQUENCEHELPER

#include "Kyoto/Animation/CAnimSysContext.hpp"
#include "Kyoto/Animation/CAnimTreeNode.hpp"
#include "Kyoto/Animation/IAnimReader.hpp"

#include "rstl/rc_ptr.hpp"
#include "rstl/vector.hpp"

class CBoolPOINode;
class CInt32POINode;
class CParticlePOINode;
class CSoundPOINode;
class IMetaAnim;

class CSequenceFundamentals {
public:
  CSequenceFundamentals(const CSteadyStateAnimInfo& ssInfo,
                        const rstl::vector< CBoolPOINode >& boolNodes,
                        const rstl::vector< CInt32POINode >& int32Nodes,
                        const rstl::vector< CParticlePOINode >& particleNodes,
                        const rstl::vector< CSoundPOINode >& soundNodes);
  CSequenceFundamentals(const CSequenceFundamentals& other);
  ~CSequenceFundamentals();

  CSequenceFundamentals& operator=(const CSequenceFundamentals& other);

  const CSteadyStateAnimInfo& GetSteadyStateAnimInfo() const { return x0_ssInfo; }
  const rstl::vector< CBoolPOINode >& GetBoolPointsOfInterest() const { return x18_boolNodes; }
  const rstl::vector< CInt32POINode >& GetInt32PointsOfInterest() const { return x28_int32Nodes; }
  const rstl::vector< CParticlePOINode >& GetParticlePointsOfInterest() const {
    return x38_particleNodes;
  }
  const rstl::vector< CSoundPOINode >& GetSoundPointsOfInterest() const { return x48_soundNodes; }

private:
  CSteadyStateAnimInfo x0_ssInfo;
  rstl::vector< CBoolPOINode > x18_boolNodes;
  rstl::vector< CInt32POINode > x28_int32Nodes;
  rstl::vector< CParticlePOINode > x38_particleNodes;
  rstl::vector< CSoundPOINode > x48_soundNodes;
};
CHECK_SIZEOF(CSequenceFundamentals, 0x58)

class CSequenceHelper {
public:
  CSequenceHelper(const rstl::vector< rstl::rc_ptr< IMetaAnim > >& anims,
                  const CAnimSysContext& animSys);
  CSequenceHelper(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                  const rstl::ncrc_ptr< CAnimTreeNode >& b, const CAnimSysContext& animSys);
  ~CSequenceHelper();

  CSequenceFundamentals ComputeSequenceFundamentals() const;

private:
  CAnimSysContext x0_animCtx;
  rstl::vector< rstl::ncrc_ptr< CAnimTreeNode > > x10_treeNodes;
  rstl::vector< bool > x20_;
};

#endif // _CSEQUENCEHELPER
