#pragma inline_max_size(250)

#include "MetroidPrime/CLogBookScreen.hpp"

#include "GuiSys/CAuiImagePane.hpp"
#include "GuiSys/CGuiModel.hpp"
#include "GuiSys/CGuiTableGroup.hpp"
#include "GuiSys/CGuiTextPane.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Input/CFinalInput.hpp"
#include "Kyoto/Text/CStringTable.hpp"
#include "MetroidPrime/CArtifactDoll.hpp"
#include "MetroidPrime/CMain.hpp"
#include "MetroidPrime/CMemoryCard.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Factories/CScannableObjectInfo.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Tweaks/CTweakGui.hpp"
#include "rstl/algorithm.hpp"
#include "rstl/math.hpp"

namespace {
struct CArtifactScanSorter {
  bool operator()(rstl::pair< CAssetId, bool >& a, rstl::pair< CAssetId, bool >& b) const {
    return CArtifactDoll::GetArtifactHeadScanIndex(a.first) <
           CArtifactDoll::GetArtifactHeadScanIndex(b.first);
  }
};

CArtifactScanSorter skArtifactScanSorter;
} // namespace

CLogBookScreen::CLogBookScreen(const CStateManager& mgr, CGuiFrame& frame,
                               const CStringTable& pauseStrg)
: CPauseScreenBase(mgr, frame, pauseStrg)
, x19c_scanCompletes(5, CScanCategory())
, x200_viewScans(5, CArticleList())
, x254_viewInterp(0.f)
, x258_artifactDoll(rs_new CArtifactDoll())
, x25c_leavePauseState(kLPS_InPause)
, x260_24_loaded(false)
, x260_25_inTextScroll(false)
, x260_26_exitTextScroll(false) {
  CMain::EnsureWorldPaksReady();
  InitializeLogBook();
}

CLogBookScreen::~CLogBookScreen() {
  x258_artifactDoll->CompleteArtifactHeadScan(x4_mgr);

  for (int i = 0; i < x144_model_titles.size(); ++i) {
    CGuiModel* model = x144_model_titles[i];
    model->SetO2PTransform(model->GetTransform());
  }

  CMain::EnsureWorldPakReady(gpGameState->CurrentWorldAssetId());
}

void CLogBookScreen::Update(float dt, CRandom16& rand, CArchitectureQueue& queue) {
  CPauseScreenBase::Update(dt, rand, queue);
  x258_artifactDoll->Update(dt, x4_mgr);
  PumpArticleLoad();

  if (x10_mode == kM_TextScroll) {
    if (x260_25_inTextScroll) {
      x254_viewInterp = rstl::min_val(1.f, x254_viewInterp + 4.f * dt);
    } else {
      x254_viewInterp = rstl::max_val(0.f, x254_viewInterp - 4.f * dt);
    }

    CColor color = CColor::White().WithAlphaOf(x254_viewInterp);
    x74_basewidget_leftguages->SetColor(color);
    x88_basewidget_rightguages->SetColor(color);

    CColor invColor = CColor::White().WithAlphaOf(1.f - x254_viewInterp);
    x70_tablegroup_leftlog->SetColor(invColor);
    x84_tablegroup_rightlog->SetColor(invColor);
    x17c_model_textalpha->SetColor(invColor);
    x174_textpane_body->SetColor(color);

    for (int i = 0; i < xf0_imagePanes.size(); ++i) {
      xf0_imagePanes[i]->SetDeResFactor(1.f - x254_viewInterp);
    }

    if (x254_viewInterp == 0.f && x25c_leavePauseState == kLPS_InPause) {
      ChangeMode(kM_RightTable);
    }
  }

  if (x25c_leavePauseState == kLPS_LeavingPause && x254_viewInterp == 0.f) {
    x25c_leavePauseState = kLPS_LeftPause;
  }
}

void CLogBookScreen::Touch() {
  CPauseScreenBase::Touch();
  x258_artifactDoll->Touch();
}

bool CLogBookScreen::IsArtifactCategorySelected() const {
  return x70_tablegroup_leftlog->GetUserSelection() + 1 == CWorldSaveGameInfo::kSC_Artifact;
}

int CLogBookScreen::GetSelectedArtifactHeadScanIndex() const {
  const CScanCategory& category = x19c_scanCompletes[x70_tablegroup_leftlog->GetUserSelection()];
  if (x1c_rightSel < category.size()) {
    return CArtifactDoll::GetArtifactHeadScanIndex(category[x1c_rightSel].first);
  }

  return -1;
}

void CLogBookScreen::Draw(float transInterp, float totalAlpha, float yOff) const {
  CPauseScreenBase::Draw(transInterp, totalAlpha, yOff);

  bool artifactSel = x10_mode == kM_RightTable && IsArtifactCategorySelected();
  int headIdx = GetSelectedArtifactHeadScanIndex();
  x258_artifactDoll->Draw(transInterp * (1.f - x254_viewInterp), x4_mgr, artifactSel, headIdx);
}

void CLogBookScreen::ProcessInput(const CFinalInput& input) {
  x260_25_inTextScroll = false;
  if (x25c_leavePauseState == kLPS_LeftPause) {
    return;
  }

  if (x10_mode == kM_TextScroll) {
    int oldPage = x174_textpane_body->TextSupport().GetPageCounter();
    int newPage = oldPage;
    int pageCount = x174_textpane_body->TextSupport().GetTotalPageCount();
    bool lastPage = oldPage == pageCount - 1;

    if (pageCount != -1) {
      if (input.PLAUp()) {
        newPage = rstl::max_val(0, oldPage - 1);
      } else if (input.PLADown() || (input.PA() && !lastPage)) {
        newPage = rstl::min_val(pageCount - 1, oldPage + 1);
      }

      x174_textpane_body->TextSupport().SetPage(newPage);
      if (oldPage != newPage) {
        CSfxManager::SfxStart(0x5a4, 0x7f, 0x40, false);
      }

      x198_28_pulseTextArrowTop = newPage > 0;
      x198_29_pulseTextArrowBottom = !lastPage;
    } else {
      x198_28_pulseTextArrowTop = x198_29_pulseTextArrowBottom = false;
    }

    if (!x260_26_exitTextScroll) {
      x260_26_exitTextScroll = input.PB() || ((input.PA() && lastPage) ? true : false);
    }

    x260_25_inTextScroll = gpTweakGui->GetLatchArticleText() ? !x260_26_exitTextScroll : input.DA();
  } else {
    x198_28_pulseTextArrowTop = x198_29_pulseTextArrowBottom = false;
  }

  if (x25c_leavePauseState == kLPS_LeavingPause) {
    x260_25_inTextScroll = false;
  }

  CPauseScreenBase::ProcessInput(input);
}

bool CLogBookScreen::VReady() const { return true; }

void CLogBookScreen::VActivate() {
  for (int i = 0; i < 5; ++i) {
    CGuiTextPane* category = xa8_textpane_categories[i];
    if (IsScanCategoryReady(static_cast< CWorldSaveGameInfo::EScanCategory >(i + 1))) {
      category->TextSupport().SetText(xc_pauseStrg.GetString(i + 1));
    } else {
      category->TextSupport().SetText(rstl::wstring_l(L"??????"));
      x70_tablegroup_leftlog->GetWorkerWidget(i)->SetIsSelectable(false);
    }
  }

  x178_textpane_title->TextSupport().SetText(xc_pauseStrg.GetString(0));

  for (int i = 5; i < 5; ++i) {
    x70_tablegroup_leftlog->GetWorkerWidget(i)->SetIsSelectable(false);
  }
}

void CLogBookScreen::ChangedMode(EMode oldMode) {
  if (oldMode == kM_TextScroll) {
    x74_basewidget_leftguages->SetVisibility(false, kTM_Children);
    x88_basewidget_rightguages->SetVisibility(false, kTM_Children);
    UpdateBodyText();
    x174_textpane_body->TextSupport().SetPage(0);
  } else if (x10_mode == kM_TextScroll) {
    x74_basewidget_leftguages->SetVisibility(true, kTM_Children);
    x88_basewidget_rightguages->SetVisibility(true, kTM_Children);
    x260_25_inTextScroll = true;
    UpdateBodyImagesAndText();
  }
}

void CLogBookScreen::UpdateRightTable() {
  CPauseScreenBase::UpdateRightTable();

  const CScanCategory& category = x19c_scanCompletes[x70_tablegroup_leftlog->GetUserSelection()];
  int count = category.size();
  x1f0_curViewScans = CArticleList();
  x1f0_curViewScans.reserve(count);

  for (AUTO(it, category.begin()); it != category.end(); ++it) {
    TCachedToken< CScannableObjectInfo > scan = gpSimplePool->GetObj(SObjectTag('SCAN', it->first));
    x1f0_curViewScans.push_back(SArticle(scan, rstl::optional_object_null()));
  }

  PumpArticleLoad();
  UpdateRightTitles();
}

bool CLogBookScreen::ShouldLeftTableAdvance() {
  if (!x260_24_loaded || x1f0_curViewScans.empty()) {
    return false;
  }

  return IsScanCategoryReady(static_cast< CWorldSaveGameInfo::EScanCategory >(
      x70_tablegroup_leftlog->GetUserSelection() + 1));
}

bool CLogBookScreen::ShouldRightTableAdvance() {
  SArticle& article = x1f0_curViewScans[x1c_rightSel];
  if (!article.first.TryCache()) {
    return false;
  }
  if (!article.second) {
    return false;
  }
  if (!article.second->TryCache()) {
    return false;
  }

  if (!x198_25_handledInput &&
      x19c_scanCompletes[x70_tablegroup_leftlog->GetUserSelection()][x1c_rightSel].second) {
    return true;
  }
  return false;
}

uint CLogBookScreen::GetRightTableCount() const { return x1f0_curViewScans.size(); }

void CLogBookScreen::RightTableSelectionChanged(int oldSel, int newSel) { UpdateRightTitles(); }

void CLogBookScreen::InitializeLogBook() {
  const CStateManager& mgr = x4_mgr;
  for (int i = 0; i < 5; ++i) {
    x19c_scanCompletes[i].reserve(gpMemoryCard->GetScanCategoryCount(
        static_cast< CWorldSaveGameInfo::EScanCategory >(i + 1)));
  }

  const rstl::vector< CMemoryCard::ScanState >& states = gpMemoryCard->GetScanStates();
  const CPlayerState& playerState = *mgr.GetPlayerState();
  for (AUTO(it, states.begin()); it != states.end(); ++it) {
    if (it->second != CWorldSaveGameInfo::kSC_None) {
      CAssetId scan = it->first;
      CScanCategory& category = x19c_scanCompletes[it->second - 1];
      bool complete = IsScanComplete(static_cast< CWorldSaveGameInfo::EScanCategory >(it->second),
                                     scan, playerState);
      category.push_back(SScanComplete(scan, complete));
    }
  }

  rstl::sort(x19c_scanCompletes[4].begin(), x19c_scanCompletes[4].end(), skArtifactScanSorter);

  for (int i = 0; i < x19c_scanCompletes.size(); ++i) {
    const CScanCategory& category = x19c_scanCompletes[i];
    int count = rstl::min_val(5, category.size());
    CArticleList& articles = x200_viewScans[i];
    articles.reserve(count);

    for (int j = 0; j < count; ++j) {
      articles.push_back(SArticle(gpSimplePool->GetObj(SObjectTag('SCAN', category[j].first)),
                                  rstl::optional_object_null()));
      articles[j].first.Lock();
    }
  }
}

void CLogBookScreen::PumpArticleLoad() {
  x260_24_loaded = true;
  for (AUTO(category, x200_viewScans.begin()); category != x200_viewScans.end(); ++category) {
    for (AUTO(it, category->begin()); it != category->end(); ++it) {
      if (it->first.TryCache()) {
        rstl::optional_object< TCachedToken< CStringTable > >& str = it->second;
        if (str) {
          str->TryCache();
        } else {
          str = TCachedToken< CStringTable >(
              gpSimplePool->GetObj(SObjectTag('STRG', it->first.GetObject()->GetStringTableId())));
          str->Lock();
          x260_24_loaded = false;
        }
      } else {
        x260_24_loaded = false;
      }
    }
  }

  int remaining = 6;
  for (AUTO(it, x1f0_curViewScans.begin()); it != x1f0_curViewScans.end(); ++it) {
    if (it->first.IsLoaded()) {
      it->first.Lock();
      it->first.TryCache();
      rstl::optional_object< TCachedToken< CStringTable > >& str = it->second;
      if (!str) {
        str = TCachedToken< CStringTable >(
            gpSimplePool->GetObj(SObjectTag('STRG', it->first.GetObject()->GetStringTableId())));
        str->Lock();
        --remaining;
      }
    } else if (it->first.IsLocked()) {
      --remaining;
    }

    if (remaining == 0) {
      break;
    }
  }

  int articleIdx = x18_firstViewRightSel;
  if (!x1f0_curViewScans.empty()) {
    while (remaining > 0) {
      const int cur = articleIdx;
      if (!x1f0_curViewScans[cur].first.IsLocked()) {
        x1f0_curViewScans[cur].first.Lock();
        --remaining;
      }
      articleIdx = NextSurroundingArticleIndex(cur);
      if (articleIdx == -1) {
        break;
      }
    }
  }

  for (int i = 0; i < x1f0_curViewScans.size(); ++i) {
    if (x1f0_curViewScans[i].first.TryCache()) {
      rstl::optional_object< TCachedToken< CStringTable > >& str = x1f0_curViewScans[i].second;
      if (str && str->TryCache()) {
        UpdateRightTitles();
        UpdateBodyText();
      }
    }
  }
}

int CLogBookScreen::NextSurroundingArticleIndex(int cur) {
  if (cur < x18_firstViewRightSel) {
    int next = x18_firstViewRightSel - cur + 6;
    next += x18_firstViewRightSel;
    return next < x1f0_curViewScans.size() ? next : cur - 1;
  }

  if (cur < x18_firstViewRightSel + 6) {
    if (cur + 1 < x1f0_curViewScans.size()) {
      return cur + 1;
    }
    if (x18_firstViewRightSel == 0) {
      return -1;
    }
    return x18_firstViewRightSel - 1;
  }

  int next = x18_firstViewRightSel - (cur - (x18_firstViewRightSel + 5));
  if (next >= 0) {
    return next;
  }
  if (cur >= x1f0_curViewScans.size() - 1) {
    return -1;
  }
  return cur + 1;
}

void CLogBookScreen::UpdateBodyImagesAndText() {
  const CScannableObjectInfo* const scan = x1f0_curViewScans[x1c_rightSel].first.GetObject();
  for (int i = 0; i < xf0_imagePanes.size(); ++i) {
    CAuiImagePane* pane = xf0_imagePanes[i];
    pane->SetTextureID0(kInvalidAssetId, gpSimplePool);
    pane->SetAnimationParms(CVector2f::Zero(), 0.f, 0.f);
  }

  for (int i = 0; i < 4; ++i) {
    const CScannableObjectInfo::SBucket& bucket = scan->GetBucket(i);
    if (bucket.x8_imagePos != CScannableObjectInfo::kPT_Invalid) {
      CAuiImagePane* pane = xf0_imagePanes[bucket.x8_imagePos];
      if (bucket.x14_interval > 0.f) {
        pane->SetAnimationParms(CVector2f(bucket.xc_size.GetX(), bucket.xc_size.GetY()),
                                bucket.x14_interval, bucket.x18_fadeDuration);
      }
      pane->SetTextureID0(bucket.x0_texture, gpSimplePool);
      pane->SetFlashFactor(0.f);
    }
  }

  x260_26_exitTextScroll = false;
  UpdateBodyText();
}

void CLogBookScreen::UpdateBodyText() {
  if (x10_mode != kM_TextScroll) {
    x174_textpane_body->TextSupport().SetText(rstl::wstring_l(L""));
    return;
  }

  rstl::optional_object< TCachedToken< CStringTable > >& str =
      x1f0_curViewScans[x1c_rightSel].second;
  if (str && str->TryCache() &&
      static_cast< int >(x174_textpane_body->TextSupport().GetText().size()) == 0) {
    const CStringTable* const table = str->GetObject();
    rstl::wstring text = table->GetString(0);
    if (table->GetStringCount() > 2) {
      text.append(L"\n\n", -1);
      text.append(table->GetString(2), -1);
    }

    if (IsArtifactCategorySelected()) {
      int headIdx = GetSelectedArtifactHeadScanIndex();
      if (headIdx >= 0) {
        const CPlayerState& playerState = *gpGameState->GetPlayerState();
        if (playerState.HasPowerUp(
                static_cast< CPlayerState::EItemType >(headIdx + CPlayerState::kIT_Truth))) {
          text = rstl::wstring_l(L"\n\n\n\n\n\n") + gpStringTable->GetString(105);
        }
      }
    }

    x174_textpane_body->TextSupport().SetText(text, true);
  }
}

void CLogBookScreen::UpdateRightTitles() {
  const CScanCategory& category = x19c_scanCompletes[x70_tablegroup_leftlog->GetUserSelection()];
  for (int i = 0; i < xd8_textpane_titles.size(); ++i) {
    int scanIdx = x18_firstViewRightSel + i;
    rstl::wstring text;
    if (scanIdx < x1f0_curViewScans.size()) {
      const rstl::optional_object< TCachedToken< CStringTable > >& str =
          x1f0_curViewScans[scanIdx].second;
      if (str && str->GetObject()) {
        if (category[scanIdx].second) {
          if (str->GetObject()->GetStringCount() > 1) {
            text = str->GetObject()->GetString(1);
          } else {
            text = rstl::wstring_l(L"No Title!");
          }
        } else {
          text = rstl::wstring_l(L"??????");
        }
      }

      if (static_cast< int >(text.size()) == 0) {
        text = rstl::wstring_l(L"........");
      }
    }
    xd8_textpane_titles[i]->TextSupport().SetText(text);
  }

  int rightSelRem;
  int rightSelMod = x18_firstViewRightSel % 5;
  rightSelRem = 5 - rightSelMod;
  for (int i = 0; i < x144_model_titles.size(); ++i) {
    CGuiModel* model = x144_model_titles[i];
    int row = rightSelRem;
    if (i >= rightSelMod) {
      row -= 5;
    }
    const float zOff = x38_highlightPitch * row;
    model->SetO2PTransform(CTransform4f::Translate(0.f, 0.f, zOff) * model->GetTransform());
  }
}

void CLogBookScreen::TransitioningAway() { x25c_leavePauseState = kLPS_LeavingPause; }

bool CLogBookScreen::InputDisabled() const { return x25c_leavePauseState == kLPS_LeavingPause; }

bool CLogBookScreen::IsScanCategoryReady(CWorldSaveGameInfo::EScanCategory category) {
  const CPlayerState& playerState = *x4_mgr.GetPlayerState();
  const rstl::vector< CMemoryCard::ScanState >& states = gpMemoryCard->GetScanStates();
  for (AUTO(it, states.begin()); it != states.end(); ++it) {
    const uint& currentCategory = it->second;
    if (currentCategory == category &&
        IsScanComplete(static_cast< CWorldSaveGameInfo::EScanCategory >(it->second), it->first,
                       playerState)) {
      return true;
    }
  }

  return false;
}

bool CLogBookScreen::IsScanComplete(CWorldSaveGameInfo::EScanCategory category, CAssetId scan,
                                    const CPlayerState& playerState) {
  float time = playerState.GetScanTime(scan);
  if (category == CWorldSaveGameInfo::kSC_Artifact) {
    return time >= 0.5f;
  }
  return time >= 1.f;
}
