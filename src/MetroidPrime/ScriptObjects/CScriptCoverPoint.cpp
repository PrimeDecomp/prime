#include "MetroidPrime/ScriptObjects/CScriptCoverPoint.hpp"

#include "MetroidPrime/CActorParameters.hpp"

CScriptCoverPoint::CScriptCoverPoint(TUniqueId uid, const rstl::string& name,
                                     const CEntityInfo& info, const CTransform4f& xf, bool active,
                                     uint flags, bool crouch, float horizontalAngle,
                                     float verticalAngle, float coverTime)
: CActor(uid, active, name, info, xf, CModelData::CModelDataNull(), CMaterialList(kMT_NoStepLogic),
         CActorParameters::None(), kInvalidUniqueId)
, xe8_flags(flags)
, xec_cosHorizontalAngle(cosf(horizontalAngle * 0.008726646f))
, xf0_sinVerticalAngle(sinf(verticalAngle * 0.008726646f))
, xf4_coverTime(coverTime)
, xf8_24_crouch(crouch)
, xf8_25_inUse(false)
, xfa_occupant(kInvalidUniqueId)
, xfc_retreating(kInvalidUniqueId)
, x100_touchBounds(CAABox(xf.GetTranslation(), xf.GetTranslation()))
, x11c_timeLeft(0.f) {}

void CScriptCoverPoint::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CScriptCoverPoint::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid,
                                        CStateManager& mgr) {
  CActor::AcceptScriptMsg(msg, uid, mgr);

  switch (msg) {
  case kSM_InitializedInArea:
    rstl::vector< SConnection >::const_iterator conn = GetConnectionList().begin();
    for (; conn != GetConnectionList().end(); ++conn) {
      if (conn->x0_state == kSS_Retreat) {
        xfc_retreating = mgr.GetIdForScript(conn->x8_objId);
        break;
      }
    }
  default:
    break;
  }
}

pas::ECoverDirection CScriptCoverPoint::GetAttackDirection() const {
  return pas::ECoverDirection(xe8_flags);
}

bool CScriptCoverPoint::ShouldCrouch() const { return xf8_24_crouch; }

bool CScriptCoverPoint::ShouldStay() const { return xe8_flags >> 3 & 1; }

bool CScriptCoverPoint::ShouldWallHang() const { return xe8_flags >> 4 & 1; }

bool CScriptCoverPoint::ShouldLandHere() const { return xe8_flags >> 5 & 1; }

float CScriptCoverPoint::GetCosHorizontalAngle() const { return xec_cosHorizontalAngle; }

float CScriptCoverPoint::GetSinSqVerticalAngle() const {
  return xf0_sinVerticalAngle * xf0_sinVerticalAngle;
}

bool CScriptCoverPoint::Blown(const CVector3f& point) const {
  bool result = true;

  if (GetActive()) {
    if (ShouldWallHang()) {
      result = false;
    } else {
      CVector3f posDif = point - GetTransform().GetTranslation();
      float magnitude = posDif.Magnitude();
      posDif *= 1.f / magnitude;
      if (magnitude > 8.0f) {
        CVector3f normDif(posDif.DropZ());
        normDif.Normalize();

        CVector3f frontVec(GetTransform().GetForward().DropZ());
        frontVec.Normalize();

        if (CVector3f::Dot(frontVec, normDif) > GetCosHorizontalAngle() &&
            (posDif.GetZ() * posDif.GetZ()) < GetSinSqVerticalAngle())
          result = false;
      }
    }
  }
  return result;
}

bool CScriptCoverPoint::GetInUse(TUniqueId uid) const {
  // bool result = false;
  // do {
  //   if (!xf8_25_inUse && !(x11c_timeLeft > 0.f)) {
  //     if (xfa_occupant == kInvalidUniqueId)
  //       break;
  //     if (uid == kInvalidUniqueId)
  //       break;
  //     if (xfa_occupant == uid)
  //       break;
  //   }
  //   result = true;
  // } while (false);
  // return result;

  bool result = false;
  if (!xf8_25_inUse && !(x11c_timeLeft > 0.f)) {
    if (xfa_occupant != kInvalidUniqueId && uid != kInvalidUniqueId && xfa_occupant != uid)
      result = true;
  } else {
    result = true;
  }
  return result;
}

void CScriptCoverPoint::SetInUse(bool inUse) {
  xf8_25_inUse = inUse;
  if (!xf8_25_inUse)
    x11c_timeLeft = xf4_coverTime;
}

void CScriptCoverPoint::Think(float delta, CStateManager&) {
  if (x11c_timeLeft > 0.f)
    x11c_timeLeft -= delta;
}

void CScriptCoverPoint::AddToRenderer(const CFrustumPlanes&, const CStateManager&) const override {}

void CScriptCoverPoint::Render(const CStateManager&) const override {}

rstl::optional_object< CAABox > CScriptCoverPoint::GetTouchBounds() const {
  return x100_touchBounds;
}
