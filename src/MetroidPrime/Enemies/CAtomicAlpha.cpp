#include "MetroidPrime/Enemies/CAtomicAlpha.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Enemies/CPatternedInfo.hpp"
#include "MetroidPrime/TCastTo.hpp"

#include "float.h"

CAtomicAlpha::CAtomicAlpha(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                           const CTransform4f& xf, const CModelData& mData,
                           const CActorParameters& actParms, const CPatternedInfo& pInfo,
                           CAssetId bombWeapon, const CDamageInfo& bombDamage,
                           float bombDropDelay, float bombReappearDelay,
                           float bombRappearTime, CAssetId cmdl, bool invisible,
                           bool applyBeamAttraction)
: CPatterned(kC_AtomicAlpha, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Flyer, kCT_One,
             kBT_Flyer, actParms, kKBV_Medium)
, x568_24_inRange(false)
, x568_25_invisible(invisible)
, x568_26_applyBeamAttraction(applyBeamAttraction)
, x56c_bombDropDelay(bombDropDelay)
, x570_bombReappearDelay(bombReappearDelay)
, x574_bombRappearTime(bombRappearTime)
, x578_bombTime(0.f)
, x57c_curBomb(0)
, x580_pathFind(NULL, 3, pInfo.GetPathfindingIndex(), 1.f, 1.f)
, x664_steeringBehaviors()
, x668_bombProjectile(bombWeapon, bombDamage)
, x690_bombModel(CStaticRes(cmdl, mData.ScaleCopy())) {
  x668_bombProjectile.Token().Lock();
  x6dc_bombLocators.push_back(SBomb(rstl::string_l("bomb1_LCTR"), pas::kLT_Internal10, FLT_MAX));
  x6dc_bombLocators.push_back(SBomb(rstl::string_l("bomb2_LCTR"), pas::kLT_Internal11, FLT_MAX));
  x6dc_bombLocators.push_back(SBomb(rstl::string_l("bomb3_LCTR"), pas::kLT_Internal12, FLT_MAX));
  x6dc_bombLocators.push_back(SBomb(rstl::string_l("bomb4_LCTR"), pas::kLT_Internal13, FLT_MAX));
}

void CAtomicAlpha::Accept(IVisitor& visitor) { visitor.Visit(*this); }
