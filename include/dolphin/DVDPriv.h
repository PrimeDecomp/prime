#ifndef __DVDPRIV_H__
#define __DVDPRIV_H__

#include <dolphin/dvd.h>
#include <types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct DVDDriveInfo {
  u16 revisionLevel;
  u16 deviceCode;
  u32 releaseDate;
  u8 padding[24];
} DVDDriveInfo;

typedef struct DVDBB1 {
  u32 appLoaderLength;
  void* appLoaderFunc1;
  void* appLoaderFunc2;
  void* appLoaderFunc3;
} DVDBB1;

typedef struct DVDBB2 {
  u32 bootFilePosition;
  u32 FSTPosition;
  u32 FSTLength;
  u32 FSTMaxLength;
  void* FSTAddress;
  u32 userPosition;
  u32 userLength;

  u32 padding0;
} DVDBB2;

typedef void (*DVDOptionalCommandChecker)(DVDCommandBlock* block, void (*cb)(u32 intType));
typedef void (*DVDLowCallback)(u32 intType);
DVDCommandBlock* __DVDPopWaitingQueue();
DVDLowCallback DVDLowClearCallback();

#ifdef __cplusplus
}
#endif

#endif __DVDPRIV_H__
