#ifndef _CGAMEHINTINFO
#define _CGAMEHINTINFO

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"
#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CInputStream;

class CGameHintInfo {
public:
  struct SHintLocation {
    CAssetId x0_mlvlId;
    CAssetId x4_mreaId;
    TAreaId x8_areaId;
    CAssetId xc_stringId;

    SHintLocation(CInputStream& in);
  };

  class CGameHint {
  public:
    CGameHint(CInputStream& in, uint version);
    CGameHint(const CGameHint& other);
    ~CGameHint();

    const rstl::string& GetName() const { return x0_name; }
    float GetImmediateTime() const { return x10_immediateTime; }
    float GetNormalTime() const { return x14_normalTime; }
    CAssetId GetStringId() const { return x18_stringId; }
    float GetTextTime() const { return x1c_textTime; }
    const rstl::vector< SHintLocation >& GetLocations() const { return x20_locations; }

    rstl::string x0_name;
    float x10_immediateTime;
    float x14_normalTime;
    CAssetId x18_stringId;
    float x1c_textTime;
    rstl::vector< SHintLocation > x20_locations;
  };

  CGameHintInfo(CInputStream& in, uint version);

  const rstl::vector< CGameHint >& GetHints() const { return x0_hints; }

  static int FindHintIndex(const char* name);

private:
  rstl::vector< CGameHint > x0_hints;
};

NESTED_CHECK_SIZEOF(CGameHintInfo, SHintLocation, 0x10)
NESTED_CHECK_SIZEOF(CGameHintInfo, CGameHint, 0x30)

#endif // _CGAMEHINTINFO
