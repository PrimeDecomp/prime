#ifndef _TGAMETYPES
#define _TGAMETYPES

#include "types.h"

class CInputStream;
class COutputStream;

struct TAreaId;
struct TEditorId;
struct TUniqueId;

extern const TAreaId kInvalidAreaId;
extern const TEditorId kInvalidEditorId;
extern const TUniqueId kInvalidUniqueId;

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
  uint Value() const { return value & 0x3FFFFFF; }
  uint Id() const { return value & 0xffff; }
  int AreaNum() const { return (value >> 16) & 0x3ff; }

  void PutTo(COutputStream&) const;

  bool operator==(const TEditorId& other) const { return Value() == other.Value(); }
  bool operator!=(const TEditorId& other) const { return Value() != other.Value(); }
};
CHECK_SIZEOF(TEditorId, 0x4)

struct TUniqueId {
  ushort value;

  TUniqueId(ushort version, ushort id) : value(((version & 0x3F) << 10) | (id & 0x3FF)) {}

  ushort Value() const { return value & 0x3FF; }
  ushort Version() const { return (value >> 10) & 0x3F; }

  bool operator==(const TUniqueId& other) const { return value == other.value; }
  bool operator!=(const TUniqueId& other) const { return value != other.value; }
  bool operator<(const TUniqueId& other) const { return value < other.value; }

private:
};
CHECK_SIZEOF(TUniqueId, 0x2)

// struct TGameScriptId {
//   TEditorId editorId;
//   bool b;
// };
// CHECK_SIZEOF(TGameScriptId, 0x8)

typedef ushort TSfxId;
static TSfxId InvalidSfxId = 0xFFFFu;

#define ALIGN_UP(x, a) (((x) + (a - 1)) & ~(a - 1))

#endif // _TGAMETYPES
