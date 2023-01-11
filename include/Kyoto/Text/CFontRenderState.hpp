#ifndef _CFONTRENDERSTATE
#define _CFONTRENDERSTATE

#include "Kyoto/Text/CDrawStringOptions.hpp"
#include "Kyoto/Text/CSaveableState.hpp"
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
  const TToken< CRasterFont >& GetFont() { return x0_state.GetFont(); }
  rstl::vector< CTextColor >& GetColors() { return x0_state.GetColors(); }
  rstl::vector< bool >& GetOverride() { return x0_state.GetOverride(); }
  void SetLineSpacing(float spacing) { x0_state.SetLineSpacing(spacing); }
  void SetExtraLineSpace(int spacing) { x0_state.SetLineExtraSpace(spacing); }
  void SetBlock(const CBlockInstruction* block) { x88_curBlock = const_cast<CBlockInstruction*>(block); }
  void SetX(int x) { xd4_curX = x; }
  int GetX() const { return xd4_curX; }
  void SetY(int y) { xd8_curY = y; }
  int GetY() const { return xd8_curY; }
private:
  CSaveableState x0_state;
  CBlockInstruction* x88_curBlock;
  CDrawStringOptions x8c_drawOpts;
  int xd4_curX;
  int xd8_curY;
};

#endif // _CFONTRENDERSTATE
