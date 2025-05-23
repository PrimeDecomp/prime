#ifndef _IANIMREADER
#define _IANIMREADER

#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "Kyoto/Animation/CCharAnimTime.hpp"
#include "Kyoto/Particles/CParticleData.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/string.hpp"

struct SAdvancementDeltas {
  CVector3f x0_posDelta;
  CQuaternion xc_rotDelta;

  SAdvancementDeltas() : x0_posDelta(CVector3f::Zero()), xc_rotDelta(CQuaternion::NoRotation()) {}
  static SAdvancementDeltas Interpolate(const SAdvancementDeltas& a, const SAdvancementDeltas& b,
                                        float oldWeight, float newWeight);
  static SAdvancementDeltas Blend(const SAdvancementDeltas& a, const SAdvancementDeltas& b,
                                  float w);
};

struct SAdvancementResults {
  CCharAnimTime x0_remTime;
  SAdvancementDeltas x8_deltas;
  SAdvancementResults() {}
  SAdvancementResults(const CCharAnimTime& time) : x0_remTime(time) {}
};

class CSteadyStateAnimInfo {
  CCharAnimTime x0_duration;
  CVector3f x8_offset;
  bool x14_looping;

public:
  CSteadyStateAnimInfo(bool looping, const CCharAnimTime& duration, const CVector3f& offset)
  : x0_duration(duration), x8_offset(offset), x14_looping(looping) {}

  const CCharAnimTime& GetDuration() const { return x0_duration; }
  const CVector3f& GetOffset() const { return x8_offset; }
  bool IsLooping() const { return x14_looping; }
};

struct CAnimTreeEffectiveContribution {
  float x0_contributionWeight;
  rstl::string x4_name;
  CSteadyStateAnimInfo x14_ssInfo;
  CCharAnimTime x2c_remTime;
  u32 x34_dbIdx;

public:
  CAnimTreeEffectiveContribution(float cweight, const rstl::string& name,
                                 const CSteadyStateAnimInfo& ssInfo, const CCharAnimTime& remTime,
                                 u32 dbIdx)
  : x0_contributionWeight(cweight)
  , x4_name(name)
  , x14_ssInfo(ssInfo)
  , x2c_remTime(remTime)
  , x34_dbIdx(dbIdx) {}
  float GetContributionWeight() const { return x0_contributionWeight; }
  const rstl::string& GetPrimitiveName() const { return x4_name; }
  const CSteadyStateAnimInfo& GetSteadyStateAnimInfo() const { return x14_ssInfo; }
  const CCharAnimTime& GetTimeRemaining() const { return x2c_remTime; }
  u32 GetAnimDatabaseIndex() const { return x34_dbIdx; }
};

class CSegId;
class CSegIdList;
class CBoolPOINode;
class CInt32POINode;
class CParticlePOINode;
class CSoundPOINode;
class CSegStatementSet;

class IAnimReader {
public:
  virtual ~IAnimReader();
  virtual bool IsCAnimTreeNode() const { return false; }
  virtual SAdvancementResults VAdvanceView(const CCharAnimTime& a) = 0;
  virtual CCharAnimTime VGetTimeRemaining() const = 0;
  virtual CSteadyStateAnimInfo VGetSteadyStateAnimInfo() const = 0;
  virtual bool VHasOffset(const CSegId& seg) const = 0;
  virtual CVector3f VGetOffset(const CSegId& seg) const = 0;
  virtual CQuaternion VGetRotation(const CSegId& seg) const = 0;
  virtual uint VGetBoolPOIList(const CCharAnimTime& time, CBoolPOINode* listOut, uint capacity,
                               uint iterator, uint) const = 0;
  virtual uint VGetInt32POIList(const CCharAnimTime& time, CInt32POINode* listOut, uint capacity,
                                uint iterator, int) const = 0;
  virtual uint VGetParticlePOIList(const CCharAnimTime& time, CParticlePOINode* listOut,
                                   uint capacity, uint iterator, int) const = 0;
  virtual uint VGetSoundPOIList(const CCharAnimTime& time, CSoundPOINode* listOut, uint capacity,
                                uint iterator, int) const = 0;
  virtual bool VGetBoolPOIState(const rstl::string& name) const = 0;
  virtual s32 VGetInt32POIState(const rstl::string& name) const = 0;
  virtual CParticleData::EParentedMode VGetParticlePOIState(const rstl::string& name) const = 0;
  virtual void VGetSegStatementSet(const CSegIdList& list, CSegStatementSet& setOut) const = 0;
  virtual void VGetSegStatementSet(const CSegIdList& list, CSegStatementSet& setOut,
                                   const CCharAnimTime& time) const = 0;
  virtual rstl::auto_ptr< IAnimReader > VClone() const = 0;
  virtual rstl::optional_object< rstl::auto_ptr< IAnimReader > > VSimplified();
  virtual void VSetPhase(float) = 0;
  virtual SAdvancementResults VGetAdvancementResults(const CCharAnimTime& aTime,
                                                     const CCharAnimTime& bTime) const;
  virtual uint Depth() const = 0;

  uint GetBoolPOIList(const CCharAnimTime& time, CBoolPOINode* listOut, uint capacity,
                      uint iterator, int unk) const;

  uint GetInt32POIList(const CCharAnimTime& time, CInt32POINode* listOut, uint capacity,
                       uint iterator, int unk) const;

  uint GetParticlePOIList(const CCharAnimTime& time, CParticlePOINode* listOut, uint capacity,
                          uint iterator, int unk) const;

  uint GetSoundPOIList(const CCharAnimTime& time, CSoundPOINode* listOut, uint capacity,
                       uint iterator, int unk) const;
};

#endif // _IANIMREADER
