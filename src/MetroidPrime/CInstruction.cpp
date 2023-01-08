#include "Kyoto/Text/CInstruction.hpp"

/* TODO: These get ODR'd into CSplashScreen, so match and link that and put these in the header where they belong */
uint CInstruction::GetAssetCount() const { return 0; }

void CInstruction::GetAssets(rstl::vector< CToken >& assetsOut) const {}

void CInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {}
