#ifndef _CPROJECTILEINFO
#define _CPROJECTILEINFO

#include "MetroidPrime/CDamageInfo.hpp"

#include "Kyoto/TToken.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CPlayer;
class CWeaponDescription;

class CProjectileInfo {
  TCachedToken<CWeaponDescription> x0_weaponDescription;
  CDamageInfo xc_damageInfo;

public:
  CProjectileInfo(CAssetId, const CDamageInfo&);
  explicit CProjectileInfo(CInputStream&);

  float GetProjectileSpeed() const;
  CVector3f PredictInterceptPos(const CVector3f& gunPos, const CVector3f& aimPos, const CPlayer& player, bool gravity, float dt);
  static CVector3f PredictInterceptPos(const CVector3f& gunPos, const CVector3f& aimPos, const CPlayer& player, bool gravity, float speed, float dt);
};

#endif // _CPROJECTILEINFO
