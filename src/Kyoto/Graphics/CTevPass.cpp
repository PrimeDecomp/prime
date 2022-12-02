#include "Kyoto/Graphics/CTevCombiners.hpp"

// TODO: Figure out why this doesn't inline and get rid of this fake TU
CTevCombiners::CTevPass::CTevPass(const ColorPass& colorPass, const AlphaPass& alphaPass, const CTevOp& colorOp,
         const CTevOp& alphaOp)
: x0_id(sUniquePass++)
, x4_colorPass(colorPass)
, x14_alphaPass(alphaPass)
, x24_colorOp(colorOp)
, x38_alphaOp(alphaOp) {}
