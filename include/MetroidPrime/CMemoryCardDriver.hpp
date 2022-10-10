#ifndef _CMEMORYCARDDRIVER
#define _CMEMORYCARDDRIVER

#include "MetroidPrime/Player/CGameState.hpp"

#include "Kyoto/CMemoryCardSys.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/pair.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/vector.hpp"


class CMemoryCardDriver {
public:
  enum EState {
    kS_Initial = 0,
    kS_Ready = 1,
    kS_NoCard = 2,
    kS_DriverClosed = 3,
    kS_CardFormatted = 4,
    kS_CardProbeDone = 5,
    kS_CardMountDone = 6,
    kS_CardCheckDone = 7,
    kS_FileCreateDone = 8,
    kS_FileCreateTransactionalDone = 9,
    kS_FileWriteTransactionalDone = 10,
    kS_FileDeleteAltTransactionalDone = 11,
    kS_CardProbeFailed = 12,
    kS_CardMountFailed = 13,
    kS_CardCheckFailed = 14,
    kS_FileDeleteBadFailed = 15,
    kS_FileDeleteAltFailed = 16,
    kS_FileBad = 17,
    kS_FileCreateFailed = 18,
    kS_FileWriteFailed = 19,
    kS_FileCreateTransactionalFailed = 20,
    kS_FileWriteTransactionalFailed = 21,
    kS_FileDeleteAltTransactionalFailed = 22,
    kS_FileRenameBtoAFailed = 23,
    kS_CardFormatFailed = 24,
    kS_CardProbe = 25,
    kS_CardMount = 26,
    kS_CardCheck = 27,
    kS_FileDeleteBad = 28,
    kS_FileRead = 29,
    kS_FileDeleteAlt = 30,
    kS_FileCreate = 31,
    kS_FileWrite = 32,
    kS_FileCreateTransactional = 33,
    kS_FileWriteTransactional = 34,
    kS_FileDeleteAltTransactional = 35,
    kS_FileRenameBtoA = 36,
    kS_CardFormat = 37
  };

  enum EError {
    kE_OK,
    kE_CardBroken,
    kE_CardWrongCharacterSet,
    kE_CardIOError,
    kE_CardWrongDevice,
    kE_CardFull,
    kE_CardStillFull, /* After attempting alt-delete (if needed) */
    kE_CardNon8KSectors,
    kE_FileMissing,
    kE_FileCorrupted
  };

private:
  struct SFileInfo {
    CMemoryCardSys::CardFileHandle x0_fileInfo;

    rstl::string x14_name;
    rstl::vector< u8 > x24_saveFileData;
    rstl::vector< u8 > x34_saveData;
    // SFileInfo(kabufuda::ECardSlot cardPort, std::string_view name);

    ECardResult Open();
    ECardResult Close();
    ECardSlot GetFileCardPort() const { return x0_fileInfo.slot; }
    int GetFileNo() const { return x0_fileInfo.getFileNo(); }
    ECardResult StartRead();
    ECardResult TryFileRead();
    ECardResult FileRead();
    ECardResult GetSaveDataOffset(u32& offOut) const;
  };

  struct SGameFileSlot {
    u8 x0_saveBuffer[940];
    CGameState::GameFileStateInfo x944_fileInfo;

    SGameFileSlot();
    // explicit SGameFileSlot(CMemoryInStream& in);
    void InitializeFromGameState();
    void LoadGameState(u32 idx);
    // void DoPut(CMemoryStreamOut& w) const { w.Put(x0_saveBuffer.data(), x0_saveBuffer.size()); }
  };

  enum EFileState { kFS_Unknown, kFS_NoFile, kFS_File, kFS_BadFile };

  ECardSlot x0_cardPort;
  CAssetId x4_saveBanner;
  CAssetId x8_saveIcon0;
  CAssetId xc_saveIcon1;
  EState x10_state;
  EError x14_error;
  s32 x18_cardFreeBytes;
  s32 x1c_cardFreeFiles;
  u32 x20_fileTime;
  u64 x28_cardSerial;
  u8 x30_systemData[174];
  rstl::auto_ptr< SGameFileSlot > xe4_fileSlots[3];
  rstl::vector< rstl::pair< EFileState, SFileInfo > > x100_mcFileInfos;
  u32 x194_fileIdx;
  rstl::single_ptr< CMemoryCardSys::CCardFileInfo > x198_fileInfo;
  bool x19c_;
  bool x19d_importPersistent;

public:
  static bool IsCardBusy(EState);
  static bool IsCardWriting(EState);
  CMemoryCardDriver();
  void ClearFileInfo();
  ~CMemoryCardDriver();
  void Update();
  void HandleCardError(int);
  void UpdateMountCard(int);
  void UpdateCardCheck();
  void UpdateFileRead();
  void UpdateFileDeleteAlt();
  void UpdateFileDeleteBad();
  void UpdateFileCreate();
  void UpdateFileWrite();
  void UpdateFileCreateTransactional();
  void UpdateFileWriteTransactional();
  void UpdateFileRenameBtoA();
  void StartFileRenameBtoA();
  void WriteBackupBuf();
  void UpdateFileAltDeleteTransactional();
  void UpdateCardFormat();
  void StartCardProbe();
  void UpdateCardProbe();
  void StartMountCard();
  void StartCardCheck();
  void ClearError();
  void CheckCardCapacity();
  void NoCardFound();
  void IndexFiles();
  void StartFileDeleteBad();
  void StartFileCreate();
  void StartFileWrite();
  void StartFileCreateTransactional();
  void StartFileWriteTransactional();
  void StartFileDeleteAltTransactional();
  void StartCardFormat();
  void InitializeFileInfo();
  void ReadFinished();
  void EraseFileSlot(int);
  void BuildNewFileSlot(int);
  void BuildExistingFileSlot(int);
  void ImportPersistentOptions();
  void ExportPersistentOptions();
  const CGameState::GameFileStateInfo* GetGameFileStateInfo(int);
  bool GetCardFreeBytes();
};

#endif // _CMEMORYCARDDRIVER
