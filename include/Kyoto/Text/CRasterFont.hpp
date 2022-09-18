#ifndef _CRASTERFONT_HPP
#define _CRASTERFONT_HPP

#include "types.h"

#include "rstl/pair.hpp"
#include "rstl/vector.hpp"

class CGlyph;
class CKernPair;
class CTexture;

class CFontInfo {
private:
  bool x0_;
  bool x1_;
  int x4_;
  int x8_fontSize;
  char xc_name[64];
};

class CRasterFont {
public:
  CRasterFont(CInputStream&, IObjectStore*);
  ~CRasterFont();

  void SetTexture(TToken< CTexture > token) { x7c_texture = token; }

private:
  bool x0_initialized;
  int x4_monoWidth;
  int x8_monoHeight;
  rstl::vector< rstl::pair< wchar_t, CGlyph > > xc_glyphs;
  rstl::vector< CKernPair > x1c_kerning;
  int mode;
  CFontInfo x30_fontInfo;
  TLockedToken< CTexture > x7c_texture;
  int x88_;
  int x8c_baseline;
  int x90_lineMargin;
};
CHECK_SIZEOF(CRasterFont, 0x94)

#endif
