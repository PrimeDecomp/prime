#ifndef _CPOINODE
#define _CPOINODE

#include "types.h"

#include "Kyoto/Animation/CCharAnimTime.hpp"
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

class CInputStream;
class CPOINode {
public:
  CPOINode(const rstl::string& name, ushort type, const CCharAnimTime& time, int index, bool unique,
           float weight, int charIdx, int flags);
  CPOINode(CInputStream& in);
  virtual ~CPOINode() {}

  const rstl::string& GetString() const { return x8_name; }
  const EPOIType GetPoiType() const { return static_cast< EPOIType >(x18_type); }
  const CCharAnimTime& GetTime() const { return x1c_time; }
  const int GetIndex() const { return x24_index; }
  const bool GetSaveState() const { return x28_unique; }
  const float GetWeight() const { return x2c_weight; }
  const int GetCharacterIndex() const { return x30_charIdx; }
  const int GetFlags() const { return x34_flags; }

  bool operator>(const CPOINode& other) const;
  bool operator<(const CPOINode& other) const;
  static int compare(const void* a, const void* b);

protected:
  ushort x4_;
  rstl::string x8_name;
  ushort x18_type;
  CCharAnimTime x1c_time;
  int x24_index;
  bool x28_unique;
  float x2c_weight;
  int x30_charIdx;
  int x34_flags;
};
CHECK_SIZEOF(CPOINode, 0x38)


#endif // _CPOINODE
