#ifndef _CANIMSOURCEREADER
#define _CANIMSOURCEREADER

#include "Kyoto/Animation/CAllFormatsAnimSource.hpp"
#include "Kyoto/Animation/CAnimSourceReaderBase.hpp"

class CAnimSourceInfo : public IAnimSourceInfo {
public:
  bool HasPOIData() const override;
  const rstl::vector< CBoolPOINode >& GetBoolPOIStream() const override;
  const rstl::vector< CInt32POINode >& GetInt32POIStream() const override;
  const rstl::vector< CParticlePOINode >& GetParticlePOIStream() const override;
  const rstl::vector< CSoundPOINode >& GetSoundPOIStream() const override;
  CCharAnimTime GetAnimationDuration() const override;
  ~CAnimSourceInfo() override;

  CAnimSourceInfo(const TSubAnimTypeToken< CAnimSource >& source);

private:
  TSubAnimTypeToken< CAnimSource > x4_token;
};
CHECK_SIZEOF(CAnimSourceInfo, 0x14)

class CAnimSourceReader : public CAnimSourceReaderBase {
public:
  ~CAnimSourceReader() override;
  CAdvancementResults VAdvanceView(const CCharAnimTime& time) override;
  CCharAnimTime VGetTimeRemaining() const override;
  CSteadyStateAnimInfo VGetSteadyStateAnimInfo() const override;
  bool VHasOffset(const CSegId& seg) const override;
  CVector3f VGetOffset(const CSegId& seg) const override;
  CQuaternion VGetRotation(const CSegId& seg) const override;
  void VGetSegStatementSet(const CSegIdList& list, CSegStatementSet& setOut) const override;
  void VGetSegStatementSet(const CSegIdList& list, CSegStatementSet& setOut,
                           const CCharAnimTime& time) const override;
  rstl::ownership_transfer< IAnimReader > VClone() const override;
  void VSetPhase(float phase) override;
  CAdvancementResults VGetAdvancementResults(const CCharAnimTime& a,
                                             const CCharAnimTime& b) const override;
  virtual CVector3f VGetOffset(const CSegId& seg, const CCharAnimTime& time) const;
  virtual bool VSupportsReverseView() const;
  virtual CAdvancementResults VReverseView(const CCharAnimTime& time);

  CAnimSourceReader(const TSubAnimTypeToken< CAnimSource >& source, const CCharAnimTime& time);
  CAnimSourceReader(const CAnimSourceReader& other);

private:
  TSubAnimTypeToken< CAnimSource > x54_source;
  CSteadyStateAnimInfo x64_steadyStateInfo;
};
CHECK_SIZEOF(CAnimSourceReader, 0x7c)

#endif // _CANIMSOURCEREADER
