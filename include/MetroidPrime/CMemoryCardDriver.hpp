#ifndef _CMEMORYCARDDRIVER
#define _CMEMORYCARDDRIVER

#include "MetroidPrime/Player/CGameState.hpp"

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
