#ifndef _CANIMTREESEQUENCE
#define _CANIMTREESEQUENCE

#include "Kyoto/Animation/CAnimSysContext.hpp"
#include "Kyoto/Animation/CAnimTreeSingleChild.hpp"
#include "Kyoto/Animation/CCharAnimTime.hpp"
#include "Kyoto/Animation/CSequenceHelper.hpp"

#include "rstl/rc_ptr.hpp"
#include "rstl/vector.hpp"

class IMetaAnim;

class CAnimTreeSequence : public CAnimTreeSingleChild {
public:
  CAnimTreeSequence(const rstl::vector< rstl::rc_ptr< IMetaAnim > >& seq,
                    const CAnimSysContext& animSys, const rstl::string& name);
  CAnimTreeSequence(const rstl::ncrc_ptr< CAnimTreeNode >& curNode,
                    const rstl::vector< rstl::rc_ptr< IMetaAnim > >& metaAnims,
                    const CAnimSysContext& animSys, int curIdx, const rstl::string& name,
                    const CSequenceFundamentals& fundamentals, const CCharAnimTime& time);

  // IAnimReader
  SAdvancementResults VAdvanceView(const CCharAnimTime& dt) override;
  CCharAnimTime VGetTimeRemaining() const override;
  CSteadyStateAnimInfo VGetSteadyStateAnimInfo() const override;
  uint VGetBoolPOIList(const CCharAnimTime& time, CBoolPOINode* listOut, uint capacity,
                       uint iterator, int) const override;
  uint VGetInt32POIList(const CCharAnimTime& time, CInt32POINode* listOut, uint capacity,
                        uint iterator, int) const override;
  uint VGetParticlePOIList(const CCharAnimTime& time, CParticlePOINode* listOut, uint capacity,
                           uint iterator, int) const override;
  uint VGetSoundPOIList(const CCharAnimTime& time, CSoundPOINode* listOut, uint capacity,
                        uint iterator, int) const override;
  rstl::ownership_transfer< IAnimReader > VClone() const override;

  // CAnimTreeNode
  CAnimTreeEffectiveContribution VGetContributionOfHighestInfluence() const override;
  rstl::rc_ptr< CAnimTreeNode > VGetBestUnblendedChild() const override;

  virtual bool VSupportsReverseView() const;
  virtual rstl::string VGetNodeType() const;

private:
  CAnimSysContext x18_animCtx;
  rstl::vector< rstl::rc_ptr< IMetaAnim > > x28_sequence;
  int x38_curIdx;
  CSequenceFundamentals x3c_fundamentals;
  CCharAnimTime x94_curTime;
};
CHECK_SIZEOF(CAnimTreeSequence, 0x9C)

#endif // _CANIMTREESEQUENCE
