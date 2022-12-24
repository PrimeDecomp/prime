#ifndef _CRASTERFONT
#define _CRASTERFONT

#include "types.h"

#include "Kyoto/TToken.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"
#include "rstl/vector.hpp"

#include "string.h"

class CTexture;
class CDrawStringOptions;
class IObjectStore;

class CFontInfo {
public:
  CFontInfo(bool a, bool b, int c, int fontSize, const char* name)
  : x0_(a), x1_(b), x4_(c), x8_fontSize(fontSize) {
    strcpy(xc_name, name);
  }

private:
  bool x0_;
  bool x1_;
  int x4_;
  int x8_fontSize;
  char xc_name[64];
};

class CKernPair {
public:
  CKernPair(wchar_t first, wchar_t second, int howMuch)
  : x0_first(first), x2_second(second), x4_howMuch(howMuch) {}

  wchar_t GetFirst() const { return x0_first; }
  wchar_t GetSecond() const { return x2_second; }
  int GetHowMuch() const { return x4_howMuch; }

private:
  wchar_t x0_first;
  wchar_t x2_second;
  int x4_howMuch;
};

class CGlyph {
public:
  CGlyph(int a, int b, int c, float startU, float startV, float endU, float endV, int cellWidth,
         int cellHeight, int baseline, int kernStart)
  : x0_a(a)
  , x2_b(b)
  , x4_c(c)
  , x8_startU(startU)
  , xc_startV(startV)
  , x10_endU(endU)
  , x14_endV(endV)
  , x18_cellWidth(cellWidth)
  , x1a_cellHeight(cellHeight)
  , x1c_baseline(baseline)
  , x1e_kernStart(kernStart)
   {}

  short GetA() const { return x0_a; }
  short GetB() const { return x2_b; }
  short GetC() const { return x4_c; }
  float GetStartU() const { return x8_startU; }
  float GetStartV() const { return xc_startV; }
  float GetEndU() const { return x10_endU; }
  float GetEndV() const { return x14_endV; }
  short GetCellWidth() const { return x18_cellWidth; }
  short GetCellHeight() const { return x1a_cellHeight; }
  short GetBaseline() const { return x1c_baseline; }
  short GetKernStart() const { return x1e_kernStart; }
  //short GetLayer() const { return x20_layer; }

private:
  short x0_a;
  short x2_b;
  short x4_c;
  float x8_startU;
  float xc_startV;
  float x10_endU;
  float x14_endV;
  short x18_cellWidth;
  short x1a_cellHeight;
  short x1c_baseline;
  short x1e_kernStart;
  //short x20_layer;
};

enum EFontMode {
  kFM_None = -1,
  kFM_OneLayer,
  kFM_OneLayerOutline,
  kFM_FourLayers,
  kFM_TwoLayersOutline,
  kFM_TwoLayers,
};

class CRasterFont {
public:
  CRasterFont(CInputStream& in, IObjectStore* store);
  ~CRasterFont();

  EFontMode GetMode() const;
  void GetSize(const CDrawStringOptions&, int&, int&, const wchar_t*, int) const;
  void SetTexture(TToken< CTexture > token) { x80_texture = token; }
  bool IsFinishedLoading();

private:
  bool x0_initialized;
  int x4_monoWidth;
  int x8_monoHeight;
  rstl::vector< rstl::pair< wchar_t, CGlyph > > xc_glyphs;
  rstl::vector< CKernPair > x1c_kerning;
  EFontMode x2c_mode;
  rstl::optional_object< CFontInfo > x30_fontInfo;
  rstl::optional_object< TToken< CTexture > > x80_texture;
  int x8c_baseline;
  int x90_lineMargin;
};
CHECK_SIZEOF(CRasterFont, 0x94)

#endif // _CRASTERFONT
