#include "MetroidPrime/CCredits.hpp"

#include "MetroidPrime/CArchitectureMessage.hpp"
#include "MetroidPrime/Cameras/CCameraFilterPass.hpp"
#include "MetroidPrime/Decode.hpp"
#include "MetroidPrime/Tweaks/CTweakGui.hpp"

#include "GuiSys/CGuiTextSupport.hpp"
#include "GuiSys/CGuiWidget.hpp"


#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CMoviePlayer.hpp"
#include "Kyoto/Text/CRasterFont.hpp"
#include "Kyoto/Text/CStringTable.hpp"

#include "MetaRender/CCubeRenderer.hpp"

#include "rstl/math.hpp"

bool CCredits::GetIsContinueDraw() const { return false; }

CCredits::CCredits()
: CIOWin("Credits")
, x18_creditsTable(gpSimplePool->GetObj(gpTweakGui->GetCreditsTable().data()))
, x20_creditsFont(gpSimplePool->GetObj(gpTweakGui->GetJapaneseCreditsFont().data()))
, x54_(gpTweakGui->GetCredits_x30c()) {
  // x18_creditsTable.Lock();
  // x20_creditsFont.Lock();
}

CCredits::~CCredits() {}

CIOWin::EMessageReturn CCredits::OnMessage(const CArchitectureMessage& msg,
                                           CArchitectureQueue& queue) {
  switch (msg.GetType()) {
  case kAM_UserInput: {
    return ProcessUserInput(MakeMsg::GetParmUserInput(msg).GetUserInput());
    break;
  case kAM_TimerTick: {
    return Update(MakeMsg::GetParmTimerTick(msg).GetReal(), queue);
  }
  default:
    break;
  }
  }
  return kMR_Normal;
}

CIOWin::EMessageReturn CCredits::Update(float dt, CArchitectureQueue& queue) {
  switch (x14_) {
  case 0: {
    if (!x18_creditsTable.IsLoaded() || !x20_creditsFont.IsLoaded()) {
      return kMR_Exit;
    }
    if (x30_text.empty()) {
      for (int i = 0; i < x18_creditsTable->GetStringCount(); ++i) {
        x30_text.push_back(rstl::pair< rstl::single_ptr< CGuiTextSupport >, CVector2i >(
            rs_new CGuiTextSupport(
                gpResourceFactory->GetResourceIdByName(gpTweakGui->GetCreditsFont().data())->id,
                CGuiTextProperties(true, true, kJustification_Center, kVerticalJustification_Top),
                gpTweakGui->GetCreditsTextFontColor(), gpTweakGui->GetCreditsTextBorderColor(),
                CColor::White(), CGraphics::GetViewport().mWidth - 64, 0, gpSimplePool,
                CGuiWidget::kGMDF_Alpha),
            CVector2i(0, 0)));
        // x30_text.back().first->SetText(x18_creditsTable->GetString(i));
      }

      //      auto tmp = std::make_pair(std::make_unique<CGuiTextSupport>(
      //                                    gpResourceFactory->GetResourceIdByName(gpTweakGui->GetCreditsFont())->id,
      //                                    CGuiTextProperties(true, true, kJ_Center,
      //                                    EVerticalJustification::Top),
      //                                    gpTweakGui->GetCreditsTextFontColor(),
      //                                    gpTweakGui->GetCreditsTextBorderColor(),
      //                                    CColor::White(), g_Viewport.x8_width
      //                                    - 64, 0, gpSimplePool,
      //                                    CGuiWidget::EGuiModelDrawFlags::Alpha),
      //                                CVector2i(0, 0));
      //      tmp.first->SetText(
      //          "\n&push;&font=C29C51F1;&main-color=#89D6FF;URDE DEVELOPMENT TEAM&pop;\n"
      //          "&push;&main-color=#89D6FF;LEAD REVERSE ENGINEERING TEAM&pop\n;"
      //          "Jack \"Cirrus\" Andersen\n"
      //          "Phillip \"Antidote\" Stephens\n"
      //          "Luke \"encounter\" Street\n\n"
      //          "&push;&main-color=#89D6FF;C++ COMPLIANCE & CLEANUP&pop;\n"
      //          "Lioncache\n");
      //      x30_text.insert(x30_text.end() - 1, std::move(tmp));
      //      x30_text.back().first->SetOutlineColor(gpTweakGui->GetCreditsTextBorderColor());
    }

    // for (const auto& [text, offset] : x30_text) {
    //   if (!text->GetIsTextSupportFinishedLoading()) {
    //     return kMR_Exit;
    //   }
    // }

    // int scaleY = 0;
    // for (auto& [text, offset] : x30_text) {
    //   auto bounds = text->GetBounds();
    //   offset.y = (bounds.second.y - bounds.first.y);
    //   offset.x = scaleY;
    //   text->SetExtentX(CGraphics::GetViewportWidth() - 1280);
    //   text->SetExtentY((bounds.second.y - bounds.first.y));
    //   scaleY += (bounds.second.y - bounds.first.y);
    // }

    // x4c_ = float(scaleY + CGraphics::GetViewportHeight() - 896); // * 0.5f;
    // const float divVal = rstl::max_val(gpTweakGui->x310_, gpTweakGui->x30c_);
    // x50_ = x4c_ / (gpTweakGui->x308_ - divVal);
    x14_ = 1;
    break;
  }
  case 1: {
    if (x28_moviePlayer.null()) {
      x28_moviePlayer = rs_new CMoviePlayer("Video/creditBG.thp", 0.f, true, true);
    }
    x14_ = 2;
    break;
  }
  case 2: {
    // if (x2c_.null()) {
    //   x2c_ = rs_new CStaticAudioPlayer("Audio/ending3.rsf", 0, 0x5d7c00);
    // }
    // if (!x2c_->IsReady()) {
    //   return kMR_Exit;
    // }
    // x2c_->SetVolume(1.f);
    // x2c_->StartMixing();
    x14_ = 3;
  }
    // [[fallthrough]];
  case 3: {
    // if (!x28_moviePlayer->PumpIndexLoad())
    //    break;
    x28_moviePlayer->Update(dt);
    if (x5c_24_) {
      x5c_28_ = true;
      if (x5c_27_) {
        x5c_27_ = false;
        x58_ = gpTweakGui->GetCredits_x310() - x58_;
      }
    }
    if (x5c_27_ || x5c_28_) {
      x58_ = CMath::Clamp(0.f, x58_ + dt, gpTweakGui->GetCredits_x310());
      if (x58_ == gpTweakGui->GetCredits_x310()) {
        if (x5c_27_) {
          x5c_27_ = false;
          x58_ = 0.f;
        } else if (x5c_28_) {
          x5c_25_ = true;
        }
      }

      if (x58_ != 0.f && x5c_28_) {
        const float volume = CMath::Clamp(0.f, 1.f - x58_ / gpTweakGui->GetCredits_x310(), 1.f);
        // x2c_->SetVolume(volume);
      }
    }
    x48_ = rstl::min_val(x4c_, (dt * x50_) + x48_);

    if (x48_ == x4c_ || x5c_24_) {
      x5c_24_ = true;
      x54_ = rstl::max_val(0.f, x54_ - dt);
      const float alpha = x54_ / gpTweakGui->GetCredits_x30c();
      // for (const auto& [text, offset] : x30_text) {
      //   CColor col = CColor::White();
      //   col.a() *= alpha;
      //   text->SetGeometryColor(col);
      // }
      if (x54_ <= 0.f) {
        x5c_26_ = true;
      }
    }

    if (x5c_26_ && x5c_25_) {
      // queue.Push(MakeMsg::CreateCreateIOWin(
      //     EArchMsgTarget::IOWinManager, 12, 11,
      //     std::make_shared< CPlayMovie >(CPlayMovie::EWhichMovie::AfterCredits)));
      return kMR_RemoveIOWinAndExit;
    }
    break;
  }
  default:
    break;
  }
  return kMR_Exit;
}

CIOWin::EMessageReturn CCredits::ProcessUserInput(const CFinalInput& input) {
  if (input.DA()) {
    x48_ = CMath::Clamp(0.f, x48_ - ((x50_ * input.DeltaTime())), x4c_);
  } else {
    float leftY = input.ALAUp();
    float offset = 0.f;
    if (leftY < 0.f) {
      offset = -leftY;
      leftY = 0.f;
    }
    x48_ = CMath::Clamp(0.f, x48_ - (leftY - offset) * 10.f * x50_ * input.DeltaTime(), x4c_);
  }
  return kMR_Exit;
}

void CCredits::DrawText(CGuiTextSupport& text, const CVector3f& translation) {
  CGraphics::SetCullMode(kCM_None);
  gpRender->SetViewportOrtho(true, -4096.f, 4096.f);
  gpRender->SetModelMatrix(CTransform4f::Translate(translation));
  gpRender->SetDepthReadWrite(false, false);
  text.Render();
}

void CCredits::Draw() const {
  if (x14_ != 3) {
    return;
  }
  DrawVideo();
  DrawText();
}

void CCredits::DrawText() const {
  // float width = 896.f * CGraphics::GetViewportAspect();
  // CGraphics::SetOrtho(0.f, width, 896.f, 0.f, -4096.f, 4096.f);
  // auto region = std::make_pair(CVector2f{0.f, 0.f}, CVector2f{width, 896.f});
  // CGraphics::SetViewPointMatrix(CTransform4f());
  // CGraphics::SetModelMatrix(CTransform4f::Translate((width - 1280.f) / 2.f, 0.f, 896.f));
  // float dVar5 = (x48_ - (region.second.y() - region.first.y()));
  // for (const auto& [text, offset] : x30_text) {
  //   if (offset.y + offset.x >= dVar5 && offset.x <= x48_) {
  //     DrawText(*text, {0.5f * (region.second.x() - text->GetExtentX()), 0.f, x48_ - offset.x});
  //   }
  // }
  // CCameraFilterPass::DrawFilter(EFilterType::Multiply, EFilterShape::CinemaBars, skBlack,
  // nullptr,
  //                               1.f);
}

void CCredits::DrawVideo() const {
  /* Render movie */
  if (x28_moviePlayer.get() && x28_moviePlayer->DrawVideo() && (x5c_27_ || x5c_28_)) {
    float alpha = x58_ / gpTweakGui->GetCredits_x310();
    if (x5c_27_) {
      alpha = 1.f - alpha;
    }

    alpha = CMath::Clamp(0.f, alpha, 1.f);
    CColor filterCol = CColor::Black().WithAlphaOf(alpha);
    CCameraFilterPass::DrawFilter(CCameraFilterPass::kFT_Blend, CCameraFilterPass::kFS_Fullscreen,
                                  filterCol, nullptr, 1.f);
  }
}
