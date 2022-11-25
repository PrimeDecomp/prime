#ifndef _CGUNMOTION
#define _CGUNMOTION

#include "types.h"

#include "MetroidPrime/CModelData.hpp"
#include "MetroidPrime/Weapons/GunController/CGunController.hpp"

#include "Kyoto/CObjectReference.hpp"
#include "Kyoto/CToken.hpp"

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

  bool PlayPasAnim(SamusGun::EAnimationState state, CStateManager& mgr, float angle,
                   bool bigStrike);
  void Update(float, CStateManager&);
  void Draw(const CStateManager&, const CTransform4f&) const;
  void ReturnToDefault(CStateManager& mgr, bool);
  int GetFreeLookSetId() const;
  void BasePosition(bool bigStrikeReset);
  void EnterFidget(CStateManager&, SamusGun::EFidgetType, int);
  void LoadAnimations();

  CModelData& GetModelData() { return x0_modelData; }
  const CModelData& GetModelData() const { return x0_modelData; }
  bool IsAnimPlaying() const { return xb8_24_animPlaying; }

private:
  CModelData x0_modelData;
  CGunController x4c_gunController;
  rstl::vector< CToken > xa8_anims;
  bool xb8_24_animPlaying : 1;
};
CHECK_SIZEOF(CGunMotion, 0xbc)

#endif // _CGUNMOTION
