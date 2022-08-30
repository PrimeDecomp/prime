#include "Kyoto/Graphics/CGX.hpp"

CGX::SGXState CGX::sGXState;

void CGX::SetNumChans(u8 num) {
  sGXState.x4e_numChans = num;
  sGXState.x4c_numChansDirty = sGXState.x4e_numChans != sGXState.x4d_prevNumChans;
}

void CGX::SetNumTexGens(u8 num) {
  if (num != sGXState.x4f_numTexGens) {
    sGXState.x4f_numTexGens = num;
    GXSetNumTexGens(num);
  }
}

void CGX::SetChanAmbColor(EChannelId channel, const GXColor& color) {
  if (!CompareGXColors(color, sGXState.x38_chanAmbColors[channel])) {
    CopyGXColor(sGXState.x38_chanAmbColors[channel], color);
    GXSetChanAmbColor(static_cast< GXChannelID >(GX_COLOR0A0 + channel), color);
  }
}

GXColor CGX::GetChanAmbColor(EChannelId channel) { return sGXState.x38_chanAmbColors[channel]; }

void CGX::SetChanMatColor(EChannelId channel, const GXColor& color) {
  if (!CompareGXColors(color, sGXState.x40_chanMatColors[channel])) {
    CopyGXColor(sGXState.x40_chanMatColors[channel], color);
    GXSetChanMatColor(static_cast< GXChannelID >(GX_COLOR0A0 + channel), color);
  }
}

// TODO non-matching
void CGX::SetChanCtrl(EChannelId channel, GXBool enable, GXColorSrc ambSrc, GXColorSrc matSrc, GXLightID lights, GXDiffuseFn diffFn,
                      GXAttnFn attnFn) {
  u16 flags = (lights == GX_LIGHT_NULL ? 0 : enable) & 1 | (ambSrc & 1) << 1 | (matSrc & 1) << 2 | (lights & 0xFF) << 3 |
              (diffFn & 3) << 11 | (attnFn & 3) << 13;
  sGXState.x34_chanCtrls[channel] = flags;
  sGXState.x4c_dirtyChanCtrl = (((sGXState.x34_chanCtrls[channel] != sGXState.x30_prevChanCtrls[channel]) & 1) << channel) &
                               (sGXState.x4c_dirtyChanCtrl & ~(1 << channel));
  // if (channel == Channel0) {
  //   sGXState.x4c_dirtyChanCtrl0 = (sGXState.x34_chanCtrls[channel] != sGXState.x30_prevChanCtrls[channel]);
  // } else {
  //   sGXState.x4c_dirtyChanCtrl1 = (sGXState.x34_chanCtrls[channel] != sGXState.x30_prevChanCtrls[channel]);
  // }
}

void CGX::SetNumTevStages(u8 num) {
  if (sGXState.x50_numTevStages != num) {
    sGXState.x50_numTevStages = num;
    GXSetNumTevStages(num);
  }
}

void CGX::SetTevKColor(GXTevKColorID id, const GXColor& color) {
  if (!CompareGXColors(sGXState.x58_kColors[id], color)) {
    CopyGXColor(sGXState.x58_kColors[id], color);
    GXSetTevKColor(id, color);
  }
}

// TODO non-matching
void CGX::SetTevColorIn(GXTevStageID stageId, GXTevColorArg a, GXTevColorArg b, GXTevColorArg c, GXTevColorArg d) {
  u32 ma = MaskAndShiftLeft(a, 0x1F, 0);
  u32 mb = MaskAndShiftLeft(b, 0x1F, 5);
  u32 mc = MaskAndShiftLeft(c, 0x1F, 10);
  u32 md = MaskAndShiftLeft(d, 0x1F, 15);
  u32 flags = ma | mb | mc | md;
  if (flags != sGXState.x68_tevStates[stageId].x0_colorInArgs) {
    sGXState.x68_tevStates[stageId].x0_colorInArgs = flags;
    GXSetTevColorIn(stageId, a, b, c, d);
  }
}