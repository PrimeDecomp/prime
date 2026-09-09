#include "dolphin/gx.h"

#include "dolphin/gx/GXPriv.h"

void __GXSetDirtyState(void) {
#define dState __GXData->dirtyState

  if (dState & 1) {
    __GXSetSUTexRegs();
  }
  if (dState & 2) {
    __GXUpdateBPMask();
  }
  if (dState & 4) {
    __GXSetGenMode();
  }
  if (dState & 8) {
    __GXSetVCD();
  }
  if (dState & 0x10) {
    __GXSetVAT();
  }
  if (dState & 0x18) {
    __GXCalculateVLim();
  }

  __GXData->dirtyState = 0;
}

void GXBegin(GXPrimitive type, GXVtxFmt vtxfmt, u16 nverts) {

  if (__GXData->dirtyState != 0) {
    __GXSetDirtyState();
  }

  if (*(u32 *)&__GXData->vNumNot == 0) { // checks both vNum and bpSentNot
    __GXSendFlushPrim();
  }
  GX_WRITE_U8(vtxfmt | type);
  GX_WRITE_U16(nverts);
}

void __GXSendFlushPrim(void) {
  u32 i;
  u32 numD = __GXData->vNum * __GXData->vLim;

  GX_WRITE_U8(0x98);
  GX_WRITE_U16(__GXData->vNum);
  for (i = 0; i < numD; i += 4) {
    GX_WRITE_U32(0);
  }
  __GXData->bpSentNot = 1;
}

void GXSetLineWidth(u8 width, GXTexOffset texOffsets) {

  SET_REG_FIELD(__GXData->lpSize, 8, 0, width);
  SET_REG_FIELD(__GXData->lpSize, 3, 16, texOffsets);
  GX_WRITE_RAS_REG(__GXData->lpSize);
  __GXData->bpSentNot = 0;
}

void GXSetPointSize(u8 pointSize, GXTexOffset texOffsets) {

  SET_REG_FIELD(__GXData->lpSize, 8, 8, pointSize);
  SET_REG_FIELD(__GXData->lpSize, 3, 19, texOffsets);
  GX_WRITE_RAS_REG(__GXData->lpSize);
  __GXData->bpSentNot = 0;
}

void GXEnableTexOffsets(GXTexCoordID coord, u8 line_enable, u8 point_enable) {

  SET_REG_FIELD(__GXData->suTs0[coord], 1, 18, line_enable);
  SET_REG_FIELD(__GXData->suTs0[coord], 1, 19, point_enable);
  GX_WRITE_RAS_REG(__GXData->suTs0[coord]);
  __GXData->bpSentNot = 0;
}

void GXSetCullMode(GXCullMode mode) {
  GXCullMode hwMode;

  switch (mode) {
  case GX_CULL_FRONT:
    hwMode = GX_CULL_BACK;
    break;
  case GX_CULL_BACK:
    hwMode = GX_CULL_FRONT;
    break;
  default:
    hwMode = mode;
    break;
  }

  SET_REG_FIELD(__GXData->genMode, 2, 14, hwMode);
  __GXData->dirtyState |= 4;
}

void GXSetCoPlanar(GXBool enable) {
  u32 reg;

  SET_REG_FIELD(__GXData->genMode, 1, 19, enable);
  reg = 0xFE080000;
  GX_WRITE_RAS_REG(reg);
  GX_WRITE_RAS_REG(__GXData->genMode);
}

void __GXSetGenMode(void) {
  GX_WRITE_RAS_REG(__GXData->genMode);
  __GXData->bpSentNot = 0;
}
