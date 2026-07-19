#ifndef _DOLPHIN_CARDPRIV
#define _DOLPHIN_CARDPRIV

#ifdef __cplusplus
extern "C" {
#endif

#define CARD_FAT_AVAIL 0x0000u
#define CARD_FAT_CHECKSUM 0x0000u
#define CARD_FAT_CHECKSUMINV 0x0001u
#define CARD_FAT_CHECKCODE 0x0002u
#define CARD_FAT_FREEBLOCKS 0x0003u
#define CARD_FAT_LASTSLOT 0x0004u

#define CARD_PAGE_SIZE 128u
#define CARD_SEG_SIZE 512u

#define CARD_NUM_SYSTEM_BLOCK 5
#define CARD_SYSTEM_BLOCK_SIZE (8 * 1024u)

#define CARD_MAX_MOUNT_STEP (CARD_NUM_SYSTEM_BLOCK + 2)

typedef struct CARDDir {
  u8 gameName[4];
  u8 company[2];
  u8 _padding0;
  u8 bannerFormat;
  u8 fileName[CARD_FILENAME_MAX];
  u32 time; // seconds since 01/01/2000 midnight

  u32 iconAddr; // 0xffffffff if not used
  u16 iconFormat;
  u16 iconSpeed;

  u8 permission;
  u8 copyTimes;
  u16 startBlock;
  u16 length;
  u8 _padding1[2];

  u32 commentAddr; // 0xffffffff if not used
} CARDDir;

typedef struct CARDDirCheck {
  u8 padding0[64 - 2 * 4];
  u16 padding1;
  s16 checkCode;
  u16 checkSum;
  u16 checkSumInv;
} CARDDirCheck;

typedef struct CARDControl {
  BOOL attached;
  s32 result;
  u16 size;
  u16 pageSize;
  s32 sectorSize;
  u16 cBlock;
  u16 vendorID;
  s32 latency;
  u8 id[12];
  int mountStep;
  int formatStep;
  u32 scramble;
  DSPTaskInfo task;
  void* workArea;
  CARDDir* currentDir;
  u16* currentFat;
  OSThreadQueue threadQueue;
  u8 cmd[9];
  s32 cmdlen;
  vu32 mode;
  int retry;
  int repeat;
  u32 addr;
  void* buffer;
  s32 xferred;
  u16 freeNo;
  u16 startBlock;
  CARDFileInfo* fileInfo;
  CARDCallback extCallback;
  CARDCallback txCallback;
  CARDCallback exiCallback;
  CARDCallback apiCallback;
  CARDCallback xferCallback;
  CARDCallback eraseCallback;
  CARDCallback unlockCallback;
  OSAlarm alarm;
  u32 cid;
  const DVDDiskID* diskID;
} CARDControl;

typedef struct CARDID {
  u8 serial[32]; // flashID[12] + timebase[8] + counterBias[4] + language[4] + XXX[4]
  u16 deviceID;
  u16 size;
  u16 encode; // character set -- 0: S-JIS, 1: ANSI

  u8 padding[512 - 32 - 5 * 2];

  u16 checkSum;
  u16 checkSumInv;
} CARDID;

void __CARDDefaultApiCallback(s32 chan, s32 result);

#define CARDIsValidBlockNo(card, iBlock)                                                           \
  (CARD_NUM_SYSTEM_BLOCK <= (iBlock) && (iBlock) < (card)->cBlock)
#define __CARDGetDirCheck(dir) ((CARDDirCheck*)&(dir)[CARD_MAX_FILE])

CARDDir* __CARDGetDirBlock(CARDControl* card);
u16* __CARDGetFatBlock(CARDControl* card);
s32 __CARDUpdateFatBlock(s32 chan, u16* fat, CARDCallback callback);
void __CARDCheckSum(void* ptr, int length, u16* checkSum, u16* checkSumInv);
u16 __CARDGetFontEncode();
void __CARDExiHandler(s32 chan, OSContext* context);
void __CARDExtHandler(s32 chan, OSContext* context);
void __CARDUnlockedHandler(s32 chan, OSContext* context);
s32 __CARDAccess(CARDControl* card, CARDDir* ent);
BOOL __CARDIsWritable(CARDDir* ent);

#define TRUNC(n, a) (((u32)(n)) & ~((a)-1))
#define OFFSET(n, a) (((u32)(n)) & ((a)-1))

extern CARDControl __CARDBlock[2];
extern DVDDiskID __CARDDiskNone;
extern u16 __CARDVendorID;

#ifdef __cplusplus
}
#endif
#endif // _DOLPHIN_CARDPRIV
