#ifndef _CANIMTREEDOUBLECHILD
#define _CANIMTREEDOUBLECHILD

#include "Kyoto/Animation/CAnimTreeNode.hpp"
class CAnimTreeDoubleChild : public CAnimTreeNode {
public:
  class CDoubleChildAdvancementResult {
    CCharAnimTime x0_trueAdvancement;
    SAdvancementDeltas x8_leftDeltas;
    SAdvancementDeltas x24_rightDeltas;

  public:
    CDoubleChildAdvancementResult(const CCharAnimTime& trueAdvancement,
                                  const SAdvancementDeltas& leftDeltas,
                                  const SAdvancementDeltas& rightDeltas);
    const SAdvancementDeltas& GetLeftAdvancementDeltas() const { return x8_leftDeltas; }
    const SAdvancementDeltas& GetRightAdvancementDeltas() const { return x24_rightDeltas; }
    const CCharAnimTime& GetTrueAdvancement() const { return x0_trueAdvancement; }
  };

protected:
  CDoubleChildAdvancementResult AdvanceViewBothChildren(const CCharAnimTime& time, bool runLeft,
                                                        bool loopLeft);

public:
  CAnimTreeDoubleChild(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                       const rstl::ncrc_ptr< CAnimTreeNode >& b, const rstl::string& name);
  ~CAnimTreeDoubleChild() override;
  SAdvancementResults VAdvanceView(const CCharAnimTime& a) override;
  uint VGetBoolPOIList(const CCharAnimTime& time, CBoolPOINode* listOut, uint capacity,
                       uint iterator, int unk) const override;
  uint VGetInt32POIList(const CCharAnimTime& time, CInt32POINode* listOut, uint capacity,
                        uint iterator, int unk) const override;
  uint VGetParticlePOIList(const CCharAnimTime& time, CParticlePOINode* listOut, uint capacity,
                           uint iterator, int unk) const override;
  uint VGetSoundPOIList(const CCharAnimTime& time, CSoundPOINode* listOut, uint capacity,
                        uint iterator, int unk) const override;
  bool VGetBoolPOIState(const char* name) const override;
  s32 VGetInt32POIState(const char* name) const override;
  CParticleData::EParentedMode VGetParticlePOIState(const char* name) const override;
  void VSetPhase(float) override;
  SAdvancementResults VGetAdvancementResults(const CCharAnimTime& a,
                                             const CCharAnimTime& b) const override;
  uint Depth() const override;
  CAnimTreeEffectiveContribution VGetContributionOfHighestInfluence() const override;
  uint VGetNumChildren() const override;
  rstl::rc_ptr< IAnimReader > VGetBestUnblendedChild() const override;
  void VGetWeightedReaders(
      float w, rstl::reserved_vector< rstl::pair< float, IAnimReader* >, 16 >& out) const override;

  virtual float VGetRightChildWeight() const = 0;
  float GetRightChildWeight() const { return VGetRightChildWeight(); }

  const rstl::rc_ptr< CAnimTreeNode >& GetLeftChild() const { return x14_a; }
  const rstl::rc_ptr< CAnimTreeNode >& GetRightChild() const { return x18_b; }

protected:
  rstl::rc_ptr< CAnimTreeNode > x14_a;
  rstl::rc_ptr< CAnimTreeNode > x18_b;
};

#endif // _CANIMTREEDOUBLECHILD
