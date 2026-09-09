#ifndef _CANIMSOURCEREADER
#define _CANIMSOURCEREADER

#include "Kyoto/Animation/CAllFormatsAnimSource.hpp"
#include "Kyoto/Animation/CAnimSourceReaderBase.hpp"

class CAnimSourceInfo : public IAnimSourceInfo {
public:
  ~CAnimSourceInfo() override {}

  bool HasPOIData() const override { return x4_token->HasPOIData(); }
  const rstl::vector< CBoolPOINode >& GetBoolPOIStream() const override {
    return x4_token->GetBoolPOIStream();
  }
  const rstl::vector< CInt32POINode >& GetInt32POIStream() const override {
    return x4_token->GetInt32POIStream();
  }
  const rstl::vector< CParticlePOINode >& GetParticlePOIStream() const override {
    return x4_token->GetParticlePOIStream();
  }
  const rstl::vector< CSoundPOINode >& GetSoundPOIStream() const override {
    return x4_token->GetSoundPOIStream();
  }
  CCharAnimTime GetAnimationDuration() const override { return x4_token->GetAnimationDuration(); }

  CAnimSourceInfo(const TSubAnimTypeToken< CAnimSource >& source) : x4_token(source) {}

private:
  TSubAnimTypeToken< CAnimSource > x4_token;
};
CHECK_SIZEOF(CAnimSourceInfo, 0x14)

class CAnimSourceReader : public CAnimSourceReaderBase {
public:
  ~CAnimSourceReader() override {}
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

private:
  CAnimSourceReader(const TSubAnimTypeToken< CAnimSource >& source, const CCharAnimTime& time,
                    const CSteadyStateAnimInfo& steadyStateInfo, int passedBoolCount,
                    int passedIntCount, int passedParticleCount, int passedSoundCount,
                    const rstl::vector< rstl::pair< rstl::string, bool > >& boolStates,
                    const rstl::vector< rstl::pair< rstl::string, int > >& intStates,
                    const rstl::vector< rstl::pair< rstl::string, CParticleData::EParentedMode > >&
                        particleStates)
  : CAnimSourceReaderBase(rs_new CAnimSourceInfo(source), time, passedBoolCount, passedIntCount,
                          passedParticleCount, passedSoundCount, boolStates, intStates,
                          particleStates)
  , x54_source(source)
  , x64_steadyStateInfo(steadyStateInfo) {}

  TSubAnimTypeToken< CAnimSource > x54_source;
  CSteadyStateAnimInfo x64_steadyStateInfo;
};
CHECK_SIZEOF(CAnimSourceReader, 0x7c)

#endif // _CANIMSOURCEREADER
