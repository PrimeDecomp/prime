#ifndef _CANIMSOURCEREADERBASE
#define _CANIMSOURCEREADERBASE

#include "Kyoto/Animation/IAnimReader.hpp"
#include "rstl/object_owner.hpp"
#include "rstl/pair.hpp"
#include "rstl/vector.hpp"

class IAnimSourceInfo {
public:
  virtual bool HasPOIData() const = 0;
  virtual const rstl::vector< CBoolPOINode >& GetBoolPOIStream() const = 0;
  virtual const rstl::vector< CInt32POINode >& GetInt32POIStream() const = 0;
  virtual const rstl::vector< CParticlePOINode >& GetParticlePOIStream() const = 0;
  virtual const rstl::vector< CSoundPOINode >& GetSoundPOIStream() const = 0;
  virtual CCharAnimTime GetAnimationDuration() const = 0;
  virtual ~IAnimSourceInfo() {}
};
CHECK_SIZEOF(IAnimSourceInfo, 0x4)

class CAnimSourceReaderBase : public IAnimReader {
public:
  ~CAnimSourceReaderBase() override;
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

  CAnimSourceReaderBase(const rstl::ownership_transfer< IAnimSourceInfo >& sourceInfo)
  : x4_sourceInfo(sourceInfo), xc_curTime(0.f) {}
  void PostConstruct(const CCharAnimTime& time);
  void UpdatePOIStates();
  const CCharAnimTime& GetCurTime() const { return xc_curTime; }

protected:
  rstl::object_owner< IAnimSourceInfo > x4_sourceInfo;
  CCharAnimTime xc_curTime;
  uint x14_passedBoolCount;
  uint x18_passedIntCount;
  uint x1c_passedParticleCount;
  uint x20_passedSoundCount;
  rstl::vector< rstl::pair< rstl::string, bool > > x24_boolStates;
  rstl::vector< rstl::pair< rstl::string, s32 > > x34_int32States;
  rstl::vector< rstl::pair< rstl::string, CParticleData::EParentedMode > > x44_particleStates;
};
CHECK_SIZEOF(CAnimSourceReaderBase, 0x54)

#endif // _CANIMSOURCEREADERBASE
