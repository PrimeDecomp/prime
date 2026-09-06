#ifndef _CANIMTREETIMESCALE
#define _CANIMTREETIMESCALE

#include "Kyoto/Animation/CAnimTreeSingleChild.hpp"
#include "Kyoto/Animation/CTimeScaleFunctions.hpp"
#include "rstl/object_owner.hpp"

class CAnimTreeTimeScale : public CAnimTreeSingleChild {
public:
  ~CAnimTreeTimeScale() override {}
  SAdvancementResults VAdvanceView(const CCharAnimTime& time) override;
  CCharAnimTime VGetTimeRemaining() const override;
  CSteadyStateAnimInfo VGetSteadyStateAnimInfo() const override;
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
  rstl::ownership_transfer< IAnimReader > VClone() const override;
  rstl::optional_object< rstl::ownership_transfer< IAnimReader > > VSimplified() override;
  void VSetPhase(float phase) override;
  CAnimTreeEffectiveContribution VGetContributionOfHighestInfluence() const override;
  rstl::rc_ptr< CAnimTreeNode > VGetBestUnblendedChild() const override;

  CAnimTreeTimeScale(const rstl::ncrc_ptr< CAnimTreeNode >& node, float timeScale,
                     const rstl::string& name);
  CAnimTreeTimeScale(const rstl::ncrc_ptr< CAnimTreeNode >& node,
                     const rstl::ownership_transfer< IVaryingAnimationTimeScale >& timeScale,
                     const CCharAnimTime& time, const rstl::string& name)
  : CAnimTreeSingleChild(node, name)
  , x18_timeScale(timeScale)
  , x20_curAccelTime(0.f)
  , x28_targetAccelTime(time)
  , x30_initialTime(node->GetSteadyStateAnimInfo().GetDuration() - node->GetTimeRemaining()) {}

  static rstl::string CreatePrimitiveName(const rstl::ncrc_ptr< CAnimTreeNode >& node, float scaleA,
                                          const CCharAnimTime& time, float scaleB);
  CCharAnimTime GetRealLifeTime(const CCharAnimTime& time) const;

private:
  CAnimTreeTimeScale(const rstl::ncrc_ptr< CAnimTreeNode >& node,
                     const rstl::ownership_transfer< IVaryingAnimationTimeScale >& timeScale,
                     const CCharAnimTime& curTime, const CCharAnimTime& targetTime,
                     const CCharAnimTime& initialTime, const rstl::string& name)
  : CAnimTreeSingleChild(node, name)
  , x18_timeScale(timeScale)
  , x20_curAccelTime(curTime)
  , x28_targetAccelTime(targetTime)
  , x30_initialTime(initialTime) {}

  rstl::object_owner< IVaryingAnimationTimeScale > x18_timeScale;
  CCharAnimTime x20_curAccelTime;
  CCharAnimTime x28_targetAccelTime;
  CCharAnimTime x30_initialTime;
};
CHECK_SIZEOF(CAnimTreeTimeScale, 0x38)

#endif // _CANIMTREETIMESCALE
