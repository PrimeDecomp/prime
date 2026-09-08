#include "MetroidPrime/CMessageScreen.hpp"

#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiModel.hpp"
#include "GuiSys/CGuiTextPane.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Input/CFinalInput.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Text/CStringTable.hpp"
#include "MetroidPrime/CGameGlobalObjects.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/SFX/UI.h"
#include "MetroidPrime/Tweaks/CTweakGuiColors.hpp"
#include "rstl/math.hpp"

#include <stdlib.h>

CMessageScreen::CMessageScreen(CAssetId msg, float time)
: x0_msg(gpSimplePool->GetObj(SObjectTag('STRG', msg)))
, xc_msgScreen(gpSimplePool->GetObj("FRME_MsgScreen"))
, x18_loadedMsgScreen(nullptr)
, x44_topPos(CVector3f::Zero())
, x50_bottomPos(CVector3f::Zero())
, x5c_videoBandPos(CVector3f::Zero())
, x68_videoBandOffset(10.f)
, x6c_page(0)
, x70_blurAmt(0.f)
, x74_delayTime(time)
, x78_24_exit(false) {
  xc_msgScreen.Lock();
  x0_msg.Lock();
}

bool CMessageScreen::Update(float dt, float blurAmt) {
  x70_blurAmt = blurAmt;
  if (!x18_loadedMsgScreen) {
    const bool ready = xc_msgScreen.TryCache() && x0_msg.TryCache();
    if (ready) {
      x18_loadedMsgScreen = xc_msgScreen.GetObject();
      x1c_textpane_message =
          static_cast< CGuiTextPane* >(x18_loadedMsgScreen->FindWidget("textpane_message"));
      x20_basewidget_top = x18_loadedMsgScreen->FindWidget("basewidget_top");
      x24_basewidget_center = x18_loadedMsgScreen->FindWidget("basewidget_center");
      x28_basewidget_bottom = x18_loadedMsgScreen->FindWidget("basewidget_bottom");
      x2c_model_abutton =
          static_cast< CGuiModel* >(x18_loadedMsgScreen->FindWidget("model_abutton"));
      x30_model_top = static_cast< CGuiModel* >(x18_loadedMsgScreen->FindWidget("model_top"));
      x38_model_bottom = static_cast< CGuiModel* >(x18_loadedMsgScreen->FindWidget("model_bottom"));
      x34_model_center = static_cast< CGuiModel* >(x18_loadedMsgScreen->FindWidget("model_center"));
      x3c_model_bg = static_cast< CGuiModel* >(x18_loadedMsgScreen->FindWidget("model_bg"));
      x40_model_videoband =
          static_cast< CGuiModel* >(x18_loadedMsgScreen->FindWidget("model_videoband"));
      x44_topPos = x20_basewidget_top->GetLocalPosition();
      x50_bottomPos = x28_basewidget_bottom->GetLocalPosition();
      x5c_videoBandPos = x40_model_videoband->GetLocalPosition();

      if (CGuiWidget* widget = x18_loadedMsgScreen->FindWidget("basewidget_top")) {
        widget->SetColor(gpTweakGuiColors->GetHudFrameColor());
      }
      if (CGuiWidget* widget = x18_loadedMsgScreen->FindWidget("basewidget_centerdeco")) {
        widget->SetColor(gpTweakGuiColors->GetHudFrameColor());
      }
      if (CGuiWidget* widget = x18_loadedMsgScreen->FindWidget("model_bottom")) {
        widget->SetColor(gpTweakGuiColors->GetHudFrameColor());
      }

      x40_model_videoband->SetIsDepthBackwards(true);
      x30_model_top->SetIsAlwaysDepthWrite(true);
      x38_model_bottom->SetIsAlwaysDepthWrite(true);
      x34_model_center->SetIsAlwaysDepthWrite(true);
      x3c_model_bg->SetIsAlwaysDepthWrite(true);

      if (x0_msg.GetObject()->GetStringCount() > 0) {
        CGuiTextSupport& text = x1c_textpane_message->TextSupport();
        text.SetTypeWriteEffectOptions(false, 0.1f, 30.f);
        text.SetText(x0_msg.GetObject()->GetString(0));
        text.SetFontColor(gpTweakGuiColors->GetHudMessageFill());
        text.SetControlTXTRMap(&gpGameState->GameOptions().GetControlTXTRMap());
      }
    }
  }

  if (x18_loadedMsgScreen) {
    if (x74_delayTime > 0.f) {
      x74_delayTime -= dt;
    }

    float xT = rstl::max_val(0.f, (x70_blurAmt - 0.5f) / 0.5f);
    float scaleX;
    if (xT < 0.7f) {
      scaleX = xT / 0.7f;
    } else if (xT < 0.85f) {
      scaleX = (1.f - 0.9f) * (1.f - (xT - 0.7f) / 0.15f) + 0.9f;
    } else {
      scaleX = (1.f - 0.9f) * ((xT - 0.7f - 0.15f) / 0.3f) + 0.9f;
    }
    x24_basewidget_center->SetO2PTransform(CTransform4f::Scale(scaleX, 1.f, 1.f));
    x20_basewidget_top->SetO2PTransform(CTransform4f::Translate(0.f, 0.f, 12.f * (1.f - xT)));
    x28_basewidget_bottom->SetO2PTransform(CTransform4f::Translate(0.f, 0.f, -12.f * (1.f - xT)));

    float alpha = rstl::max_val(0.f, (x70_blurAmt - 0.7f) / 0.3f);
    x20_basewidget_top->SetColor(gpTweakGuiColors->GetHudFrameColor().WithAlphaModulatedBy(alpha));
    x28_basewidget_bottom->SetColor(CColor::White().WithAlphaOf(alpha));

    const float pulse =
        x74_delayTime <= 0.f
            ? CMath::Clamp(
                  0.f,
                  0.5f * (1.f + CMath::FastSinR(5.f * CGraphics::GetSecondsMod900() - M_PIF / 2.f)),
                  1.f)
            : 0.f;
    x2c_model_abutton->SetColor(CColor::White().WithAlphaOf(pulse));

    x68_videoBandOffset += 12.f * dt;
    if (x68_videoBandOffset > 10.f) {
      x68_videoBandOffset -= 20.f;
    }
    float random = rand() / static_cast< float >(RAND_MAX);
    x40_model_videoband->SetColor(CColor::White().WithAlphaOf(0.04f * random + 0.08f));
    x40_model_videoband->SetO2PTransform(
        CTransform4f::Translate(x5c_videoBandPos + CVector3f(0.f, 0.f, x68_videoBandOffset)));
    x18_loadedMsgScreen->Update(dt);
  }

  return !x78_24_exit;
}

void CMessageScreen::ProcessControllerInput(const CFinalInput& input) {
  if (x18_loadedMsgScreen && x74_delayTime <= 0.f && input.PA()) {
    CGuiTextSupport& text = x1c_textpane_message->TextSupport();
    if (text.GetCurTime() < text.GetTotalAnimationTime()) {
      text.SetCurTime(text.GetTotalAnimationTime());
      return;
    }

    ++x6c_page;
    if (x6c_page >= x0_msg.GetObject()->GetStringCount()) {
      x78_24_exit = true;
      return;
    }

    text.SetTypeWriteEffectOptions(false, 0.1f, 30.f);
    text.SetText(x0_msg.GetObject()->GetString(x6c_page));
    CSfxManager::SfxStart(SFXui_x_override_02);
    x74_delayTime = 0.8f;
  }
}

void CMessageScreen::Draw() const {
  if (x18_loadedMsgScreen) {
    x18_loadedMsgScreen->Draw(CGuiWidgetDrawParms(x70_blurAmt, CVector3f::Zero()));
  }
}
