#include <dolphin/card.h>
#include <dolphin/dsp.h>
#include <dolphin/dvd.h>
#include <dolphin/os.h>

#include <dolphin/CARDPriv.h>
#include <dolphin/OSRtcPriv.h>

#include "string.h"

#define __CARDGetDirCheck(dir) ((CARDDirCheck*)&(dir)[CARD_MAX_FILE])

void __CARDCheckSum(void* ptr, int length, u16* checksum, u16* checksumInv) {
  u16* p;
  int i;

  length /= sizeof(u16);
  *checksum = *checksumInv = 0;
  for (i = 0, p = ptr; i < length; i++, p++) {
    *checksum += *p;
    *checksumInv += ~*p;
  }
  if (*checksum == 0xffff) {
    *checksum = 0;
  }
  if (*checksumInv == 0xffff) {
    *checksumInv = 0;
  }
}

static s32 VerifyID(CARDControl* card) {
  CARDID* id;
  u16 checksum;
  u16 checksumInv;
  OSSramEx* sramEx;
  OSTime rand;
  int i;

  id = card->workArea;

  if (id->deviceID != 0 || id->size != card->size) {
    return CARD_RESULT_BROKEN;
  }

  __CARDCheckSum(id, sizeof(CARDID) - sizeof(u32), &checksum, &checksumInv);
  if (id->checkSum != checksum || id->checkSumInv != checksumInv) {
    return CARD_RESULT_BROKEN;
  }

  rand = *(OSTime*)&id->serial[12];
  sramEx = __OSLockSramEx();

  for (i = 0; i < 12; i++) {
    rand = (rand * 1103515245 + 12345) >> 16;
    if (id->serial[i] != (u8)(sramEx->flashID[card - __CARDBlock][i] + rand)) {
      __OSUnlockSramEx(FALSE);
      return CARD_RESULT_BROKEN;
    }
    rand = ((rand * 1103515245 + 12345) >> 16) & 0x7FFF;
  }

  __OSUnlockSramEx(FALSE);
  if (id->encode != __CARDGetFontEncode()) {
    return CARD_RESULT_ENCODING;
  }

  return CARD_RESULT_READY;
}

#if NONMATCHING
static s32 VerifyDir(CARDControl* card, int* outCurrent) {
  CARDDir* dir[2];
  CARDDirCheck* check[2];
  u16 checkSum;
  u16 checkSumInv;
  int i;
  int errors;
  int current;

  current = errors = 0;
  for (i = 0; i < 2; i++) {
    dir[i] = (CARDDir*)((u8*)card->workArea + (1 + i) * CARD_SYSTEM_BLOCK_SIZE);
    check[i] = __CARDGetDirCheck(dir[i]);
    __CARDCheckSum(dir[i], CARD_SYSTEM_BLOCK_SIZE - sizeof(u32), &checkSum, &checkSumInv);
    if (check[i]->checkSum != checkSum || check[i]->checkSumInv != checkSumInv) {
      ++errors;
      current = i;
      card->currentDir = 0;
    }
  }

  if (0 == errors) {
    if (card->currentDir == 0) {
      if ((check[0]->checkCode - check[1]->checkCode) < 0) {
        current = 0;
      } else {
        current = 1;
      }
      card->currentDir = dir[current];
      memcpy(dir[current], dir[current ^ 1], CARD_SYSTEM_BLOCK_SIZE);
    } else {
      current = (card->currentDir == dir[0]) ? 0 : 1;
    }
  }
  if (outCurrent) {
    *outCurrent = current;
  }
  return errors;
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 
#pragma optimizewithasm off
static asm s32 VerifyDir(CARDControl* card, int* outCurrent) {
  nofralloc
  mflr r0
  stw r0, 4(r1)
  stwu r1, -0x38(r1)
  stw r31, 0x34(r1)
  addi r7, r1, 0x1c
  addi r8, r1, 0x14
  stw r30, 0x30(r1)
  li r31, 0
  li r30, 0
  stw r29, 0x2c(r1)
  addi r29, r4, 0
  li r4, 0
lbl_803BB038:
  addi r0, r4, 1
  lwz r5, 0x80(r3)
  slwi r0, r0, 0xd
  add r0, r5, r0
  stw r0, 0(r7)
  li r6, 0x1ffc
  srawi r6, r6, 1
  lwz r5, 0(r7)
  addze. r6, r6
  li r11, 0
  addi r0, r5, 0x1fc0
  stw r0, 0(r8)
  li r10, 0
  lwz r5, 0(r7)
  ble lbl_803BB12C
  rlwinm. r0, r6, 0x1d, 3, 0x1f
  mtctr r0
  beq lbl_803BB110
lbl_803BB080:
  lhz r9, 0(r5)
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 2(r5)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 4(r5)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 6(r5)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 8(r5)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 0xa(r5)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 0xc(r5)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 0xe(r5)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  add r11, r11, r0
  addi r5, r5, 0x10
  bdnz lbl_803BB080
  andi. r6, r6, 7
  beq lbl_803BB12C
lbl_803BB110:
  mtctr r6
lbl_803BB114:
  lhz r9, 0(r5)
  addi r5, r5, 2
  nor r0, r9, r9
  add r10, r10, r9
  add r11, r11, r0
  bdnz lbl_803BB114
lbl_803BB12C:
  clrlwi r0, r10, 0x10
  cmplwi r0, 0xffff
  bne lbl_803BB13C
  li r10, 0
lbl_803BB13C:
  clrlwi r0, r11, 0x10
  cmplwi r0, 0xffff
  bne lbl_803BB14C
  li r11, 0
lbl_803BB14C:
  lwz r6, 0(r8)
  clrlwi r5, r10, 0x10
  lhz r0, 0x3c(r6)
  cmplw r5, r0
  bne lbl_803BB170
  lhz r0, 0x3e(r6)
  clrlwi r5, r11, 0x10
  cmplw r5, r0
  beq lbl_803BB180
lbl_803BB170:
  li r0, 0
  stw r0, 0x84(r3)
  addi r30, r4, 0
  addi r31, r31, 1
lbl_803BB180:
  addi r4, r4, 1
  cmpwi r4, 2
  addi r7, r7, 4
  addi r8, r8, 4
  blt lbl_803BB038
  cmpwi r31, 0
  bne lbl_803BB21C
  lwz r4, 0x84(r3)
  cmplwi r4, 0
  bne lbl_803BB200
  lwz r5, 0x18(r1)
  lwz r4, 0x14(r1)
  lha r5, 0x3a(r5)
  lha r0, 0x3a(r4)
  subf. r0, r5, r0
  bge lbl_803BB1C8
  li r30, 0
  b lbl_803BB1CC
lbl_803BB1C8:
  li r30, 1
lbl_803BB1CC:
  slwi r0, r30, 2
  addi r6, r1, 0x1c
  add r6, r6, r0
  lwz r4, 0(r6)
  xori r0, r30, 1
  slwi r0, r0, 2
  stw r4, 0x84(r3)
  addi r4, r1, 0x1c
  li r5, 0x2000
  lwz r3, 0(r6)
  lwzx r4, r4, r0
  bl memcpy
  b lbl_803BB21C
lbl_803BB200:
  lwz r0, 0x1c(r1)
  cmplw r4, r0
  bne lbl_803BB214
  li r0, 0
  b lbl_803BB218
lbl_803BB214:
  li r0, 1
lbl_803BB218:
  mr r30, r0
lbl_803BB21C:
  cmplwi r29, 0
  beq lbl_803BB228
  stw r30, 0(r29)
lbl_803BB228:
  mr r3, r31
  lwz r0, 0x3c(r1)
  lwz r31, 0x34(r1)
  lwz r30, 0x30(r1)
  lwz r29, 0x2c(r1)
  addi r1, r1, 0x38
  mtlr r0
  blr
}
/* clang-format on */
#pragma pop
#endif

#if NONMATCHING
static s32 VerifyFAT(CARDControl* card, int* outCurrent) {
  u16* fat[2];
  u16* fatp;
  u16 nBlock;
  u16 cFree;
  int i;
  u16 checkSum;
  u16 checkSumInv;
  int errors;
  int current;

  current = errors = 0;
  for (i = 0; i < 2; i++) {
    fatp = fat[i] = (u16*)((u8*)card->workArea + (3 + i) * CARD_SYSTEM_BLOCK_SIZE);

    __CARDCheckSum(&fatp[CARD_FAT_CHECKCODE], CARD_SYSTEM_BLOCK_SIZE - sizeof(u32), &checkSum,
                   &checkSumInv);
    if (fatp[CARD_FAT_CHECKSUM] != checkSum || fatp[CARD_FAT_CHECKSUMINV] != checkSumInv) {
      ++errors;
      current = i;
      card->currentFat = 0;
      continue;
    }

    cFree = 0;
    for (nBlock = CARD_NUM_SYSTEM_BLOCK; nBlock < card->cBlock; nBlock++) {
      if (fatp[nBlock] == CARD_FAT_AVAIL) {
        cFree++;
      }
    }
    if (cFree != fatp[CARD_FAT_FREEBLOCKS]) {
      ++errors;
      current = i;
      card->currentFat = 0;
      continue;
    }
  }

  if (0 == errors) {
    if (card->currentFat == 0) {
      if (((s16)fat[0][CARD_FAT_CHECKCODE] - (s16)fat[1][CARD_FAT_CHECKCODE]) < 0) {
        current = 0;
      } else {
        current = 1;
      }
      card->currentFat = fat[current];
      memcpy(fat[current], fat[current ^ 1], CARD_SYSTEM_BLOCK_SIZE);
    } else {
      current = (card->currentFat == fat[0]) ? 0 : 1;
    }
  }
  if (outCurrent) {
    *outCurrent = current;
  }
  return errors;
}
#else 
/* clang-format off */
#pragma push
#pragma optimization_level 
#pragma optimizewithasm off

static asm s32 VerifyFAT(CARDControl* card, int* outCurrent) {
  nofralloc
  mflr r0
  li r5, 0
  stw r0, 4(r1)
  stwu r1, -0x28(r1)
  stw r31, 0x24(r1)
  li r31, 0
  stw r30, 0x20(r1)
  li r30, 0
  stw r29, 0x1c(r1)
  addi r29, r4, 0
  addi r4, r1, 0x10
lbl_803BB274:
  li r8, 0x1ffc
  lwz r6, 0x80(r3)
  addi r0, r5, 3
  srawi r8, r8, 1
  slwi r0, r0, 0xd
  add r7, r6, r0
  addze. r8, r8
  stw r7, 0(r4)
  addi r6, r7, 4
  li r11, 0
  li r10, 0
  ble lbl_803BB35C
  rlwinm. r0, r8, 0x1d, 3, 0x1f
  mtctr r0
  beq lbl_803BB340
lbl_803BB2B0:
  lhz r9, 0(r6)
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 2(r6)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 4(r6)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 6(r6)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 8(r6)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 0xa(r6)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 0xc(r6)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  lhz r9, 0xe(r6)
  add r11, r11, r0
  nor r0, r9, r9
  add r10, r10, r9
  add r11, r11, r0
  addi r6, r6, 0x10
  bdnz lbl_803BB2B0
  andi. r8, r8, 7
  beq lbl_803BB35C
lbl_803BB340:
  mtctr r8
lbl_803BB344:
  lhz r9, 0(r6)
  addi r6, r6, 2
  nor r0, r9, r9
  add r10, r10, r9
  add r11, r11, r0
  bdnz lbl_803BB344
lbl_803BB35C:
  clrlwi r0, r10, 0x10
  cmplwi r0, 0xffff
  bne lbl_803BB36C
  li r10, 0
lbl_803BB36C:
  clrlwi r0, r11, 0x10
  cmplwi r0, 0xffff
  bne lbl_803BB37C
  li r11, 0
lbl_803BB37C:
  lhz r6, 0(r7)
  clrlwi r0, r10, 0x10
  cmplw r6, r0
  bne lbl_803BB39C
  lhz r6, 2(r7)
  clrlwi r0, r11, 0x10
  cmplw r6, r0
  beq lbl_803BB3B0
lbl_803BB39C:
  li r0, 0
  stw r0, 0x88(r3)
  addi r30, r5, 0
  addi r31, r31, 1
  b lbl_803BB408
lbl_803BB3B0:
  lhz r8, 0x10(r3)
  addi r6, r7, 0xa
  li r10, 0
  li r9, 5
  b lbl_803BB3DC
lbl_803BB3C4:
  lhz r0, 0(r6)
  cmplwi r0, 0
  bne lbl_803BB3D4
  addi r10, r10, 1
lbl_803BB3D4:
  addi r6, r6, 2
  addi r9, r9, 1
lbl_803BB3DC:
  clrlwi r0, r9, 0x10
  cmplw r0, r8
  blt lbl_803BB3C4
  lhz r0, 6(r7)
  clrlwi r6, r10, 0x10
  cmplw r6, r0
  beq lbl_803BB408
  li r0, 0
  stw r0, 0x88(r3)
  addi r30, r5, 0
  addi r31, r31, 1
lbl_803BB408:
  addi r5, r5, 1
  cmpwi r5, 2
  addi r4, r4, 4
  blt lbl_803BB274
  cmpwi r31, 0
  bne lbl_803BB4A0
  lwz r4, 0x88(r3)
  cmplwi r4, 0
  bne lbl_803BB484
  lwz r5, 0x14(r1)
  lwz r4, 0x10(r1)
  lha r5, 4(r5)
  lha r0, 4(r4)
  subf. r0, r5, r0
  bge lbl_803BB44C
  li r30, 0
  b lbl_803BB450
lbl_803BB44C:
  li r30, 1
lbl_803BB450:
  slwi r0, r30, 2
  addi r6, r1, 0x10
  add r6, r6, r0
  lwz r4, 0(r6)
  xori r0, r30, 1
  slwi r0, r0, 2
  stw r4, 0x88(r3)
  addi r4, r1, 0x10
  li r5, 0x2000
  lwz r3, 0(r6)
  lwzx r4, r4, r0
  bl memcpy
  b lbl_803BB4A0
lbl_803BB484:
  lwz r0, 0x10(r1)
  cmplw r4, r0
  bne lbl_803BB498
  li r0, 0
  b lbl_803BB49C
lbl_803BB498:
  li r0, 1
lbl_803BB49C:
  mr r30, r0
lbl_803BB4A0:
  cmplwi r29, 0
  beq lbl_803BB4AC
  stw r30, 0(r29)
lbl_803BB4AC:
  mr r3, r31
  lwz r0, 0x2c(r1)
  lwz r31, 0x24(r1)
  lwz r30, 0x20(r1)
  lwz r29, 0x1c(r1)
  addi r1, r1, 0x28
  mtlr r0
  blr
}

/* clang-format on */
#pragma pop
#endif

s32 __CARDVerify(CARDControl* card) {
  s32 result;
  int errors;

  result = VerifyID(card);
  if (result < 0) {
    return result;
  }

  errors = VerifyDir(card, NULL);
  errors += VerifyFAT(card, NULL);
  switch (errors) {
  case 0:
    return CARD_RESULT_READY;
  case 1:
    return CARD_RESULT_BROKEN;
  default:
    return CARD_RESULT_BROKEN;
  }
}

s32 CARDCheckExAsync(s32 chan, s32* xferBytes, CARDCallback callback) {
  CARDControl* card;
  CARDDir* dir[2];
  u16* fat[2];
  u16* map;
  s32 result;
  int errors;
  int currentFat;
  int currentDir;
  s32 fileNo;
  u16 iBlock;
  u16 cBlock;
  u16 cFree;
  BOOL updateFat = FALSE;
  BOOL updateDir = FALSE;
  BOOL updateOrphan = FALSE;

  if (xferBytes) {
    *xferBytes = 0;
  }

  result = __CARDGetControlBlock(chan, &card);
  if (result < 0) {
    return result;
  }

  result = VerifyID(card);
  if (result < 0) {
    return __CARDPutControlBlock(card, result);
  }

  errors = VerifyDir(card, &currentDir);
  errors += VerifyFAT(card, &currentFat);
  if (1 < errors) {
    return __CARDPutControlBlock(card, CARD_RESULT_BROKEN);
  }

  dir[0] = (CARDDir*)((u8*)card->workArea + (1 + 0) * CARD_SYSTEM_BLOCK_SIZE);
  dir[1] = (CARDDir*)((u8*)card->workArea + (1 + 1) * CARD_SYSTEM_BLOCK_SIZE);
  fat[0] = (u16*)((u8*)card->workArea + (3 + 0) * CARD_SYSTEM_BLOCK_SIZE);
  fat[1] = (u16*)((u8*)card->workArea + (3 + 1) * CARD_SYSTEM_BLOCK_SIZE);

  switch (errors) {
  case 0:
    break;
  case 1:
    if (!card->currentDir) {
      card->currentDir = dir[currentDir];
      memcpy(dir[currentDir], dir[currentDir ^ 1], CARD_SYSTEM_BLOCK_SIZE);
      updateDir = TRUE;
    } else {
      card->currentFat = fat[currentFat];
      memcpy(fat[currentFat], fat[currentFat ^ 1], CARD_SYSTEM_BLOCK_SIZE);
      updateFat = TRUE;
    }
    break;
  }

  map = fat[currentFat ^ 1];
  memset(map, 0, CARD_SYSTEM_BLOCK_SIZE);

  for (fileNo = 0; fileNo < CARD_MAX_FILE; fileNo++) {
    CARDDir* ent;

    ent = &card->currentDir[fileNo];
    if (ent->gameName[0] == 0xff) {
      continue;
    }

    for (iBlock = ent->startBlock, cBlock = 0; iBlock != 0xFFFF && cBlock < ent->length;
         iBlock = card->currentFat[iBlock], ++cBlock) {
      if (!CARDIsValidBlockNo(card, iBlock) || 1 < ++map[iBlock]) {
        return __CARDPutControlBlock(card, CARD_RESULT_BROKEN);
      }
    }
    if (cBlock != ent->length || iBlock != 0xFFFF) {
      return __CARDPutControlBlock(card, CARD_RESULT_BROKEN);
    }
  }

  cFree = 0;
  for (iBlock = CARD_NUM_SYSTEM_BLOCK; iBlock < card->cBlock; iBlock++) {
    u16 nextBlock;

    nextBlock = card->currentFat[iBlock];
    if (map[iBlock] == 0) {
      if (nextBlock != CARD_FAT_AVAIL) {
        card->currentFat[iBlock] = CARD_FAT_AVAIL;
        updateOrphan = TRUE;
      }
      cFree++;
    } else if (!CARDIsValidBlockNo(card, nextBlock) && nextBlock != 0xFFFF) {
      return __CARDPutControlBlock(card, CARD_RESULT_BROKEN);
    }
  }
  if (cFree != card->currentFat[CARD_FAT_FREEBLOCKS]) {
    card->currentFat[CARD_FAT_FREEBLOCKS] = cFree;
    updateOrphan = TRUE;
  }
  if (updateOrphan) {
    __CARDCheckSum(&card->currentFat[CARD_FAT_CHECKCODE], CARD_SYSTEM_BLOCK_SIZE - sizeof(u32),
                   &card->currentFat[CARD_FAT_CHECKSUM], &card->currentFat[CARD_FAT_CHECKSUMINV]);
  }

  memcpy(fat[currentFat ^ 1], fat[currentFat], CARD_SYSTEM_BLOCK_SIZE);

  if (updateDir) {
    if (xferBytes) {
      *xferBytes = CARD_SYSTEM_BLOCK_SIZE;
    }
    return __CARDUpdateDir(chan, callback);
  }

  if (updateFat | updateOrphan) {
    if (xferBytes) {
      *xferBytes = CARD_SYSTEM_BLOCK_SIZE;
    }
    return __CARDUpdateFatBlock(chan, card->currentFat, callback);
  }

  __CARDPutControlBlock(card, CARD_RESULT_READY);
  if (callback) {
    BOOL enabled = OSDisableInterrupts();
    callback(chan, CARD_RESULT_READY);
    OSRestoreInterrupts(enabled);
  }
  return CARD_RESULT_READY;
}

s32 CARDCheckAsync(s32 chan, CARDCallback callback) {
  s32 xferBytes;

  return CARDCheckExAsync(chan, &xferBytes, callback);
}
