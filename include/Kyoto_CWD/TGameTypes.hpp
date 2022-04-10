#ifndef _TGAMETYPES_HPP
#define _TGAMETYPES_HPP

#include "types.h"

typedef s32 TAreaId;
typedef u32 TEditorId;
typedef u16 TUniqueId;

extern TAreaId kInvalidAreaId;
extern TEditorId kInvalidEditorId;
extern TUniqueId kInvalidUniqueId;

class CAssetId {
public:
  u32 id;
};

struct SObjectTag {
  char type[4];
  u32 id;
};

#define FourCC unsigned long

#endif
