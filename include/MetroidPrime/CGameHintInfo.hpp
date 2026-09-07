#ifndef _CGAMEHINTINFO
#define _CGAMEHINTINFO

#include "types.h"

#include "Kyoto/SObjectTag.hpp"

#include "MetroidPrime/TGameTypes.hpp"
#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CInputStream;

class CGameHintInfo {
public:
  static const float skHintTextTime;

  struct SHintLocation {
    CAssetId x0_mlvlId;
    CAssetId x4_mreaId;
    TAreaId x8_areaId;
    CAssetId xc_stringId;

    SHintLocation(CInputStream& in);
  };

  class CGameHint {
  public:
    CGameHint(CInputStream& in, int version);

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

  private:
    void ReadLocations(CInputStream& in);
  };

  CGameHintInfo(CInputStream& in, int version);

  const rstl::vector< CGameHint >& GetHints() const { return x0_hints; }

  static int FindHintIndex(const rstl::string& name);

private:
  rstl::vector< CGameHint > x0_hints;
};

CHECK_SIZEOF(CGameHintInfo, 0x10)
NESTED_CHECK_SIZEOF(CGameHintInfo, SHintLocation, 0x10)
NESTED_CHECK_SIZEOF(CGameHintInfo, CGameHint, 0x30)

#endif // _CGAMEHINTINFO
