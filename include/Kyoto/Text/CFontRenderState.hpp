#ifndef _CFONTRENDERSTATE
#define _CFONTRENDERSTATE

#include "Kyoto/Text/CSaveableState.hpp"
#include "Kyoto/Text/CDrawStringOptions.hpp"

class CBlockInstruction;

class CFontRenderState : private CSaveableState {
public:
  void SetLineSpacing(float spacing) { CSaveableState::SetLineSpacing(spacing); }
  void SetExtraLineSpace(int spacing) { CSaveableState::SetLineExtraSpace(spacing); }

private:
  CBlockInstruction* x88_curBlock;
  CDrawStringOptions x8c_drawOpts;
  int xd4_curX;
  int xd8_curY;
};

#endif // _CFONTRENDERSTATE
