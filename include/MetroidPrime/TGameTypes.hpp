#ifndef _TGAMETYPES_HPP
#define _TGAMETYPES_HPP

#include "types.h"

struct TAreaId;
struct TEditorId;
struct TUniqueId;

extern TAreaId kInvalidAreaId;
extern TEditorId kInvalidEditorId;
extern TUniqueId kInvalidUniqueId;

struct TAreaId {
  s32 value;

  TAreaId() : value(-1) {}
  TAreaId(s32 value) : value(value) {}
  s32 Value() const { return value; }

  bool operator==(const TAreaId& other) const { return value == other.value; }
  bool operator!=(const TAreaId& other) const { return value != other.value; }
};
struct TEditorId {
  u32 value;

  TEditorId() : value(-1) {}
  TEditorId(u32 value) : value(value) {}
};
struct TUniqueId {
  u16 value;

  TUniqueId() : value(-1) {}
  TUniqueId(u16 value) : value(value) {}
};

#endif
