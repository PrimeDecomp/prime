#ifndef _CMEMORYCARDSYS
#define _CMEMORYCARDSYS

#include "types.h"
#include "string.h"

// TODO: likely comes from dolphin sdk
enum ECardResult { 
  kCR_CRC_MISMATCH = -1003, /* Extension enum for Retro's CRC check */
  kCR_FATAL_ERROR = -128,
  kCR_ENCODING = -13,
  kCR_NAMETOOLONG = -12,
  kCR_INSSPACE = -9,
  kCR_NOENT = -8,
  kCR_EXIST = -7,
  kCR_BROKEN = -6,
  kCR_IOERROR = -5,
  kCR_NOFILE = -4,
  kCR_NOCARD = -3,
  kCR_WRONGDEVICE = -2,
  kCR_BUSY = -1,
  kCR_READY = 0
};
struct FileHandle {
  u8 x0_pad[0x10];
};

struct ProbeResults {
  ECardResult x0_error;
  int x4_cardSize;   /* in megabits */
  int x8_sectorSize; /* in bytes */
};

struct CardStat {
  u8 x0_pad[0x6c];

  CardStat()
  {
    memset(this, 0, sizeof(CardStat));
  }

  int GetTime() const;
  int GetCommentAddr() const;
};

class CMemoryCardSys {
public:
  enum EMemoryCardPort { kCS_SlotA, kCS_SlotB };

  struct CardFileHandle {
    EMemoryCardPort slot;
    FileHandle handle;
    CardFileHandle(EMemoryCardPort slot) : slot(slot) {}
    int GetFileNo() const;
  };

  class CCardFileInfo {
    uchar pad[0x114];

  public:
    ~CCardFileInfo();

    ECardResult PumpCardTransfer();
    ECardResult CloseFile();
  };

  CMemoryCardSys();
  ~CMemoryCardSys();

  static ECardResult GetResultCode(int);
  static ECardResult MountCard(EMemoryCardPort port);
  static ECardResult CheckCard(EMemoryCardPort port);
  static ECardResult GetStatus(EMemoryCardPort port, int fileNo, CardStat& statOut);
  static ECardResult FastDeleteFile(EMemoryCardPort port, int fileNo);

  static ProbeResults IsMemoryCardInserted(EMemoryCardPort);
  static ECardResult GetSerialNo(EMemoryCardPort port, long long& serialOut);
  static void UnmountCard(EMemoryCardPort);
  static ECardResult Rename(EMemoryCardPort, const rstl::string&, const rstl::string&);

  void Initialize();

private:
  // TODO
};

#endif // _CMEMORYCARDSYS
