#include "Kyoto/Text/CRasterFont.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

#include "rstl/algorithm.hpp"
#include "rstl/string.hpp"

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
