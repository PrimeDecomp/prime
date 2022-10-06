#ifndef _CGUNMOTION_HPP
#define _CGUNMOTION_HPP

#include "Kyoto/CObjectReference.hpp"

class CVector3f;
class CStateManager;

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
