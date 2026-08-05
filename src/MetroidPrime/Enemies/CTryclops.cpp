#include "MetroidPrime/Enemies/CTryclops.hpp"

#include "Kyoto/Math/CRelAngle.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Weapons/CBomb.hpp"

const CDamageVulnerability CTryclops::skPowerBombVulnerability =
    CDamageVulnerability(kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect,
                         kVN_Normal, kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect,
                         kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect, kDT_None);

CVector3f CTryclops::kBombPosOffset(0.f, 0.f, -0.3f);

CTryclops::CTryclops(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                     const CTransform4f& xf, const CModelData& mData, const CPatternedInfo& pInfo,
                     const CActorParameters& actParms, float f1, float f2, float f3,
                     float launchSpeed)
: CPatterned(kC_Tryclops, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Ground, kCT_One,
             kBT_BiPedal, actParms, kKBV_Small)
, x568_pathFindSearch(nullptr, 1, pInfo.GetPathfindingIndex(), 1.f, 1.f)
, x64c_xf(CTransform4f::Identity())
, x67c_(f1)
, x680_(cosf(CRelAngle::FromDegrees(f2 * 0.5f).AsRadians()))
, x684_(f3)
, x688_launchSpeed(launchSpeed)
, x68c_(0.f)
, x690_(0)
, x694_bombId(kInvalidUniqueId)
, x696_(kInvalidUniqueId)
, x698_24_(false)
, x698_25_(false)
, x698_26_(false)
, x698_27_dizzy(false) {
  SetDrawShadow(false);
  MakeThermalColdAndHot();
  GetKnockBackCtrl().SetAutoResetImpulse(false);
  x328_30_lookAtDeathDir = false;
}

CTryclops::~CTryclops() {}

void CTryclops::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  CPatterned::AcceptScriptMsg(msg, uid, mgr);
  switch (msg) {
  case kSM_Registered:
    BodyCtrl()->Activate(mgr);
    break;
  case kSM_InitializedInArea: {
    const TAreaId areaId = GetCurrentAreaId();
    const CGameArea::CPostConstructed* constructed =
        mgr.GetWorld()->GetAreaAlways(areaId).GetPostConstructed();
    x568_pathFindSearch.SetArea(constructed->x10bc_pathArea);
  } break;
  }
}

bool CTryclops::InMaxRange(CStateManager& mgr, float arg) {
  if (x694_bombId != kInvalidUniqueId) {
    return true;
  }

  float dectRange = x3bc_detectionRange * x3bc_detectionRange;
  float dectRangeHeight = x3c0_detectionHeightRange * x3c0_detectionHeightRange;
  CAABox bounds(GetTranslation() + CVector3f(-x3bc_detectionRange, -x3bc_detectionRange, 0.f),
                GetTranslation() +
                    CVector3f(x3bc_detectionRange, x3bc_detectionRange, x3c0_detectionHeightRange));
  TEntityList nearList;
  mgr.BuildNearList(nearList, bounds, CMaterialFilter::MakeInclude(CMaterialList(kMT_Bomb)), this);

  x694_bombId = kInvalidUniqueId;
  for (AUTO(it, nearList.begin()); it != nearList.end(); ++it) {
    if (const CBomb* bomb = TCastToConstPtr< CBomb >(mgr.GetObjectById(*it))) {
      if (!bomb->IsBeingDragged()) {
        const CVector3f dist = bomb->GetTranslation() - GetTranslation();
        float distSq = dist.MagSquared();
        if (distSq < dectRange) {
          if (dectRangeHeight > 0.f) {
            if (dist.GetZ() * dist.GetZ() <= dectRangeHeight) {
              CPathFindSearch::EResult result = x568_pathFindSearch.OnPath(bomb->GetTranslation());
              if (result == CPathFindSearch::kR_Success) {
                x694_bombId = bomb->GetUniqueId();
                dectRange = distSq;
              }
            }
          }
        }
      }
    }
  }

  if (x694_bombId != kInvalidUniqueId) {
    if (CBomb* bomb = TCastToPtr< CBomb >(mgr.ObjectById(x694_bombId))) {
      bomb->SetFuseDisabled(true);
      bomb->SetIsBeingDragged(true);

      return true;
    }
  }

  return false;
}

bool CTryclops::InDetectionRange(CStateManager& mgr, float arg) {
  bool ret = false;
  const CPlayer* player = mgr.GetPlayer();
  if (x68c_ > 0.f || player->IsAttached() ||
      player->GetMorphballTransitionState() == CPlayer::kMS_Morphed) {
    ret = CPatterned::InDetectionRange(mgr, arg);
  } else {
    ret = x568_pathFindSearch.OnPath(player->GetBallPosition()) == CPathFindSearch::kR_Success;
  }

  return ret;
}