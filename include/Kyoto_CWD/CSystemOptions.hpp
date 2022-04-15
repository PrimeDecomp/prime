#ifndef _CSYSTEMOPTIONS_HPP
#define _CSYSTEMOPTIONS_HPP

#include "types.h"

#include "TGameTypes.hpp"
#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CSystemOptions {
public:
  CSystemOptions();

  void SetHasFusion(bool v);
  bool GetHasFusion() const { return xd0_27_fusionBeat; }

private:
  rstl::reserved_vector< u8, 98 > x0_nesState;
  rstl::reserved_vector< bool, 64 > x68_;
  rstl::vector< rstl::pair< CAssetId, TEditorId > > xac_cinematicStates;
  int xbc_autoMapperKeyState;
  int xc0_frozenFpsCount;
  int xc4_frozenBallCount;
  int xc8_powerBombAmmoCount;
  int xcc_logScanPercent;
  bool xd0_24_fusionLinked : 1;
  bool xd0_25_normalModeBeat : 1;
  bool xd0_26_hardModeBeat : 1;
  bool xd0_27_fusionBeat : 1;
  bool xd0_28_fusionSuitActive : 1;
  bool xd0_29_allItemsCollected : 1;
};

#endif
