#include "dolphin/os.h"

typedef struct ApploaderHeader {
	// total size: 0x20
	char date[16]; // offset 0x0, size 0x10
	u32 entry; // offset 0x10, size 0x4
	u32 size; // offset 0x14, size 0x4
	u32 rebootSize; // offset 0x18, size 0x4
	u32 reserved2; // offset 0x1C, size 0x4
} ApploaderHeader;

static ApploaderHeader Header;

extern void* __OSSavedRegionStart;
extern void* __OSSavedRegionEnd;

static void* SaveStart = NULL;
static void* SaveEnd = NULL;

static BOOL Prepared = FALSE;

asm void Run() {
  // clang-format off
  nofralloc
  sync
  isync
  mtlr r3
  blr
  // clang-format on
}

static void Callback() {
  Prepared = TRUE;
}

void __OSReboot(u32 resetCode, u32 bootDol) {
  OSDisableInterrupts();
}

void OSSetSaveRegion(void* start, void* end) {
  SaveStart = start;
  SaveEnd = end;
}

void OSGetSaveRegion(void** start, void** end) {
  *start = SaveStart;
  *end = SaveEnd;
}

void OSGetSavedRegion(void** start, void** end) {
  *start = __OSSavedRegionStart;
  *end = __OSSavedRegionEnd; 
}
