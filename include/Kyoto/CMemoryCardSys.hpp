#ifndef _CMEMORYCARDSYS
#define _CMEMORYCARDSYS

#include "string.h"
#include "types.h"

#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Streams/CMemoryStreamOut.hpp"
#include "Kyoto/TToken.hpp"

#include "dolphin/card.h"
#include "rstl/optional_object.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/string.hpp"

class CTexture;

// Dolphin SDK result codes, with Retro's CRC mismatch extension.
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

struct ProbeResults {
  ECardResult x0_error;
  s32 x4_cardSize;   /* in megabits */
  s32 x8_sectorSize; /* in bytes */
};

struct CardStat {
  CARDStat x0_stat;

  CardStat() { memset(this, 0, sizeof(CardStat)); }

  int GetTime() const;
  int GetCommentAddr() const;
  int GetFileLength();
  int GetBannerFormat();
  int GetIconFormat(int idx);
  void SetBannerFormat(int format);
  void SetIconFormat(int format, int idx);
  void SetIconSpeed(int speed, int idx);
  void SetIconAddr(int addr);
  void SetCommentAddr(int addr);
};
CHECK_SIZEOF(CardStat, 0x6C);

class CMemoryCardSys {
public:
  enum EMemoryCardPort { kCS_SlotA, kCS_SlotB };

  class CCardFileInfo {
    struct Icon {
      CAssetId x0_id;
      int x4_speed;
      TLockedToken< CTexture > x8_tex;

      Icon(CAssetId id, int speed, CSimplePool& pool);
    };

    enum EStatus { kS_Standby, kS_Transferring, kS_Done };

    EStatus x0_status;
    CARDFileInfo x4_fileInfo;
    rstl::string x18_fileName;
    rstl::string x28_comment;
    int x38_;
    CAssetId x3c_bannerTex;
    rstl::optional_object< TLockedToken< CTexture > > x40_bannerTok;
    rstl::reserved_vector< Icon, 8 > x50_iconToks;
    rstl::vector< u8 > xf4_saveBuffer;
    rstl::vector< u8, rstl::aligned_allocator > x104_cardBuffer;

  public:
    CCardFileInfo(EMemoryCardPort port, const rstl::string& name);
    ~CCardFileInfo() {}

    void SetComment(const rstl::string& name);
    void LockBannerToken(CAssetId bannerTxtr, CSimplePool& sp);
    void LockIconToken(CAssetId iconTxtr, int speed, CSimplePool& sp);

    ECardResult PumpCardTransfer();
    ECardResult CreateFile();
    ECardResult WriteFile();
    ECardResult CloseFile();
    ECardResult GetStatus(CardStat& stat);
    EMemoryCardPort GetCardPort();
    int GetFileNo();
    uint CalculateBannerDataSize();
    uint CalculateTotalDataSize();
    void BuildCardBuffer();
    void WriteBannerData(COutputStream& out);
    void WriteIconData(COutputStream& out);

    rstl::vector< u8 >& SaveBuffer() { return xf4_saveBuffer; }

    inline CMemoryStreamOut BeginMemoryOut(uint sz) {
      xf4_saveBuffer.resize(sz);
      return CMemoryStreamOut(xf4_saveBuffer.data(), sz);
    }
  };

  CMemoryCardSys();
  ~CMemoryCardSys();

  static ECardResult GetResultCode(int);
  static ECardResult MountCard(EMemoryCardPort port);
  static ECardResult CheckCard(EMemoryCardPort port);
  static ECardResult GetStatus(EMemoryCardPort port, int fileNo, CardStat& statOut);
  static ECardResult SetStatus(EMemoryCardPort port, int fileNo, const CardStat& stat);
  static ECardResult DeleteFile(EMemoryCardPort port, const rstl::string& name);
  static ECardResult FastDeleteFile(EMemoryCardPort port, int fileNo);
  static ECardResult FormatCard(EMemoryCardPort port);

  static ProbeResults IsMemoryCardInserted(EMemoryCardPort);
  static ECardResult GetSerialNo(EMemoryCardPort port, long long& serialOut);
  static ECardResult UnmountCard(EMemoryCardPort);
  static ECardResult Rename(EMemoryCardPort, const rstl::string&, const rstl::string&);
  static ECardResult GetNumFreeBytes(EMemoryCardPort port, uint& freeBytes, uint& freeFiles);
  static rstl::vector< char, rstl::aligned_allocator >& WorkAreaVector(EMemoryCardPort port);
  static char* AllocCardWorkArea(EMemoryCardPort port);
  static void FreeCardWorkArea(EMemoryCardPort port);
  inline void Initialize();

private:
  static bool mIsInitialized;
  static bool mIsCardSysExists;
  static rstl::vector< char, rstl::aligned_allocator > mWorkAreaA;
  static rstl::vector< char, rstl::aligned_allocator > mWorkAreaB;
};

NESTED_CHECK_SIZEOF(CMemoryCardSys, CCardFileInfo, 0x114)

struct SMemoryCardFileInfo {
  CARDFileInfo x0_fileInfo;
  rstl::string x14_name;
  rstl::vector< uchar, rstl::aligned_allocator > x24_saveFileData;
  rstl::vector< uchar > x34_saveData;

  SMemoryCardFileInfo(int cardPort, const rstl::string& name);
  SMemoryCardFileInfo(const SMemoryCardFileInfo& other)
  : x0_fileInfo(other.x0_fileInfo)
  , x14_name(other.x14_name)
  , x24_saveFileData(other.x24_saveFileData)
  , x34_saveData(other.x34_saveData) {}
  ~SMemoryCardFileInfo() {}

  ECardResult Open();
  ECardResult Close();
  CMemoryCardSys::EMemoryCardPort GetFileCardPort();
  int GetFileNo() const;
  ECardResult StartRead();
  ECardResult TryFileRead();
  ECardResult FileRead();
  ECardResult GetSaveDataOffset(uint& offOut);
};
CHECK_SIZEOF(SMemoryCardFileInfo, 0x44);

#endif // _CMEMORYCARDSYS
