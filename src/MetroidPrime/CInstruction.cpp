#include "MetroidPrime/CInstruction.hpp"

uint CInstruction::GetAssetCount() const { return 0; }

void CInstruction::GetAssets(rstl::vector< CToken >& assetsOut) const {}

void CInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {}
