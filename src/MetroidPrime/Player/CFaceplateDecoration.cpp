#include "MetroidPrime/Player/CFaceplateDecoration.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"

#include "Kyoto/Math/CloseEnough.hpp"
#include "Kyoto/SObjectTag.hpp"

CFaceplateDecoration::CFaceplateDecoration(CStateManager& stateMgr) : x0_id(kInvalidAssetId) {}

void CFaceplateDecoration::Update(float dt, const CStateManager& stateMgr) {
  CAssetId txtrId = stateMgr.GetPlayer()->GetVisorSteam().GetTextureId();
  if (txtrId == kInvalidAssetId && x4_tex.valid()) {
    x4_tex->Unlock();
    x0_id = txtrId;
  }

  if (txtrId != x0_id && txtrId != kInvalidAssetId) {
    x0_id = txtrId;
    x4_tex = gpSimplePool->GetObj(SObjectTag('TXTR', x0_id));
    if (x4_tex.valid()) {
      x4_tex->Lock();
    }
  }
}

// fake but close
static inline CColor ChangeAlpha(CColor color, float alpha) {
  color.SetAlpha(CCast::ToUint8(alpha * 255.f));
  return color;
}

void CFaceplateDecoration::Draw(const CStateManager& stateMgr) const {
  if (x4_tex.valid() && x4_tex->IsLoaded()) {
    CTexture* texture = TToken< CTexture >(*x4_tex).GetT();
    float alpha = stateMgr.GetPlayer()->GetVisorSteam().GetAlpha();
    if (!close_enough(alpha, 0.f)) {
      CCameraFilterPass::DrawFilter(CCameraFilterPass::kFT_Blend,
                                    CCameraFilterPass::kFS_FullscreenQuarters,
                                    ChangeAlpha(CColor::White(), alpha), texture, 1.f);
    }
  }
}
