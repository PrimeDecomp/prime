#ifndef _DOLPHIN_GXSTRUCT
#define _DOLPHIN_GXSTRUCT

#include <dolphin/gx/GXEnum.h>
#include <dolphin/types.h>
#include <dolphin/vitypes.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GXRenderModeObj {
  /*0x00*/ VITVMode viTVmode;
  /*0x04*/ u16 fbWidth;
  /*0x06*/ u16 efbHeight;
  /*0x08*/ u16 xfbHeight;
  /*0x0A*/ u16 viXOrigin;
  /*0x0C*/ u16 viYOrigin;
  /*0x0E*/ u16 viWidth;
  /*0x10*/ u16 viHeight;
  /*0x14*/ VIXFBMode xFBmode;
  /*0x18*/ u8 field_rendering;
  u8 aa;
  u8 sample_pattern[12][2];
  u8 vfilter[7];
} GXRenderModeObj;

typedef struct _GXColor {
  u8 r;
  u8 g;
  u8 b;
  u8 a;
} GXColor;

typedef struct _GXTexObj {
#ifdef TARGET_PC
  u32 dummy[22];
#else
  u32 dummy[8];
#endif
} GXTexObj;

typedef struct _GXTlutObj {
#ifdef TARGET_PC
  u32 dummy[4];
#else
  u32 dummy[3];
#endif
} GXTlutObj;

typedef struct _GXLightObj {
  u32 dummy[16];
} GXLightObj;

typedef struct _GXVtxDescList {
  GXAttr attr;
  GXAttrType type;
} GXVtxDescList;

typedef struct _GXColorS10 {
  s16 r;
  s16 g;
  s16 b;
  s16 a;
} GXColorS10;

typedef struct _GXTexRegion {
  u32 dummy[4];
} GXTexRegion;

typedef struct _GXTlutRegion {
  u32 dummy[4];
} GXTlutRegion;

typedef struct _GXVtxAttrFmtList {
  // total size: 0x10
  GXAttr attr;     // offset 0x0, size 0x4
  GXCompCnt cnt;   // offset 0x4, size 0x4
  GXCompType type; // offset 0x8, size 0x4
  u8 frac;         // offset 0xC, size 0x1
} GXVtxAttrFmtList;

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_GXSTRUCT
