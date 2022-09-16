#ifndef __OSBOOTINFO_H__
#define __OSBOOTINFO_H__

typedef struct OSBootInfo {
  DVDDiskID DVDDiskID;
  u32 magic;
  u32 version;
  u32 memorySize;
  u32 consoleType;
  void* arenaLo;
  void* arenaHi;
  void* FSTLocation;
  u32 FSTMaxLength;
} OSBootInfo;

#endif // __OSBOOTINFO_H__
