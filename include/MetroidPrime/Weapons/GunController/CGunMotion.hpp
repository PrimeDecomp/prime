#ifndef _CGUNMOTION_HPP
#define _CGUNMOTION_HPP

#include "MetroidPrime/CModelData.hpp"

#include "Kyoto/CToken.hpp"
#include "Kyoto/CObjectReference.hpp"

#include "rstl/vector.hpp"

class CVector3f;
class CStateManager;

namespace SamusGun {
enum EAnimationState {
  kAS_Wander,
  kAS_Fidget,
  kAS_Struck,
  kAS_FreeLook,
  kAS_ComboFire,
  kAS_Idle,
  kAS_BasePosition,
};
enum EFidgetType {
  kFT_Invalid = -1,
  kFT_Minor,
  kFT_Major,
};
} // namespace SamusGun

class CGunMotion {
public:
  CGunMotion(CAssetId ancsId, const CVector3f& scale);
  ~CGunMotion();

  bool PlayPasAnim(SamusGun::EAnimationState state, CStateManager& mgr, float angle, bool bigStrike);
  void BasePosition(bool bigStrikeReset);
  void ReturnToDefault(CStateManager& mgr, bool setState);

  CModelData& GetModelData() { return x0_modelData; }
  const CModelData& GetModelData() const { return x0_modelData; }
  bool IsAnimPlaying() const { return xb8_24_animPlaying; }

private:
  CModelData x0_modelData;
  u8 x4c_pad[0x5C];
  rstl::vector<CToken> xa8_anims;
  bool xb8_24_animPlaying : 1;
};
CHECK_SIZEOF(CGunMotion, 0xbc)

#endif // _CGUNMOTION_HPP
