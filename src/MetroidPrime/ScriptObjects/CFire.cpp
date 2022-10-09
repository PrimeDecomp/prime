#include "MetroidPrime/ScriptObjects/CFire.hpp"
#include "MetroidPrime/CActorParameters.hpp"

static inline CMaterialList MakeMaterialList() { return CMaterialList(kMT_Projectile); }

CFire::CFire(TToken< CGenDescription > effect, TUniqueId uid, TAreaId area, bool active,
             TUniqueId owner, const CTransform4f& xf, const CDamageInfo& dInfo, const CAABox& aabox,
             const CVector3f& vec, bool b1, CAssetId visorEffect, bool b2, bool b3, bool b4,
             float f1, float f2, float f3, float f4)
: CActor(uid, active, "Fire", CEntityInfo(area, NullConnectionList), xf,
         CModelData::CModelDataNull(), MakeMaterialList(), CActorParameters::None(),
         kInvalidUniqueId)
, xe8_(new CElementGen(effect))
, xec_owner(owner)
, xf0_damageInfo1(dInfo)
, x10c_damageInfo2(dInfo)
, x128_(aabox)
, x144_(f1)
, x148_24_(b2)
, x148_25_(b3)
, x148_26_(b4)
, x148_27_(b2 && b3 && b4)
, x148_28_(false)
, x148_29_(b1)
, x14c_(f2)
, x150_(visorEffect)
, x154_(f3)
, x158_(f4)
, x15c_(0.f) {
  xe8_->SetGlobalScale(vec);
  xe8_->SetTranslation(xf.GetTranslation());
}

CFire::~CFire() {}
