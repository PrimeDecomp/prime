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
      x8c_baseline = version >= 1 ? in.ReadInt32() : x8_monoHeight;
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
      //rstl::sort(xc_glyphs.begin(), xc_glyphs.end(),
      //           rstl::pair_sorter_finder< wchar_t, CGlyph, rstl::less< wchar_t > >());
    }
  }
}
