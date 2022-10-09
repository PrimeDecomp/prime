#ifndef _CPOINODE
#define _CPOINODE

#include "types.h"

#include "MetroidPrime/CCharAnimTime.hpp"
#include "MetroidPrime/CParticleData.hpp"

#include "rstl/string.hpp"

enum EPOIType {
  kPT_Loop = 0,
  kPT_EmptyBool = 1,
  kPT_EmptyInt32 = 2,
  kPT_SoundInt32 = 4,
  kPT_Particle = 5,
  kPT_UserEvent = 6,
  kPT_RandRate = 7,
  kPT_Sound = 8,
};

class CPOINode {
public:
  virtual ~CPOINode();

  const rstl::string& GetString() const { return x8_name; }
  EPOIType GetPoiType() const { return static_cast< EPOIType >(x18_type); }
  const CCharAnimTime& GetTime() const { return x1c_time; }
  f32 GetWeight() const { return x2c_weight; }
  int GetCharacterIndex() const { return x30_charIdx; }
  int GetFlags() const { return x34_flags; }

protected:
  u16 x4_;
  rstl::string x8_name;
  u16 x18_type;
  CCharAnimTime x1c_time;
  int x24_index;
  bool x28_unique;
  f32 x2c_weight;
  int x30_charIdx;
  int x34_flags;
};
CHECK_SIZEOF(CPOINode, 0x38)

class CBoolPOINode : public CPOINode {
public:
  // __ct__12CBoolPOINodeFQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>UsRC13CCharAnimTimeibfiib
  // __ct__12CBoolPOINodeFR12CInputStream
  // CopyNodeMinusStartTime__12CBoolPOINodeFRC12CBoolPOINodeRC13CCharAnimTime

  bool GetValue() const { return x38_val; }

private:
  bool x38_val;
};

class CInt32POINode : public CPOINode {
public:
  // __ct__13CInt32POINodeFQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>UsRC13CCharAnimTimeibfiiiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>
  // CopyNodeMinusStartTime__13CInt32POINodeFRC13CInt32POINodeRC13CCharAnimTime

  int GetValue() const { return x38_val; }
  const rstl::string& GetLocatorName() const { return x3c_lctrName; }

private:
  int x38_val;
  rstl::string x3c_lctrName;
};

class CParticlePOINode : public CPOINode {
private:
  CParticleData x38_data;
};

class CSoundPOINode : public CPOINode {
public:
  uint GetSoundId() const { return x38_sfxId; }
  f32 GetFallOff() const { return x3c_falloff; }
  f32 GetMaxDistance() const { return x40_maxDist; }

private:
  uint x38_sfxId;
  f32 x3c_falloff;
  f32 x40_maxDist;
};

#endif // _CPOINODE
