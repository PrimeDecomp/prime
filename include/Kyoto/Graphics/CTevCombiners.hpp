#ifndef _CTEVCOMBINERS
#define _CTEVCOMBINERS

#include "types.h"

#include <dolphin/gx/GXEnum.h>

class CTevCombiners {
public:
  enum EColorSrc {
    kCS_PreviousColor,
    kCS_PreviousAlpha,
    kCS_RegisterC0,
    kCS_RegisterA0,
    kCS_RegisterC1,
    kCS_RegisterA1,
    kCS_RegisterC2,
    kCS_RegisterA2,
    kCS_TextureColor,
    kCS_TextureAlpha,
    kCS_RasterColor,
    kCS_RasterAlpha,
    kCS_One,
    kCS_Half,
    kCS_Konst,
    kCS_Zero,
  };
  struct ColorVar {
    EColorSrc x0_src;
  };
  struct ColorPass {
    ColorVar x0_a;
    ColorVar x4_b;
    ColorVar x8_c;
    ColorVar xc_d;
  };

  enum EAlphaSrc {
    kAS_PreviousAlpha,
    kAS_RegisterA0,
    kAS_RegisterA1,
    kAS_RegisterA2,
    kAS_TextureAlpha,
    kAS_RasterAlpha,
    kAS_One,
    kAS_Zero,
    kAS_Konst,
  };
  struct AlphaVar {
    EAlphaSrc x0_src;
  };
  struct AlphaPass {
    AlphaVar x0_a;
    AlphaVar x4_b;
    AlphaVar x8_c;
    AlphaVar xc_d;
  };

  enum ETevOp {
    kTO_Add,
    kTO_Subtract,
  };
  enum ETevBias {
    kTB_Zero,
    kTB_AddHalf,
    kTB_SubHalf,
  };
  enum ETevScale {
    kTS_Scale1,
    kTS_Scale2,
    kTS_Scale4,
    kTS_Divide2,
  };
  enum ETevOutput {
    kTO_Previous,
    kTO_Register0,
    kTO_Register1,
    kTO_Register2,
  };
  struct CTevOp {
    bool x0_clamp;
    ETevOp x4_op;
    ETevBias x8_bias;
    ETevScale xc_scale;
    ETevOutput x10_output;
  };

  class CTevPass {
  public:
    uint x0_id;
    ColorPass x4_colorPass;
    AlphaPass x14_alphaPass;
    CTevOp x24_colorOp;
    CTevOp x38_alphaOp;
  };
};

extern CTevCombiners::CTevPass CTevPass_805a5ebc;
// TODO move to CGraphics
extern CTevCombiners::CTevPass* PTR_skPassThru_805a8828;

#endif // _CTEVCOMBINERS
