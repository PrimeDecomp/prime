#include "MetroidPrime/Tweaks/CTweakPlayerRes.hpp"

#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

#include "rstl/string.hpp"

#include <string.h>

#pragma inline_max_size(250)

static inline CAssetId get_asset_id_from_name(const char* name) {
  CAssetId id = gpResourceFactory->GetResourceIdByName(name)->GetId();
  return id;
}

template < int N >
inline rstl::reserved_vector< CAssetId, N > read_asset_ids(CInputStream& in) {
  rstl::reserved_vector< CAssetId, N > ids;
  for (int i = 0; i < N; ++i) {
    ids.push_back(get_asset_id_from_name(rstl::string(in).c_str()));
  }
  return ids;
}

CTweakPlayerRes::CTweakPlayerRes(CInputStream& in)
: x4_saveStationIcon(get_asset_id_from_name(rstl::string(in).c_str()))
, x8_missileStationIcon(get_asset_id_from_name(rstl::string(in).c_str()))
, xc_elevatorIcon(get_asset_id_from_name(rstl::string(in).c_str()))
, x10_minesBreakFirstTopIcon(get_asset_id_from_name(rstl::string(in).c_str()))
, x14_minesBreakFirstBottomIcon(get_asset_id_from_name(rstl::string(in).c_str()))
, x18_minesBreakSecondTopIcon(get_asset_id_from_name(rstl::string(in).c_str()))
, x1c_minesBreakSecondBottomIcon(get_asset_id_from_name(rstl::string(in).c_str()))
, x20_lStick(read_asset_ids< 9 >(in))
, x48_cStick(read_asset_ids< 9 >(in))
, x70_lTrigger(read_asset_ids< 2 >(in))
, x7c_rTrigger(read_asset_ids< 2 >(in))
, x88_startButton(read_asset_ids< 2 >(in))
, x94_aButton(read_asset_ids< 2 >(in))
, xa0_bButton(read_asset_ids< 2 >(in))
, xac_xButton(read_asset_ids< 2 >(in))
, xb8_yButton(read_asset_ids< 2 >(in))
, xc4_ballTransitionsANCS(0)
, xf0_cinematicMoveOutofIntoPlayerDistance(5.f) {
  memset(xc8_ballTransitions, 0, sizeof(xc8_ballTransitions));
  memset(xdc_cineGun, 0, sizeof(xdc_cineGun));

  const rstl::string ballTransitions(in);
  xc4_ballTransitionsANCS = get_asset_id_from_name(ballTransitions.c_str());
  for (int i = 0; i < 5; ++i) {
    const rstl::string name(in);
    xc8_ballTransitions[i] = get_asset_id_from_name(name.c_str());
  }
  for (int i = 0; i < 5; ++i) {
    const rstl::string name(in);
    xdc_cineGun[i] = get_asset_id_from_name(name.c_str());
  }
  xf0_cinematicMoveOutofIntoPlayerDistance = in.ReadFloat();
}

CAssetId CTweakPlayerRes::GetBallTransitionBeamResId(CPlayerState::EBeamId id) const {
  if (id < CPlayerState::kBI_Power || id > CPlayerState::kBI_Phazon) {
    return xc8_ballTransitions[0];
  }
  return xc8_ballTransitions[id];
}

CAssetId CTweakPlayerRes::GetCinematicBeamResId(CPlayerState::EBeamId id) const {
  if (id < CPlayerState::kBI_Power || id > CPlayerState::kBI_Phazon) {
    return xdc_cineGun[0];
  }
  return xdc_cineGun[id];
}
