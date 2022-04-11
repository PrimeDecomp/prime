#ifndef _TGAMETYPES_HPP
#define _TGAMETYPES_HPP

#include "types.h"

typedef s32 TAreaId;
typedef u32 TEditorId;
typedef u16 TUniqueId;

extern TAreaId kInvalidAreaId;
extern TEditorId kInvalidEditorId;
extern TUniqueId kInvalidUniqueId;

typedef u32 CAssetId;
// class CAssetId {
// public:
//   u32 id;

//   bool operator==(const CAssetId& other) { return id == other.id; }
// };

#define FourCC unsigned long

struct SObjectTag {
  FourCC type;
  CAssetId id;

  SObjectTag(const SObjectTag& other) : type(other.type), id(other.id) {}
};

#endif
