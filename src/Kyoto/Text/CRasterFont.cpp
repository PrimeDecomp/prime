#include "Kyoto/Text/CRasterFont.hpp"

#include "Kyoto/CFactoryFnReturn.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/CVParamTransfer.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CGraphicsPalette.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Text/CDrawStringOptions.hpp"
#include "Kyoto/Text/CTextRenderBuffer.hpp"

#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Text/TextCommon.hpp"
#include "rstl/algorithm.hpp"
#include "rstl/string.hpp"
#include "rstl/vector.hpp"

CRasterFont::CRasterFont(CInputStream& in, IObjectStore* store)
: x0_initialized(false)
, x4_monoWidth(16)
, x8_monoHeight(16)
, x2c_mode(kFM_OneLayer)
, x90_lineMargin(0) {
  if (in.ReadInt32() == 'FONT') {
    int version = in.ReadInt32();
    if (version >= 0 && version <= 2) {
      x4_monoWidth = in.ReadInt32();
      x8_monoHeight = in.ReadInt32();
      if (version >= 1) {
        x8c_baseline = in.ReadInt32();
      } else {
        x8c_baseline = x8_monoHeight;
      }

      if (version >= 2) {
        x90_lineMargin = in.ReadInt32();
      }

      bool fInfoA = in.ReadBool();
      bool fInfoB = in.ReadBool();
      int fInfoC = in.ReadInt32();
      int fontSize = in.ReadInt32();
      rstl::string fontName(in);
      CAssetId fontId = in.ReadInt32();

      if (store != nullptr) {
        x80_texture = store->GetObj(SObjectTag('TXTR', fontId));
        x80_texture->Lock();
      }

      x30_fontInfo = CFontInfo(fInfoA, fInfoB, fInfoC, fontSize, fontName.data());

      int mode = in.ReadInt32();
      switch (mode) {
      case 0:
        x2c_mode = kFM_OneLayer;
        break;
      case 1:
        x2c_mode = kFM_OneLayerOutline;
        break;
      }

      int glyphCount = in.ReadInt32();
      xc_glyphs.reserve(glyphCount);

      for (int i = 0; i < glyphCount; ++i) {
        short chr = in.ReadShort();
        float startU = in.ReadFloat();
        float startV = in.ReadFloat();
        float endU = in.ReadFloat();
        float endV = in.ReadFloat();
        int a = in.ReadInt32();
        int b = in.ReadInt32();
        int c = in.ReadInt32();
        int cellWidth = in.ReadInt32();
        int cellHeight = in.ReadInt32();
        int baseline = in.ReadInt32();
        int kernStart = in.ReadInt32();
        xc_glyphs.push_back(
            rstl::pair< wchar_t, CGlyph >(chr, CGlyph(a, b, c, startU, startV, endU, endV,
                                                      cellWidth, cellHeight, baseline, kernStart)));
      }
      rstl::sort(
          xc_glyphs.begin(), xc_glyphs.end(),
          rstl::default_pair_sorter_finder< rstl::vector< rstl::pair< wchar_t, CGlyph > > >());

      int kerningCount = in.ReadInt32();
      x1c_kerning.reserve(kerningCount);

      for (int i = 0; i < kerningCount; ++i) {
        short first = in.ReadShort();
        short second = in.ReadShort();
        int howMuch = in.ReadInt32();
        x1c_kerning.push_back(CKernPair(first, second, howMuch));
      }

      x0_initialized = true;
    }
  }
}

EFontMode CRasterFont::GetMode() const { return x2c_mode; }

void CRasterFont::GetSize(const CDrawStringOptions&, int&, int&, const wchar_t*, int) const {}
int CRasterFont::GetMonoWidth() const { return x4_monoWidth; }
int CRasterFont::GetMonoHeight() const { return x8_monoHeight; }
int CRasterFont::GetCarriageAdvance() { return GetMonoHeight() + GetLineMargin(); }

const CGlyph* CRasterFont::GetGlyph(wchar_t c) const { return InternalGetGlyph(c); }

void CRasterFont::DrawString(const CDrawStringOptions& options, int x, int y, int& xOut, int& yOut,
                             CTextRenderBuffer* buffer, const wchar_t* str, int length) const {
  if (!x0_initialized) {
    return;
  }

  if (buffer != nullptr) {
    CGraphicsPalette pal(kPF_RGB5A3, 4);
    ushort* data = reinterpret_cast< ushort* >(pal.Lock());
    data[0] = CColor(0.f, 0.f, 0.f, 0.f).ToRGB5A3();
    data[1] = CColor(options.GetPaletteEntry(0)).ToRGB5A3();
    data[2] = CColor(options.GetPaletteEntry(1)).ToRGB5A3();
    data[3] = CColor(0.f, 0.f, 0.f, 0.f).ToRGB5A3();
    pal.UnLock();
    buffer->AddPaletteChange(pal);
  }

  SinglePassDrawString(options, x, y, xOut, yOut, buffer, str, length);
}

void CRasterFont::DrawSpace(const CDrawStringOptions& options, int x, int y, int& xOut, int& yOut,
                            int length) const {
  if (options.GetTextDirection() != kTD_Horizontal) {
    return;
  }

  xOut = x + length;
  yOut = y;
}

int CRasterFont::KernLookup(const rstl::vector< CKernPair >& kern, const int start, const int chr) {

  rstl::vector< CKernPair >::const_iterator it = kern.begin() + start;
  for (; it != kern.end() && it->GetFirst() == kern[start].GetFirst(); ++it) {
    if (it->GetSecond() == chr) {
      return it->GetHowMuch();
    }
  }

  return 0;
}

const CGlyph* CRasterFont::InternalGetGlyph(wchar_t chr) const {
  rstl::vector< rstl::pair< wchar_t, CGlyph > >::const_iterator it =
      rstl::find_by_key(xc_glyphs, chr);

  if (it == xc_glyphs.end()) {
    return nullptr;
  }

  return &it->second;
}
#pragma inline_max_size(110)
CFactoryFnReturn FRasterFontFactory(const SObjectTag& tag, CInputStream& in,
                                    const CVParamTransfer& xfer) {
  const rstl::rc_ptr< IVParamObj > obj = xfer.x0_obj;
  CSimplePool* pool = static_cast< TObjOwnerParam< CSimplePool* >* >(obj.GetPtr())->GetData();

  return rs_new CRasterFont(in, pool);
}

void CRasterFont::SetupRenderState() {
  static const GXVtxDescList skDescList[] = {
      {GX_VA_POS, GX_DIRECT},
      {GX_VA_TEX0, GX_DIRECT},
      {GX_VA_NULL, GX_NONE},
  };

  TLockedToken< CTexture > texture = *x80_texture;
  texture->Load(GX_TEXMAP0, CTexture::kCM_Clamp);
  CGX::SetTevKAlphaSel(GX_TEVSTAGE0, GX_TEV_KASEL_K0_A);
  CGX::SetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K0);
  CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO);
  CGX::SetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_TEXA, GX_CA_KONST, GX_CA_ZERO);
  CGX::SetStandardTevColorAlphaOp(GX_TEVSTAGE0);
  CGX::SetTevDirect(GX_TEVSTAGE0);
  CGX::SetVtxDescv(skDescList);
  CGX::SetNumChans(0);
  CGX::SetNumTexGens(1);
  CGX::SetNumTevStages(1);
  CGX::SetNumIndStages(0);
  CGX::SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
  CGX::SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
}

int CRasterFont::GetBaseLine() const { return x8c_baseline; }
int CRasterFont::GetLineMargin() { return x90_lineMargin; }

bool CRasterFont::IsFinishedLoading() { return x80_texture && x80_texture->IsLoaded(); }

void CRasterFont::SetTexture(TToken< CTexture > texture) {
  x80_texture = texture;
  x80_texture->Lock();
}
