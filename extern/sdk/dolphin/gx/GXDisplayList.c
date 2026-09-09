#include "dolphin/gx.h"
#include "dolphin/gx/GXPriv.h"

void GXCallDisplayList(const void *list, u32 nbytes) {
  if (__GXData->dirtyState != 0) {
    __GXSetDirtyState();
  }
  if (*(u32 *)&__GXData->vNumNot == 0) {
    __GXSendFlushPrim();
  }

  GX_WRITE_U8(0x40);
  GX_WRITE_U32((u32)list);
  GX_WRITE_U32(nbytes);
}
