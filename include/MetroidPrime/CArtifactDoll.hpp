#ifndef _CARTIFACTDOLL
#define _CARTIFACTDOLL

#include "MetroidPrime/CActorLights.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

#include <Kyoto/Graphics/CColor.hpp>
#include <Kyoto/Graphics/CLight.hpp>
#include <Kyoto/TToken.hpp>

#include <rstl/single_ptr.hpp>

class CModel;
class CArtifactDoll {
  static const CColor skPreColor;
  static const CColor skPostColor;

public:
  CArtifactDoll();
  ~CArtifactDoll();
  static CAssetId GetArtifactHeadScanFromItemType(CPlayerState::EItemType);
  static int GetArtifactHeadScanIndex(CAssetId scanId);
  static void UpdateArtifactHeadScan(CStateManager& mgr, const float delta);

  void CompleteArtifactHeadScan(CStateManager& mgr);
  void Draw(float alpha, const CStateManager& mgr, const bool inArtifactCategory,
            const CAssetId selectedArtifact);
  void Update(float dt, CStateManager& mgr);
  void Touch();
  bool CheckLoadComplete();
  const bool IsLoaded() const;

private:
  void UpdateActorLights();

  rstl::vector< CToken > mModels;
  rstl::vector< CLight > mLights;
  rstl::single_ptr< CActorLights > mActorLights;
  float mFader;
  bool mIsLoaded : 1;
};

#endif // _CARTIFACTDOLL
