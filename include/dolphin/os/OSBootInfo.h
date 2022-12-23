#ifndef _DOLPHIN_OSBOOTINFO
#define _DOLPHIN_OSBOOTINFO

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

typedef struct {
  BOOL valid;
  u32 restartCode;
  u32 bootDol;
  void* regionStart;
  void* regionEnd;
  BOOL argsUseDefault;
  void* argsAddr; // valid only when argsUseDefault = FALSE

} OSExecParams;

typedef struct BI2Debug {
  s32 debugMonSize;  // 0x0
  s32 simMemSize;    // 0x4
  u32 argOffset;     // 0x8
  u32 debugFlag;     // 0xC
  int trackLocation; // 0x10
  int trackSize;     // 0x14
  u32 countryCode;   // 0x18
  u8 unk[8];         // 0x1C
  u32 padSpec;       // 0x24
} BI2Debug;

#endif // _DOLPHIN_OSBOOTINFO
