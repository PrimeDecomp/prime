#ifndef _CSYSTEMOPTIONS
#define _CSYSTEMOPTIONS

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CSystemOptions {
public:
  CSystemOptions();
  explicit CSystemOptions(CInputStream&);
  ~CSystemOptions();
  void PutTo(COutputStream&) const;

  void SetHasFusion(bool v);
  bool GetHasFusion() const { return xd0_28_fusionSuitActive; }

  bool GetCinematicState(rstl::pair< CAssetId, TEditorId > cineId) const;
  void SetCinematicState(rstl::pair< CAssetId, TEditorId > cineId, bool state);

  bool GetShowPowerBombAmmoMessage() const;
  void IncrementPowerBombAmmoCount();

  bool GetAllItemsCollected() const { return xd0_29_allItemsCollected; }
  void SetAllItemsCollected(bool);

private:
  rstl::reserved_vector< uchar, 98 > x0_nesState;
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

#endif // _CSYSTEMOPTIONS
