#include "dolphin/gx.h"

#include "dolphin/gx/GXPriv.h"

static u32 TEVCOpTableST0[] = {
    0xC008F8AF, // modulate
    0xC008A89F, // decal
    0xC008AC8F, // blend
    0xC008FFF8, // replace
    0xC008FFFA, // passclr
};

static u32 TEVCOpTableST1[] = {
    0xC008F80F, // modulate
    0xC008089F, // decal
    0xC0080C8F, // blend
    0xC008FFF8, // replace
    0xC008FFF0, // passclr
};

static u32 TEVAOpTableST0[] = {
    0xC108F2F0, // modulate
    0xC108FFD0, // decal
    0xC108F2F0, // blend
    0xC108FFC0, // replace
    0xC108FFD0, // passclr
};

static u32 TEVAOpTableST1[] = {
    0xC108F070, // modulate
    0xC108FF80, // decal
    0xC108F070, // blend
    0xC108FFC0, // replace
    0xC108FF80, // passclr
};

void GXSetTevOp(GXTevStageID id, GXTevMode mode) {
  u32 *ctmp;
  u32 *atmp;
  u32 tevReg;

  if (id == GX_TEVSTAGE0) {
    ctmp = (u32 *)TEVCOpTableST0 + mode;
    atmp = (u32 *)TEVAOpTableST0 + mode;
  } else {
    ctmp = (u32 *)TEVCOpTableST1 + mode;
    atmp = (u32 *)TEVAOpTableST1 + mode;
  }

  tevReg = __GXData->tevc[id];
  tevReg = (*ctmp & ~0xFF000000) | (tevReg & 0xFF000000);
  GX_WRITE_RAS_REG(tevReg);
  __GXData->tevc[id] = tevReg;

  tevReg = __GXData->teva[id];
  tevReg = (*atmp & ~0xFF00000F) | (tevReg & 0xFF00000F);
  GX_WRITE_RAS_REG(tevReg);
  __GXData->teva[id] = tevReg;

  __GXData->bpSentNot = 0;
}

void GXSetTevColorIn(GXTevStageID stage, GXTevColorArg a, GXTevColorArg b, GXTevColorArg c,
                     GXTevColorArg d) {
  u32 tevReg;

  tevReg = __GXData->tevc[stage];
  __SET_REG_FIELD(tevReg, 4, 12, a);
  __SET_REG_FIELD(tevReg, 4, 8, b);
  __SET_REG_FIELD(tevReg, 4, 4, c);
  __SET_REG_FIELD(tevReg, 4, 0, d);

  GX_WRITE_RAS_REG(tevReg);
  __GXData->tevc[stage] = tevReg;
  __GXData->bpSentNot = 0;
}

void GXSetTevAlphaIn(GXTevStageID stage, GXTevAlphaArg a, GXTevAlphaArg b, GXTevAlphaArg c,
                     GXTevAlphaArg d) {
  u32 tevReg;

  tevReg = __GXData->teva[stage];
  __SET_REG_FIELD(tevReg, 3, 13, a);
  __SET_REG_FIELD(tevReg, 3, 10, b);
  __SET_REG_FIELD(tevReg, 3, 7, c);
  __SET_REG_FIELD(tevReg, 3, 4, d);

  GX_WRITE_RAS_REG(tevReg);
  __GXData->teva[stage] = tevReg;
  __GXData->bpSentNot = 0;
}

void GXSetTevColorOp(GXTevStageID stage, GXTevOp op, GXTevBias bias, GXTevScale scale, GXBool clamp,
                     GXTevRegID out_reg) {
  u32 tevReg;

  tevReg = __GXData->tevc[stage];
  __SET_REG_FIELD(tevReg, 1, 18, op & 1);
  if (op <= 1) {
    __SET_REG_FIELD(tevReg, 2, 20, scale);
    __SET_REG_FIELD(tevReg, 2, 16, bias);
  } else {
    __SET_REG_FIELD(tevReg, 2, 20, (op >> 1) & 3);
    __SET_REG_FIELD(tevReg, 2, 16, 3);
  }
  __SET_REG_FIELD(tevReg, 1, 19, clamp & 0xFF);
  __SET_REG_FIELD(tevReg, 2, 22, out_reg);

  GX_WRITE_RAS_REG(tevReg);
  __GXData->tevc[stage] = tevReg;
  __GXData->bpSentNot = 0;
}

void GXSetTevAlphaOp(GXTevStageID stage, GXTevOp op, GXTevBias bias, GXTevScale scale, GXBool clamp,
                     GXTevRegID out_reg) {
  u32 tevReg;

  tevReg = __GXData->teva[stage];
  __SET_REG_FIELD(tevReg, 1, 18, op & 1);
  if (op <= 1) {
    __SET_REG_FIELD(tevReg, 2, 20, scale);
    __SET_REG_FIELD(tevReg, 2, 16, bias);
  } else {
    __SET_REG_FIELD(tevReg, 2, 20, (op >> 1) & 3);
    __SET_REG_FIELD(tevReg, 2, 16, 3);
  }
  __SET_REG_FIELD(tevReg, 1, 19, clamp & 0xFF);
  __SET_REG_FIELD(tevReg, 2, 22, out_reg);

  GX_WRITE_RAS_REG(tevReg);
  __GXData->teva[stage] = tevReg;
  __GXData->bpSentNot = 0;
}

void GXSetTevColor(GXTevRegID id, GXColor color) {
  u32 regRA;
  u32 regBG;

  regRA = 0;
  SET_REG_FIELD(regRA, 11, 0, color.r);
  SET_REG_FIELD(regRA, 11, 12, color.a);
  SET_REG_FIELD(regRA, 8, 24, 224 + id * 2);

  regBG = 0;
  SET_REG_FIELD(regBG, 11, 0, color.b);
  SET_REG_FIELD(regBG, 11, 12, color.g);
  SET_REG_FIELD(regBG, 8, 24, 225 + id * 2);

  GX_WRITE_RAS_REG(regRA);
  GX_WRITE_RAS_REG(regBG);
  GX_WRITE_RAS_REG(regBG);
  GX_WRITE_RAS_REG(regBG);

  __GXData->bpSentNot = 0;
}

void GXSetTevColorS10(GXTevRegID id, GXColorS10 color) {
  u32 sRG;
  u32 sBA;
  u32 regRA;
  u32 regBG;

  regRA = 0;
  SET_REG_FIELD(regRA, 11, 0, color.r & 0x7FF);
  SET_REG_FIELD(regRA, 11, 12, color.a & 0x7FF);
  SET_REG_FIELD(regRA, 8, 24, 224 + id * 2);

  regBG = 0;
  SET_REG_FIELD(regBG, 11, 0, color.b & 0x7FF);
  SET_REG_FIELD(regBG, 11, 12, color.g & 0x7FF);
  SET_REG_FIELD(regBG, 8, 24, 225 + id * 2);

  GX_WRITE_RAS_REG(regRA);
  GX_WRITE_RAS_REG(regBG);
  GX_WRITE_RAS_REG(regBG);
  GX_WRITE_RAS_REG(regBG);

  __GXData->bpSentNot = 0;
}

void GXSetTevKColor(GXTevKColorID id, GXColor color) {
  u32 regRA;
  u32 regBG;

  regRA = 0;
  SET_REG_FIELD(regRA, 8, 0, color.r);
  SET_REG_FIELD(regRA, 8, 12, color.a);
  SET_REG_FIELD(regRA, 4, 20, 8);
  SET_REG_FIELD(regRA, 8, 24, 224 + id * 2);

  regBG = 0;
  SET_REG_FIELD(regBG, 8, 0, color.b);
  SET_REG_FIELD(regBG, 8, 12, color.g);
  SET_REG_FIELD(regBG, 4, 20, 8);
  SET_REG_FIELD(regBG, 8, 24, 225 + id * 2);

  GX_WRITE_RAS_REG(regRA);
  GX_WRITE_RAS_REG(regBG);
  __GXData->bpSentNot = 0;
}

void GXSetTevKColorSel(GXTevStageID stage, GXTevKColorSel sel) {
  u32 *Kreg;

  Kreg = &__GXData->tevKsel[stage >> 1];
  if (stage & 1) {
    SET_REG_FIELD(*Kreg, 5, 14, sel);
  } else {
    SET_REG_FIELD(*Kreg, 5, 4, sel);
  }

  GX_WRITE_RAS_REG(*Kreg);
  __GXData->bpSentNot = 0;
}

void GXSetTevKAlphaSel(GXTevStageID stage, GXTevKAlphaSel sel) {
  u32 *Kreg;

  Kreg = &__GXData->tevKsel[stage >> 1];
  if (stage & 1) {
    SET_REG_FIELD(*Kreg, 5, 19, sel);
  } else {
    SET_REG_FIELD(*Kreg, 5, 9, sel);
  }

  GX_WRITE_RAS_REG(*Kreg);
  __GXData->bpSentNot = 0;
}

void GXSetTevSwapMode(GXTevStageID stage, GXTevSwapSel ras_sel, GXTevSwapSel tex_sel) {
  u32 *pTevReg;

  pTevReg = &__GXData->teva[stage];
  SET_REG_FIELD(*pTevReg, 2, 0, ras_sel);
  SET_REG_FIELD(*pTevReg, 2, 2, tex_sel);

  GX_WRITE_RAS_REG(*pTevReg);
  __GXData->bpSentNot = 0;
}

void GXSetTevSwapModeTable(GXTevSwapSel table, GXTevColorChan red, GXTevColorChan green,
                           GXTevColorChan blue, GXTevColorChan alpha) {
  u32 *Kreg;

  int index = table * 2;

  Kreg = &__GXData->tevKsel[index];

  SET_REG_FIELD(*Kreg, 2, 0, red);
  SET_REG_FIELD(*Kreg, 2, 2, green);

  GX_WRITE_RAS_REG(*Kreg);

  Kreg = &__GXData->tevKsel[table * 2 + 1];
  SET_REG_FIELD(*Kreg, 2, 0, blue);
  SET_REG_FIELD(*Kreg, 2, 2, alpha);

  GX_WRITE_RAS_REG(*Kreg);
  __GXData->bpSentNot = 0;
}

void GXSetAlphaCompare(GXCompare comp0, u8 ref0, GXAlphaOp op, GXCompare comp1, u8 ref1) {
  u32 reg;

  reg = 0xF3000000;

  SET_REG_FIELD(reg, 8, 0, ref0);
  SET_REG_FIELD(reg, 8, 8, ref1);
  SET_REG_FIELD(reg, 3, 16, comp0);
  SET_REG_FIELD(reg, 3, 19, comp1);
  SET_REG_FIELD(reg, 2, 22, op);

  GX_WRITE_RAS_REG(reg);
  __GXData->bpSentNot = 0;
}

void GXSetZTexture(GXZTexOp op, GXTexFmt fmt, u32 bias) {
  u32 zenv0;
  u32 zenv1;
  u32 type;

  zenv0 = 0;
  SET_REG_FIELD(zenv0, 24, 0, bias);
  SET_REG_FIELD(zenv0, 8, 24, 0xF4);

  zenv1 = 0;
  switch (fmt) {
  case GX_TF_Z8:
    type = 0;
    break;
  case GX_TF_Z16:
    type = 1;
    break;
  case GX_TF_Z24X8:
    type = 2;
    break;
  default:

    type = 2;
    break;
  }

  SET_REG_FIELD(zenv1, 2, 0, type);
  SET_REG_FIELD(zenv1, 2, 2, op);
  SET_REG_FIELD(zenv1, 8, 24, 0xF5);

  GX_WRITE_RAS_REG(zenv0);
  GX_WRITE_RAS_REG(zenv1);
  __GXData->bpSentNot = 0;
}

void GXSetTevOrder(GXTevStageID stage, GXTexCoordID coord, GXTexMapID map, GXChannelID color) {
  u32 *ptref;
  u32 tmap;
  u32 tcoord;
  static int c2r[] = {0, 1, 0, 1, 0, 1, 7, 5, 6};

  ptref = &__GXData->tref[stage / 2];
  __GXData->texmapId[stage] = map;

  tmap = map & ~GX_TEX_DISABLE;
  tmap = (tmap >= GX_MAX_TEXMAP) ? GX_TEXMAP0 : tmap;

  if (coord >= GX_MAX_TEXCOORD) {
    tcoord = GX_TEXCOORD0;
    __GXData->tevTcEnab = __GXData->tevTcEnab & ~(1 << stage);
  } else {
    tcoord = coord;
    __GXData->tevTcEnab = __GXData->tevTcEnab | (1 << stage);
  }

  if (stage & 1) {
    SET_REG_FIELD(*ptref, 3, 12, tmap);
    SET_REG_FIELD(*ptref, 3, 15, tcoord);
    SET_REG_FIELD(*ptref, 3, 19, (color == GX_COLOR_NULL) ? 7 : c2r[color]);
    SET_REG_FIELD(*ptref, 1, 18, (map != GX_TEXMAP_NULL && !(map & GX_TEX_DISABLE)));
  } else {
    SET_REG_FIELD(*ptref, 3, 0, tmap);
    SET_REG_FIELD(*ptref, 3, 3, tcoord);
    SET_REG_FIELD(*ptref, 3, 7, (color == GX_COLOR_NULL) ? 7 : c2r[color]);
    SET_REG_FIELD(*ptref, 1, 6, (map != GX_TEXMAP_NULL && !(map & GX_TEX_DISABLE)));
  }

  GX_WRITE_RAS_REG(*ptref);
  __GXData->bpSentNot = 0;
  __GXData->dirtyState |= 1;
}

void GXSetNumTevStages(u8 nStages) {

  SET_REG_FIELD(__GXData->genMode, 4, 10, nStages - 1);
  __GXData->dirtyState |= 4;
}
