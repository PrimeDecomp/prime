#include "MetroidPrime/HUD/CHudVisorBeamMenu.hpp"

#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiModel.hpp"
#include "GuiSys/CGuiTextPane.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Basics/CBasics.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Text/CStringTable.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Tweaks/CTweakGui.hpp"
#include "MetroidPrime/Tweaks/CTweakGuiColors.hpp"
#include "rstl/math.hpp"

#include <float.h>

static const char* const skBaseWidgetNames[] = {"BaseWidget_VisorMenu", "BaseWidget_BeamMenu"};
static const char* const skMenuTitleWidgetNames[] = {"TextPane_VisorMenu", "TextPane_BeamMenu"};
static const char* const skBaseTitleWidgetNames[] = {"basewidget_visormenutitle",
                                                     "basewidget_beammenutitle"};
static const char* const skVisorWidgetBaseName = "model_visor";
static const char* const skBeamWidgetBaseName = "model_beam";
static const char* const skLozSuffix = "loz";
static const char* const skIconSuffix = "icon";
static const char* const skGhostSuffix = "ghost";
static const char skVisorWidgetIndices[] = "1032";
static const char skBeamWidgetIndices[] = "3210";
static const ushort skSelectionSounds[] = {0x573, 0x576};
static const int skMenuStringIndices[2][4] = {{0, 2, 1, 3}, {4, 5, 6, 7}};

CHudVisorBeamMenu::CHudVisorBeamMenu(CGuiFrame& frame, EVisorBeamMenu type,
                                     const rstl::reserved_vector< bool, 4 >& enables)
: x0_baseHud(frame)
, x4_type(type)
, x8_selectedItem(0)
, xc_pendingSelection(0)
, x10_interp(1.f)
, x14_24_visibleDebug(true)
, x14_25_visibleGame(true)
, x14_26_dirty(true)
, x28_menuItems(4, SMenuItem())
, x6c_animPhase(kAP_Steady)
, x70_(FLT_EPSILON)
, x74_(FLT_EPSILON)
, x78_textFader(0.f) {
  x7c_animDur = gpTweakGui->GetBeamVisorMenuAnimTime();
  x80_24_swapBeamControls = gpGameState->GameOptions().GetSwapBeamControls();
  x20_textpane_menu = static_cast< CGuiTextPane* >(
      frame.FindWidget(skMenuTitleWidgetNames[x80_24_swapBeamControls ? 1 - x4_type : x4_type]));
  x1c_basewidget_menutitle =
      frame.FindWidget(skBaseTitleWidgetNames[x80_24_swapBeamControls ? 1 - x4_type : x4_type]);
  x18_basewidget_menu =
      frame.FindWidget(skBaseWidgetNames[x80_24_swapBeamControls ? 1 - x4_type : x4_type]);
  const char* ghostName = CBasics::Stringize(
      "%s%s", x4_type == kVBM_Visor ? skVisorWidgetBaseName : skBeamWidgetBaseName, skGhostSuffix);
  x24_model_ghost = static_cast< CGuiModel* >(frame.FindWidget(ghostName));
  for (int i = 0; i < 4; ++i) {
    const char* const baseName =
        x4_type == kVBM_Visor ? skVisorWidgetBaseName : skBeamWidgetBaseName;
    const char* const indices = x4_type == kVBM_Visor ? skVisorWidgetIndices : skBeamWidgetIndices;
    const char* lozName = CBasics::Stringize("%s%s%c", baseName, skLozSuffix, indices[i]);
    x28_menuItems[i].x0_model_loz = static_cast< CGuiModel* >(frame.FindWidget(lozName));
    const char* iconName = CBasics::Stringize("%s%s%c", baseName, skIconSuffix, indices[i]);
    x28_menuItems[i].x4_model_icon = static_cast< CGuiModel* >(frame.FindWidget(iconName));
    x28_menuItems[i].xc_opacity = enables[i] ? 1.f : 0.f;
  }
  if (x4_type == kVBM_Visor) {
    x20_textpane_menu->TextSupport().SetFontColor(gpTweakGuiColors->GetVisorMenuTextFont());
    x20_textpane_menu->TextSupport().SetOutlineColor(gpTweakGuiColors->GetVisorMenuTextOutline());
  } else {
    x20_textpane_menu->TextSupport().SetFontColor(gpTweakGuiColors->GetBeamMenuTextFont());
    x20_textpane_menu->TextSupport().SetOutlineColor(gpTweakGuiColors->GetBeamMenuTextOutline());
  }
  x1c_basewidget_menutitle->SetColor(CColor::White().WithAlphaOf(0.f));
  x20_textpane_menu->TextSupport().SetText(
      rstl::wstring_l(gpStringTable->GetString(skMenuStringIndices[x4_type][x8_selectedItem])));
  for (int i = 0; i < 4; ++i) {
    x28_menuItems[i].x0_model_loz->SetColor(gpTweakGuiColors->GetVisorBeamMenuLozColor());
    UpdateMenuWidgetTransform(i, *x28_menuItems[i].x0_model_loz, 1.f);
  }
  Update(0.f, true);
}

void CHudVisorBeamMenu::SetSelection(int selection, int pending, float interp) {
  if (x8_selectedItem == selection && xc_pendingSelection == pending && interp == x10_interp) {
    return;
  }
  if (pending != selection) {
    if (x6c_animPhase != kAP_SelectFlash) {
      CSfxManager::SfxStart(skSelectionSounds[x4_type]);
    }
    x6c_animPhase = kAP_SelectFlash;
  } else if (interp < 1.f) {
    x6c_animPhase = kAP_Animate;
    x20_textpane_menu->TextSupport().SetText(
        rstl::wstring_l(gpStringTable->GetString(skMenuStringIndices[x4_type][x8_selectedItem])));
    x20_textpane_menu->TextSupport().SetTypeWriteEffectOptions(true, 0.1f, 16.f);
  } else {
    if (x6c_animPhase != kAP_Steady) {
      x78_textFader = x7c_animDur;
    }
    x6c_animPhase = kAP_Steady;
  }
  x14_26_dirty = true;
  x8_selectedItem = selection;
  xc_pendingSelection = pending;
  x10_interp = interp;
}

void CHudVisorBeamMenu::SetPlayerHas(const rstl::reserved_vector< bool, 4 >& enables) {
  for (int i = 0; i < 4; ++i) {
    SMenuItem& item = x28_menuItems[i];
    if (item.xc_opacity == 0.f && enables[i]) {
      item.xc_opacity = FLT_EPSILON;
    }
  }
}

void CHudVisorBeamMenu::UpdateHudAlpha(float alpha) {
  const float hudAlpha = gpGameState->GameOptions().GetHudAlpha();
  x18_basewidget_menu->SetColor(CColor::White().WithAlphaOf(alpha * hudAlpha));
}

void CHudVisorBeamMenu::Update(float dt, const bool init) {
  const bool swapBeamControls = gpGameState->GameOptions().GetSwapBeamControls();
  if (swapBeamControls != x80_24_swapBeamControls) {
    x80_24_swapBeamControls = swapBeamControls;
    x18_basewidget_menu = x0_baseHud.FindWidget(skBaseWidgetNames[GetSwappedType()]);
    x20_textpane_menu->TextSupport().SetText(rstl::wstring_l(L""));
    x20_textpane_menu = static_cast< CGuiTextPane* >(
        x0_baseHud.FindWidget(skMenuTitleWidgetNames[GetSwappedType()]));
    x1c_basewidget_menutitle = x0_baseHud.FindWidget(skBaseTitleWidgetNames[GetSwappedType()]);
    for (int i = 0; i < 4; ++i) {
      SMenuItem& item = x28_menuItems[i];
      UpdateMenuWidgetTransform(i, *item.x4_model_icon, item.x8_positioner);
      UpdateMenuWidgetTransform(i, *item.x0_model_loz, 1.f);
    }
    UpdateMenuWidgetTransform(x8_selectedItem, *x24_model_ghost,
                              x28_menuItems[x8_selectedItem].x8_positioner);
  }
  const CTweakGuiColors& guiColors = *gpTweakGuiColors;
  const CColor* const activeColor = &guiColors.GetVisorBeamMenuItemActive();
  const CColor* const inactiveColor = &guiColors.GetVisorBeamMenuItemInactive();
  const CColor* const lozColor = &guiColors.GetVisorBeamMenuLozColor();
  rstl::reserved_vector< CColor, 4 > colors;
  for (int i = 0; i < 4; ++i) {
    SMenuItem& item = x28_menuItems[i];
    if (item.xc_opacity > 0.f) {
      item.xc_opacity = rstl::min_val(1.f, item.xc_opacity + dt);
    }
    colors.push_back(CColor::Lerp(*activeColor, CColor(0), item.xc_opacity));
  }
  switch (x6c_animPhase) {
  case kAP_None:
    break;
  case kAP_Steady: {
    const CColor inactive = *inactiveColor;
    for (int i = 0; i < 4; ++i) {
      SMenuItem& item = x28_menuItems[i];
      const CColor& iconBase = i == x8_selectedItem ? *activeColor : inactive;
      const CColor& lozBase = i == x8_selectedItem ? *lozColor : *inactiveColor;
      const CColor icon = item.xc_opacity == 0.f ? CColor(0) : CColor::Add(iconBase, colors[i]);
      const CColor loz = item.xc_opacity == 0.f ? *lozColor : CColor::Add(lozBase, colors[i]);
      item.x4_model_icon->SetColor(icon);
      item.x0_model_loz->SetColor(loz);
      item.x8_positioner = i == x8_selectedItem ? 0.f : 1.f;
    }
    x24_model_ghost->SetColor(*activeColor);
    break;
  }
  case kAP_SelectFlash: {
    x1c_basewidget_menutitle->SetColor(CColor::White().WithAlphaOf(0.f));
    const CColor& flashBase = CMath::ModF(x10_interp, 0.1f) > 0.05f ? *activeColor : *inactiveColor;
    const CColor flash = CColor::Add(flashBase, colors[xc_pendingSelection]);
    x28_menuItems[xc_pendingSelection].x4_model_icon->SetColor(flash);
    x28_menuItems[xc_pendingSelection].x0_model_loz->SetColor(flash);
    const CColor base = CColor::Lerp(*inactiveColor, *activeColor, x10_interp);
    const CColor selectedColor = CColor::Add(base, colors[x8_selectedItem]);
    x28_menuItems[x8_selectedItem].x4_model_icon->SetColor(selectedColor);
    x28_menuItems[x8_selectedItem].x0_model_loz->SetColor(*lozColor);
    for (int i = 0; i < 4; ++i) {
      x28_menuItems[i].x8_positioner = i == x8_selectedItem ? 1.f - x10_interp : 1.f;
    }
    x24_model_ghost->SetColor(
        CColor::Lerp(*activeColor, *inactiveColor, x28_menuItems[x8_selectedItem].x8_positioner));
    break;
  }
  case kAP_Animate:
    for (int i = 0; i < 4; ++i) {
      SMenuItem& item = x28_menuItems[i];
      const CColor& iconBase = i == x8_selectedItem ? *activeColor : *inactiveColor;
      CGuiModel* iconModel = item.x4_model_icon;
      const CColor icon = item.xc_opacity == 0.f ? CColor(0) : CColor::Add(iconBase, colors[i]);
      iconModel->SetColor(icon);
      const CColor loz =
          item.xc_opacity == 0.f || i == x8_selectedItem ? *lozColor : *inactiveColor;
      item.x0_model_loz->SetColor(loz);
      item.x8_positioner = i == x8_selectedItem ? 1.f - x10_interp : 1.f;
    }
    x24_model_ghost->SetColor(
        CColor::Lerp(*activeColor, *inactiveColor, x28_menuItems[x8_selectedItem].x8_positioner));
    break;
  default:
    break;
  }
  if (x78_textFader > 0.f) {
    x78_textFader = rstl::max_val(0.f, x78_textFader - dt);
    const float alpha = x78_textFader / x7c_animDur;
    x1c_basewidget_menutitle->SetColor(CColor::White().WithAlphaOf(alpha));
  }
  if (x14_26_dirty || init) {
    x14_26_dirty = false;
    for (int i = 0; i < 4; ++i) {
      SMenuItem& item = x28_menuItems[i];
      UpdateMenuWidgetTransform(i, *item.x4_model_icon, item.x8_positioner);
    }
    UpdateMenuWidgetTransform(x8_selectedItem, *x24_model_ghost,
                              x28_menuItems[x8_selectedItem].x8_positioner);
  }
  if (!GetIsVisible()) {
    return;
  }
  if (x1c_basewidget_menutitle->GetModifiedColor().GetAlphau8()) {
    x1c_basewidget_menutitle->SetVisibility(true, kTM_Children);
  } else {
    x1c_basewidget_menutitle->SetVisibility(false, kTM_Children);
  }
  for (int i = 0; i < 4; ++i) {
    SMenuItem& item = x28_menuItems[i];
    if (item.x4_model_icon->GetModifiedColor().GetAlphau8()) {
      item.x4_model_icon->SetIsVisible(true);
    } else {
      item.x4_model_icon->SetIsVisible(false);
    }
  }
}

void CHudVisorBeamMenu::SetIsVisibleGame(const bool visible) {
  x14_25_visibleGame = visible;
  const bool isVisible = GetIsVisible();
  x18_basewidget_menu->SetVisibility(isVisible, kTM_Children);
  if (isVisible) {
    Update(0.f, true);
  }
}

void CHudVisorBeamMenu::UpdateMenuWidgetTransform(int idx, CGuiWidget& widget, float t) {
  t = CMath::AbsF(t);
  const float translate = t * gpTweakGui->GetVisorBeamMenuItemTranslate();
  const float scale = t * gpTweakGui->GetVisorBeamMenuItemInactiveScale() +
                      (1.f - t) * gpTweakGui->GetVisorBeamMenuItemActiveScale();
  if (x4_type == kVBM_Visor) {
    if (idx == 2) {
      idx = 3;
    } else if (idx == 3) {
      idx = 2;
    }
  } else {
    if (idx == 1) {
      idx = 2;
    } else if (idx == 2) {
      idx = 1;
    }
  }
  switch (idx) {
  case 0:
    widget.SetO2WTransform(x18_basewidget_menu->GetWorldTransform() *
                           CTransform4f::Translate(0.f, 0.f, translate) *
                           CTransform4f::Scale(scale));
    break;
  case 1:
    widget.SetO2WTransform(x18_basewidget_menu->GetWorldTransform() *
                           CTransform4f::Translate(translate, 0.f, 0.f) *
                           CTransform4f::Scale(scale));
    break;
  case 2:
    widget.SetO2WTransform(x18_basewidget_menu->GetWorldTransform() *
                           CTransform4f::Translate(0.f, 0.f, -translate) *
                           CTransform4f::Scale(scale));
    break;
  case 3:
    widget.SetO2WTransform(x18_basewidget_menu->GetWorldTransform() *
                           CTransform4f::Translate(-translate, 0.f, 0.f) *
                           CTransform4f::Scale(scale));
    break;
  default:
    break;
  }
}
