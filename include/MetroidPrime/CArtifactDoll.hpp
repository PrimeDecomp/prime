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
  static void UpdateArtifactHeadScan(const CStateManager& mgr, const float delta);

  void CompleteArtifactHeadScan(const CStateManager& mgr);
  void Draw(float alpha, const CStateManager& mgr, bool inArtifactCategory,
            const int selectedArtifact);
  void Update(float dt, const CStateManager& mgr);
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
CHECK_SIZEOF(CArtifactDoll, 0x2c)

#endif // _CARTIFACTDOLL
