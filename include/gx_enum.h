#ifndef __GX_ENUM_H__
#define __GX_ENUM_H__

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef enum _GXTexMapID {
  GX_TEXMAP0,
  GX_TEXMAP1,
  GX_TEXMAP2,
  GX_TEXMAP3,
  GX_TEXMAP4,
  GX_TEXMAP5,
  GX_TEXMAP6,
  GX_TEXMAP7,
  GX_MAX_TEXMAP,
  GX_TEXMAP_NULL = 0xFF,
  GX_TEX_DISABLE = 0x100,
} GXTexMapID;

typedef enum _GXPrimitive {
  GX_QUADS = 0x80,
  GX_TRIANGLES = 0x90,
  GX_TRIANGLESTRIP = 0x98,
  GX_TRIANGLEFAN = 0xA0,
  GX_LINES = 0xA8,
  GX_LINESTRIP = 0xB0,
  GX_POINTS = 0xB8,
} GXPrimitive;

#ifdef __cplusplus
}
#endif

#endif