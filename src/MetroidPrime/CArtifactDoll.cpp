#include "MetroidPrime/CArtifactDoll.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Graphics/CModel.hpp"
#include "Kyoto/Math/CloseEnough.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/TToken.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "rstl/math.hpp"
#include "rstl/rmemory_allocator.hpp"

const CColor CArtifactDoll::skPreColor((uchar)255, 160, 5, 255);
const CColor CArtifactDoll::skPostColor((uchar)103, 174, 225, 205);

namespace {
static const char* const ArtifactPieceModels[] = {
    "CMDL_Piece1",  // Truth
    "CMDL_Piece2",  // Strength
    "CMDL_Piece3",  // Elder
    "CMDL_Piece4",  // Wild
    "CMDL_Piece5",  // Lifegiver
    "CMDL_Piece6",  // Warrior
    "CMDL_Piece7",  // Chozo
    "CMDL_Piece8",  // Nature
    "CMDL_Piece9",  // Sun
    "CMDL_Piece10", // World
    "CMDL_Piece11", // Spirit
    "CMDL_Piece12"  // Newborn
};
static const CAssetId ArtifactScanIds[] = {
    0x32C9DDCEu, // Truth
    0xB45DAF60u, // Strength
    0x7F017CC5u, // Elder
    0x62044C7Du, // Wild
    0xA9589FD8u, // Lifegiver
    0x2FCCED76u, // Warrior
    0xE4903ED3u, // Chozo
    0x15C68C06u, // Nature
    0xDE9A5FA3u, // Sun
    0xFBBE9D9Au, // World
    0x30E24E3Fu, // Spirit
    0xB6763C91u  // Newborn
};
}; // namespace

CArtifactDoll::CArtifactDoll()
: mLights(2, CLight::BuildDirectional(CVector3f::Forward(), CColor(0xFFFFFFFF)),
          rstl::rmemory_allocator())
, mActorLights(rs_new CActorLights(8, CVector3f::Zero(), 4, 4))
, mFader(0.f)
, mIsLoaded(0) {

  mModels.reserve(12);
  for (int i = 0; i < ARRAY_SIZE(ArtifactPieceModels); ++i) {
    CToken model = gpSimplePool->GetObj(ArtifactPieceModels[i]);
    model.Lock();
    mModels.push_back(model);
  }
}

CArtifactDoll::~CArtifactDoll() {}

bool CArtifactDoll::CheckLoadComplete() {
  if (IsLoaded()) {
    return true;
  }

  for (rstl::vector< CToken >::iterator it = mModels.begin(); it != mModels.end(); ++it) {
    if (!it->IsLoaded()) {
      return false;
    }
  }
  mIsLoaded = true;

  return true;
}
const bool CArtifactDoll::IsLoaded() const { return !!mIsLoaded; }
void CArtifactDoll::UpdateActorLights() {
  mLights[0] = CLight::BuildDirectional(
      (CVector3f::Forward() + (CVector3f::Right() * 0.25f) + (CVector3f::Down() * 0.1f))
          .AsNormalized(),
      CColor((uchar)255, 255, 255));
  mLights[1] = CLight::BuildDirectional(-CVector3f::Forward(), CColor((uchar)0, 0, 0));
  mActorLights->BuildFakeLightList(mLights, CColor(0.25f, 0.25f, 0.25f));
}
void CArtifactDoll::Touch() {
  if (!CheckLoadComplete()) {
    return;
  }

  for (int i = 0; i < mModels.size(); ++i) {
    TToken< CModel >(mModels[i])->Touch(0);
  }
}

void CArtifactDoll::Update(float dt, CStateManager& mgr) {
  if (!CheckLoadComplete()) {
    return;
  }

  mFader = rstl::min_val(1.f, mFader + 2.f * dt);

  if (close_enough(mFader, 1.f)) {
    UpdateArtifactHeadScan(mgr, 0.5f * dt * 0.5f);
  }
  UpdateActorLights();
}
void CArtifactDoll::CompleteArtifactHeadScan(CStateManager& mgr) {
  UpdateArtifactHeadScan(mgr, 1.f);
}

void CArtifactDoll::UpdateArtifactHeadScan(CStateManager& mgr, const float delta) {
  for (int i = 0; i < ARRAY_SIZE(ArtifactScanIds); ++i) {
    if (mgr.PlayerState()->HasPowerUp(CPlayerState::EItemType(i + CPlayerState::kIT_Truth))) {
      const CAssetId id = ArtifactScanIds[i];
      mgr.PlayerState()->SetScanTime(
          id, rstl::min_val(1.f, delta + mgr.PlayerState()->GetScanTime(id)));
    }
  }
}

void CArtifactDoll::Draw(float alpha, const CStateManager& mgr, const bool inArtifactCategory,
                         const CAssetId selectedArtifact) {}
CAssetId CArtifactDoll::GetArtifactHeadScanFromItemType(CPlayerState::EItemType item) {
  if (item >= CPlayerState::kIT_Truth && item <= CPlayerState::kIT_Newborn) {
    int tmp = size_t(item) - CPlayerState::kIT_Truth;
    return ArtifactScanIds[tmp];
  }
  return kInvalidAssetId;
}

int CArtifactDoll::GetArtifactHeadScanIndex(CAssetId scanId) {
  for (size_t i = 0; i < ARRAY_SIZE(ArtifactScanIds); ++i) {
    if (ArtifactScanIds[i] == scanId) {
      return int(i);
    }
  }

  return -1;
}
