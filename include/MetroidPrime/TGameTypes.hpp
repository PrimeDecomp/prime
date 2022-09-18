#ifndef _TGAMETYPES_HPP
#define _TGAMETYPES_HPP

#include "types.h"

class CInputStream;
class COutputStream;

struct TAreaId;
struct TEditorId;
struct TUniqueId;

extern TAreaId kInvalidAreaId;
extern TEditorId kInvalidEditorId;
extern TUniqueId kInvalidUniqueId;

struct TAreaId {
  int value;

  TAreaId() : value(-1) {}
  TAreaId(int value) : value(value) {}
  int Value() const { return value; }

  bool operator==(const TAreaId& other) const { return value == other.value; }
  bool operator!=(const TAreaId& other) const { return value != other.value; }
};
CHECK_SIZEOF(TAreaId, 0x4)

struct TEditorId {
  uint value;

  TEditorId(uint value) : value(value) {}
  TEditorId(CInputStream& in);
  // TODO
  uint Value() const { return value; }
  uint Id() const { return value; }
  uint AreaNum() const { return value; }

  void PutTo(COutputStream&) const;

  bool operator==(const TEditorId& other) const { return value == other.value; }
  bool operator!=(const TEditorId& other) const { return value != other.value; }
};
CHECK_SIZEOF(TEditorId, 0x4)

struct TUniqueId {
  u16 value;

  TUniqueId(u16 version, u16 id) : value(((version & 0x3F) << 10) | (id & 0x3FF)) {}
  u16 Value() const { return value & 0x3FF; }
  u16 Version() const { return (value >> 10) & 0x3F; }

  bool operator==(const TUniqueId& other) const { return value == other.value; }
  bool operator!=(const TUniqueId& other) const { return value != other.value; }
  bool operator<(const TUniqueId& other) const; // TODO

private:
};
// CHECK_SIZEOF(TUniqueId, 0x2)

typedef u16 TSfxId;
static TSfxId InvalidSfxId = 0xFFFFu;

class CSegId {
private:
  u8 x0_id;
};

#endif
