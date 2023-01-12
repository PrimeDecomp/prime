#ifndef _CSAVEABLESTATE
#define _CSAVEABLESTATE

#include "Kyoto/Text/CDrawStringOptions.hpp"
#include "Kyoto/Text/CRasterFont.hpp"
#include "Kyoto/Text/CTextColor.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/vector.hpp"

class CSaveableState {
public:
  CSaveableState();
  bool IsFinishedLoading();

  CDrawStringOptions& GetOptions() { return x0_drawStringOptions; }
  TToken<CRasterFont>& GetFont() { return *x48_font; }
  rstl::vector<CTextColor>& GetColors() { return x54_colors; }
  rstl::vector<bool>& GetOverride() { return x64_colorOverrides; }
  void SetLineSpacing(float spacing) { x74_lineSpacing = spacing; }
  void SetLineExtraSpace(int spacing) { x78_extraLineSpacing = spacing; }

  
private:
  CDrawStringOptions x0_drawStringOptions;
  rstl::optional_object< TToken< CRasterFont > > x48_font;
  rstl::vector< CTextColor > x54_colors;
  rstl::vector<bool> x64_colorOverrides;
  float x74_lineSpacing;
  int x78_extraLineSpacing;
  bool x7c_enableWordWrap;
  EJustification x80_just;
  EVerticalJustification x84_vjust;
};

#endif // _CSAVEABLESTATE
