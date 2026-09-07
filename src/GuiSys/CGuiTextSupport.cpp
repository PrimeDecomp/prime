#include "GuiSys/CGuiTextSupport.hpp"

#include "Kyoto/Basics/CBasics.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Text/CRasterFont.hpp"
#include "Kyoto/Text/CTextExecuteBuffer.hpp"
#include "Kyoto/Text/CTextParser.hpp"
#include "rstl/StringExtras.hpp"
#include "rstl/algorithm.hpp"
#include "rstl/math.hpp"
#include <math.h>

CTextExecuteBuffer* CGuiTextSupport::gpExecBuf;
CTextParser* CGuiTextSupport::gpTextParser;

CGuiTextProperties::CGuiTextProperties(
    const bool wordWrap, const bool horizontal, const EJustification justification,
    const EVerticalJustification vertJustification,
    const rstl::vector< rstl::pair< CAssetId, CAssetId > >* txtrMap)
: x0_wordWrap(wordWrap)
, x1_horizontal(horizontal)
, x4_justification(justification)
, x8_vertJustification(vertJustification)
, xc_txtrMap(txtrMap) {}

CGuiTextSupport::CGuiTextSupport(CAssetId fontId, const CGuiTextProperties& props,
                                 const CColor& fontCol, const CColor& outlineCol,
                                 const CColor& geomCol, int extX, int extY, CSimplePool* store)
: x10_curTimeMod900(0.f)
, x14_props(props)
, x24_fontColor(fontCol)
, x28_outlineColor(outlineCol)
, x2c_geometryColor(geomCol)
, x30_imageBaseline(false)
, x34_extentX(extX)
, x38_extentY(extY)
, x3c_curTime(0.f)
, x50_typeEnable(false)
, x54_chFadeTime(0.1f)
, x58_chRate(10.f)
, x5c_fontId(fontId)
, x2dc_oneBufBounds(CVector2i(0, 0), CVector2i(0, 0))
, x304_pageCounter(0)
, x308_multipageFlag(false) {
  if (x5c_fontId != kInvalidAssetId) {
    x2cc_font = TLockedToken< CRasterFont >(store->GetObj(SObjectTag('FONT', x5c_fontId)));
  }
}

CGuiTextSupport::~CGuiTextSupport() {}

bool CGuiTextSupport::GetIsTextSupportFinishedLoading() const {
  CheckAndRebuildRenderBuffer();
  return _GetIsTextSupportFinishedLoading();
}

bool CGuiTextSupport::_GetIsTextSupportFinishedLoading() const {
  for (int i = 0; i < x2bc_assets.size(); ++i) {
    if (!x2bc_assets[i].IsLocked()) {
      x2bc_assets[i].Lock();
    }
    if (!x2bc_assets[i].IsLoaded()) {
      return false;
    }
  }
  if (x2cc_font.valid()) {
    TLockedToken< CRasterFont > font = *x2cc_font;
    return font->IsFinishedLoading();
  }
  if (!x2cc_font.valid() && x2bc_assets.empty()) {
    return false;
  }
  return true;
}

void CGuiTextSupport::SetText(const rstl::string& str, bool multipage) {
  rstl::wstring converted = CStringExtras::ConvertToUNICODE(str);
  SetText(converted, multipage);
}

void CGuiTextSupport::SetText(const rstl::wstring& str, bool multipage) {
  if (x0_string != str) {
    x40_primStartTimes.clear();
    x3c_curTime = 0.f;
    x0_string = str;
    ClearRenderBuffer();
    x308_multipageFlag = multipage;
    x304_pageCounter = 0;
  }
}

void CGuiTextSupport::AddText(const rstl::wstring& str) {
  if (x60_renderBuf) {
    x40_primStartTimes.reserve(x40_primStartTimes.size() + 1);
    x40_primStartTimes.push_back(
        rstl::pair< float, int >(rstl::max_val(GetCurrentAnimationOverAge(), GetCurTime()),
                                 x60_renderBuf->GetNumPrimitives()));
  }
  x0_string.append(str);
  ClearRenderBuffer();
}

void CGuiTextSupport::SetWordWrap(bool wordWrap) {
  if (wordWrap != x14_props.x0_wordWrap) {
    x14_props.x0_wordWrap = wordWrap;
    ClearRenderBuffer();
  }
}

void CGuiTextSupport::SetImageBaseline(bool baseline) {
  if (x30_imageBaseline != baseline) {
    x30_imageBaseline = baseline;
    ClearRenderBuffer();
  }
}

void CGuiTextSupport::SetJustification(EJustification just) {
  if (just != x14_props.x4_justification) {
    x14_props.x4_justification = just;
    ClearRenderBuffer();
  }
}

void CGuiTextSupport::SetVerticalJustification(EVerticalJustification just) {
  if (just != x14_props.x8_vertJustification) {
    x14_props.x8_vertJustification = just;
    ClearRenderBuffer();
  }
}

void CGuiTextSupport::SetFontColor(const CColor& col) {
  if (!(x24_fontColor == col)) {
    ClearRenderBuffer();
    x24_fontColor = col;
  }
}

void CGuiTextSupport::SetOutlineColor(const CColor& col) {
  if (!(x28_outlineColor == col)) {
    ClearRenderBuffer();
    x28_outlineColor = col;
  }
}

void CGuiTextSupport::SetGeometryColor(const CColor& col) { x2c_geometryColor = col; }

void CGuiTextSupport::SetControlTXTRMap(
    const rstl::vector< rstl::pair< CAssetId, CAssetId > >* txtrMap) {
  if (x14_props.xc_txtrMap != txtrMap) {
    x14_props.xc_txtrMap = txtrMap;
    ClearRenderBuffer();
  }
}

void CGuiTextSupport::Render() const {
  CheckAndRebuildRenderBuffer();
  CTransform4f oldModel = CGraphics::GetModelMatrix();
  CGraphics::SetModelMatrix(oldModel * CTransform4f::Scale(CVector3f(1.f, 1.f, -1.f)));
  if (const CTextRenderBuffer* buf = GetCurrentPageRenderBuffer()) {
    buf->Render(x2c_geometryColor, x10_curTimeMod900);
  }
  CGraphics::SetModelMatrix(oldModel);
}

void CGuiTextSupport::CheckAndRebuildTextBuffer() const {
  gpExecBuf->Clear();
  gpExecBuf->AddWordWrapping(x14_props.GetIsWrap());
  gpExecBuf->BeginBlock(0, 0, x34_extentX, x38_extentY, x30_imageBaseline,
                        x14_props.GetIsLeftToRight() ? kTD_Horizontal : kTD_Vertical,
                        x14_props.GetJustification(), x14_props.GetVerticalJustification());
  gpExecBuf->AddColor(kCT_Main, x24_fontColor.GetRed(), x24_fontColor.GetGreen(),
                      x24_fontColor.GetBlue(), x24_fontColor.GetAlpha());
  gpExecBuf->AddColor(kCT_Outline, x28_outlineColor.GetRed(), x28_outlineColor.GetGreen(),
                      x28_outlineColor.GetBlue(), x28_outlineColor.GetAlpha());
  rstl::wstring str;
  if (x5c_fontId != kInvalidAssetId) {
    str = rstl::wstring(CStringExtras::ConvertToUNICODE(
        rstl::string(CBasics::Stringize("&font=%8.8X;", x5c_fontId))));
  }
  str.append(x0_string);
  gpTextParser->ParseText(*gpExecBuf, str.c_str(), str.size(), x14_props.xc_txtrMap);
  gpExecBuf->EndBlock();
}

bool CGuiTextSupport::CheckAndRebuildRenderBuffer() const {
  if ((!x308_multipageFlag && !x60_renderBuf) ||
      (x308_multipageFlag && x2ec_renderBufferPages.empty())) {
    CheckAndRebuildTextBuffer();
    x2bc_assets = gpExecBuf->GetAssets();
    if (_GetIsTextSupportFinishedLoading()) {
      CheckAndRebuildTextBuffer();
      if (x308_multipageFlag) {
        x2ec_renderBufferPages =
            gpExecBuf->BuildRenderBufferPages(CVector2i(x34_extentX, x38_extentY));
      } else {
        x60_renderBuf = gpExecBuf->BuildRenderBuffer();
        x2dc_oneBufBounds = x60_renderBuf->AccumulateTextBounds();
      }
      gpExecBuf->Clear();
    } else {
      return false;
    }
    const_cast< CGuiTextSupport* >(this)->Update(0.f);
  }
  return true;
}

void CGuiTextSupport::ClearRenderBuffer() {
  x60_renderBuf.clear();
  x2ec_renderBufferPages = rstl::list< CTextRenderBuffer >();
}

void CGuiTextSupport::Update(float dt) {
  if (x50_typeEnable) {
    CTextRenderBuffer* buf = GetCurrentPageRenderBuffer();
    if (buf != nullptr) {
      float chStartTime = 0.f;
      for (int i = 0; i < buf->GetNumPrimitives(); ++i) {
        for (int j = 0; j < x40_primStartTimes.size(); ++j) {
          const rstl::pair< float, int >& p = x40_primStartTimes[j];
          if (p.second < i) {
            continue;
          }
          if (p.second != i) {
            break;
          }
          chStartTime = p.first;
          break;
        }
        CTextRenderBuffer::Primitive prim = buf->GetPrimitive(i);
        float alpha =
            rstl::min_val(1.f, rstl::max_val(0.f, (x3c_curTime - chStartTime) / x54_chFadeTime));
        chStartTime += 1.f / x58_chRate;
        CColor col(prim.x0_color);
        col.SetAlpha(alpha);
        prim.x0_color = col.GetColor_u32();
        buf->SetPrimitive(prim, i);
      }
    }
    x3c_curTime += dt;
  }
  x10_curTimeMod900 = fmod(x10_curTimeMod900 + dt, 900.0);
}

void CGuiTextSupport::SetTypeWriteEffectOptions(bool enable, float fadeTime, float rate) {
  x50_typeEnable = enable;
  x54_chFadeTime = rstl::max_val(fadeTime, 0.0001f);
  x58_chRate = rstl::max_val(rate, 1.f);
}

float CGuiTextSupport::GetTotalAnimationTime() const {
  if (const CTextRenderBuffer* buf = GetCurrentPageRenderBuffer()) {
    if (x50_typeEnable) {
      return buf->GetNumPrimitives() / x58_chRate;
    }
  }
  return 0.f;
}

float CGuiTextSupport::GetNumCharactersPrinted() const {
  if (const CTextRenderBuffer* buf = GetCurrentPageRenderBuffer()) {
    if (x50_typeEnable) {
      return rstl::min_val(static_cast< float >(buf->GetNumPrimitives()), x3c_curTime * x58_chRate);
    }
  }
  return 0.f;
}

float CGuiTextSupport::GetNumCharsTotal() const {
  if (const CTextRenderBuffer* buf = GetCurrentPageRenderBuffer()) {
    if (x50_typeEnable) {
      return buf->GetNumPrimitives();
    }
  }
  return 0.f;
}

float CGuiTextSupport::GetCurrentAnimationOverAge() const {
  float ret = 0.f;
  if (const CTextRenderBuffer* buf = GetCurrentPageRenderBuffer()) {
    if (x50_typeEnable) {
      if (!x40_primStartTimes.empty()) {
        const rstl::pair< float, int >& last = x40_primStartTimes.back();
        ret = rstl::max_val(ret, (buf->GetNumPrimitives() - last.second) / x58_chRate + last.first);
      } else {
        ret = rstl::max_val(ret, buf->GetNumPrimitives() / x58_chRate);
      }
    }
  }
  return ret;
}

int CGuiTextSupport::GetTotalPageCount() {
  if (CheckAndRebuildRenderBuffer()) {
    return x2ec_renderBufferPages.size();
  }
  return -1;
}

void CGuiTextSupport::SetPage(int page) {
  x304_pageCounter = page;
  x40_primStartTimes.clear();
  x3c_curTime = 0.f;
}

const CTextRenderBuffer* CGuiTextSupport::GetCurrentPageRenderBuffer() const {
  if (x60_renderBuf && !x308_multipageFlag) {
    return x60_renderBuf.get_ptr();
  }
  if (x308_multipageFlag && x2ec_renderBufferPages.size() > x304_pageCounter) {
    int i = 0;
    for (AUTO(it, x2ec_renderBufferPages.begin());; ++it, ++i) {
      if (i == x304_pageCounter) {
        return &*it;
      }
    }
  }
  return nullptr;
}

const rstl::pair< CVector2i, CVector2i >& CGuiTextSupport::GetBounds() {
  CheckAndRebuildRenderBuffer();
  return x2dc_oneBufBounds;
}
