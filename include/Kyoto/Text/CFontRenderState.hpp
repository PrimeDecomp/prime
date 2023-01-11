#ifndef _CFONTRENDERSTATE
#define _CFONTRENDERSTATE

#include "Kyoto/Text/CSaveableState.hpp"
#include "Kyoto/Text/CDrawStringOptions.hpp"
#include "Kyoto/Text/TextCommon.hpp"

class CBlockInstruction;

class CFontRenderState {
public:
  uint ConvertToTextureSpace(const CTextColor& color) const;
  void PushState();
  void PopState();
  void SetColor(EColorType type, const CTextColor& color);
  void RefreshPalette();
  CDrawStringOptions& GetOptions() { return x0_state.GetOptions(); }
  const TToken<CRasterFont>& GetFont() { return x0_state.GetFont(); }
  void SetLineSpacing(float spacing) { x0_state.SetLineSpacing(spacing); }
  void SetExtraLineSpace(int spacing) { x0_state.SetLineExtraSpace(spacing); }
  
  rstl::vector<CTextColor>& GetColors() { return x0_state.GetColors(); }
  rstl::vector<bool>& GetOverride() { return x0_state.GetOverride(); }
private:
  CSaveableState x0_state;
  CBlockInstruction* x88_curBlock;
  CDrawStringOptions x8c_drawOpts;
  int xd4_curX;
  int xd8_curY;
};

#endif // _CFONTRENDERSTATE
