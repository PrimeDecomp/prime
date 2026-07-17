#include "MetroidPrime/Enemies/CPuddleToadGamma.hpp"

#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Math/CAbsAngle.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Text/CColorOverrideInstruction.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"

const CVector3f CPuddleToadGamma::skBellyOffset(0.f, 0.1f, -0.3f);
const char* CPuddleToadGamma::mMouthLocatorName = "MOUTH_LCTR_SDK";
const char* CPuddleToadGamma::mBellyLocatorName = "SAMUS_POS_LCTR_SDK";

CPuddleToadGamma::CPuddleToadGamma(
    const TUniqueId uid, const rstl::string& name, const EFlavorType flavor,
    const CEntityInfo& info, const CTransform4f& xf, const CModelData& mData,
    const CPatternedInfo& pInfo, const CActorParameters& aParms, const float suckForceMultiplier,
    const float suckAngle, const float playerSuckRange, const CVector3f localShootDir,
    const float playerShootSpeed, const float shouldAttackWaitTime, const float spotPlayerWaitTime,
    const CDamageInfo& playerShootDamage, const CDamageInfo& dInfo2, const CAssetId dcln)
: CPatterned(kC_PuddleToad, uid, name, flavor, info, xf, mData, pInfo, kMT_Flyer, kCT_Zero,
             kBT_Restricted, aParms, kKBV_Large)
, x568_stateProg(0.f)
, x56c_waitTimer(0.f)
, x570_playerShootDamage(playerShootDamage)
, x58c_dInfo2(dInfo2)
, x5a8_suckForceMultiplier(suckForceMultiplier)
, x5ac_minSuckAngleProj(cosine(CRelAngle::FromDegrees(suckAngle / 2.f)))
, x5b0_playerSuckRange(playerSuckRange)
, x5b4_localShootDir(localShootDir)
, x5c0_playerShootSpeed(playerShootSpeed)
, x5c4_shouldAttackWaitTime(shouldAttackWaitTime)
, x5c8_spotPlayerWaitTime(spotPlayerWaitTime)
, x5cc_suckPoint(CVector3f::Zero())
, x5d8_damageablePoint(CVector3f::Zero())
, x5e8_24_playerInside(false)
, x5e8_25_waitTimerActive(false)
, x5e8_26_shotPlayer(false) {
  x401_26_disableMove = true;
  GetKnockBackCtrl().SetEnableBurn(false);
  GetKnockBackCtrl().SetEnableLaggedBurnDeath(false);
  GetKnockBackCtrl().SetEnableShock(false);
  GetKnockBackCtrl().SetEnableFreeze(false);
  GetKnockBackCtrl().SetX81_31(false);
  SetMovable(false);

  if (dcln != kInvalidAssetId && gpResourceFactory->GetResourceTypeById(dcln) != 0) {
    TLockedToken< CCollidableOBBTreeGroupContainer > container =
        TLockedToken< CCollidableOBBTreeGroupContainer >(
            gpSimplePool->GetObj(SObjectTag('DCLN', dcln)));

    x5e4_collisionTreePrim = rs_new CCollidableOBBTreeGroup(*container, GetMaterialList());
  }
}

void CPuddleToadGamma::Think(float dt, CStateManager& mgr) {
  CPatterned::Think(dt, mgr);
  if (x5e8_25_waitTimerActive) {
    x56c_waitTimer += dt;
  }
}

bool CPuddleToadGamma::PlayerInVortexArea(const CStateManager& mgr) {
  return false;
}

void CPuddleToadGamma::SuckPlayer(CStateManager& mgr, float arg) {
  CPlayer* player = mgr.Player();
  const CVector3f playerPos = player->GetTranslation();
  const CVector3f posDiff = playerPos - x5cc_suckPoint;
  if (player->GetMorphballTransitionState() == CPlayer::kMS_Morphed) {
    const float mag = posDiff.Magnitude();
    if (mag < 3.f) {
      player->Stop();
      CenterPlayer(mgr, x5cc_suckPoint, arg);
    } else {
      float force = x5a8_suckForceMultiplier * (x5b0_playerSuckRange / (mag * mag));
      CVector3f forceVec = -posDiff * player->GetMass() * force;
      player->ApplyForceWR(forceVec, CAxisAngle::Identity());
    }
  }
}