#include "MetroidPrime/Enemies/CMetroidPrimeRelay.hpp"

#include "MetroidPrime/CAnimRes.hpp"

CMetroidPrimeRelay::CMetroidPrimeRelay(
    TUniqueId uid, const rstl::string& name, const CEntityInfo& info, const bool active,
    const CTransform4f& xf, const CVector3f& scale, const CMetroidPrimeData& parms, const float f1,
    const float f2, const float f3, const int w1, const bool b1, const int w2,
    const CHealthInfo& hInfo1, const CHealthInfo& hInfo2, const int w3, const int w4, const int w5,
    const rstl::reserved_vector< CMetroidPrime::CMetroidPrimeAttackWeights, 4 >& roomParms)
: CEntity(uid, info, active, name)
, x34_mpUid(kInvalidUniqueId)
, x38_xf(xf)
, x68_scale(scale)
, x74_parms(parms)
, xc84_f1(f1)
, xc88_f2(f2)
, xc8c_f3(f3)
, xc90_w1(w1)
, xc94_b1(b1)
, xc98_w2(w2)
, xc9c_hInfo1(hInfo1)
, xca4_hInfo2(hInfo2)
, xcac_w3(w3)
, xcb0_w4(w4)
, xcb4_w5(w5)
, xcb8_roomParms(roomParms) {}

void CMetroidPrimeRelay::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CMetroidPrimeRelay::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid,
                                         CStateManager& mgr) {
  if (uid != x34_mpUid) {
    ForwardMessageToMP(msg, mgr);
  }
  switch (msg) {
  case kSM_InitializedInArea:
    CreateMetroidPrime(mgr);
    break;
  default:
    break;
  }
}

void CMetroidPrimeRelay::ForwardMessageToMP(EScriptObjectMessage msg, CStateManager& mgr) {
  CMetroidPrime* pat =
      CPatterned::CastTo(TPatternedCast< CMetroidPrime >(mgr.ObjectById(x34_mpUid)));
  if (!pat) {
    return;
  }
  if (msg < kSM_WorldInitialized && msg >= kSM_Registered) {
    return;
  }
  mgr.DeliverScriptMsg(pat, GetUniqueId(), msg);
}

void CMetroidPrimeRelay::CreateMetroidPrime(CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }
  CObjectList& list = mgr.ObjectListById(kOL_PhysicsActor);
  for (int i = list.GetFirstObjectIndex(); i != -1; i = list.GetNextObjectIndex(i)) {
    CEntity* ent = list[i];
    if (CPatterned::CastTo(TPatternedCast< CMetroidPrime >(ent)) != nullptr) {
      return;
    }
  }

  CMetroidPrime* mp = rs_new CMetroidPrime(
      mgr.AllocateUniqueId(), rstl::string_l("Metroid Prime! (Stage 1)"),
      CEntityInfo(GetCurrentAreaId(), NullConnectionList), x38_xf,
      CAnimRes(x74_parms.GetPatternedInfo().GetAnimationParameters().GetACSFile(),
               x74_parms.GetPatternedInfo().GetAnimationParameters().GetCharacter(), x68_scale,
               x74_parms.GetPatternedInfo().GetAnimationParameters().GetInitialAnimation(), true),
      x74_parms.GetPatternedInfo(), x74_parms.x13c_actorParms, x74_parms.x1a4_, x74_parms.x1a8_,
      x74_parms.x27c_, x74_parms.x350_, x74_parms.x424_, x74_parms.x460_particle1, x74_parms.x464_,
      x74_parms.x708_wpsc1, x74_parms.x70c_dInfo1, x74_parms.x728_shakeData1, x74_parms.x7fc_wpsc2,
      x74_parms.x800_dInfo2, x74_parms.x81c_shakeData2, x74_parms.x8f0_, x74_parms.x92c_,
      x74_parms.x948_, x74_parms.xa1c_particle2, x74_parms.xa20_swoosh, x74_parms.xa24_particle3,
      x74_parms.xa28_particle4, x74_parms.xa2c_);

  mgr.AddObject(*mp);
  mgr.DeliverScriptMsg(mp, kInvalidUniqueId, kSM_InitializedInArea);
}