#ifndef __DVD_H__
#define __DVD_H__

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct DVDDiskID {
  char gameName[4];
  char company[2];
  u8 diskNumber;
  u8 gameVersion;
  u8 streaming;
  u8 streamingBufSize; // 0 = default
  u8 padding[22];      // 0's are stored
} DVDDiskID;

#ifdef __cplusplus
}
#endif

#endif
