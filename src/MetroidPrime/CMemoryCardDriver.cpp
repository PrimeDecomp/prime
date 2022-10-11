#include "MetroidPrime/CMemoryCardDriver.hpp"

#include "MetroidPrime/CMain.hpp"

static bool lbl_805A9118;
static const char* const skSaveFileNames[2] = {"MetroidPrime A", "MetroidPrime B"};

bool CMemoryCardDriver::IsCardBusy(EState v) { return v >= kS_CardMount && v <= kS_CardFormat; }

bool CMemoryCardDriver::IsCardWriting(EState v) {
  if (v < kS_CardProbe)
    return false;
  if (v == kS_CardCheck)
    return false;
  if (v == kS_FileRead)
    return false;
  return true;
}

CMemoryCardDriver::CMemoryCardDriver(CMemoryCardSys::EMemoryCardPort cardPort, CAssetId saveBanner,
                                     CAssetId saveIcon0, CAssetId saveIcon1, bool importPersistent)
: x0_cardPort(cardPort)
, x4_saveBanner(saveBanner)
, x8_saveIcon0(saveIcon0)
, xc_saveIcon1(saveIcon1)
, x10_state(kS_Initial)
, x14_error(kE_OK)
, x18_cardFreeBytes(0)
, x1c_cardFreeFiles(0)
, x20_fileTime(0)
, x28_cardSerial(0)
, x30_systemData(0)
, xe4_fileSlots(nullptr)
, x100_mcFileInfos()
, x194_fileIdx(-1)
, x198_fileInfo(nullptr)
, x19c_(false)
, x19d_importPersistent(importPersistent) {
  lbl_805A9118 = true;
  x100_mcFileInfos.push_back(rstl::pair< EFileState, SMemoryCardFileInfo >(
      kFS_Unknown, SMemoryCardFileInfo(x0_cardPort, rstl::string_l("MetroidPrime A"))));
  x100_mcFileInfos.push_back(rstl::pair< EFileState, SMemoryCardFileInfo >(
      kFS_Unknown, SMemoryCardFileInfo(x0_cardPort, rstl::string_l("MetroidPrime B"))));
}

void CMemoryCardDriver::ClearFileInfo() { x198_fileInfo = nullptr; }

CMemoryCardDriver::~CMemoryCardDriver() {
  CMemoryCardSys::UnmountCard(x0_cardPort);
  lbl_805A9118 = false;
  gpMain->SetCardBusy(false);
}

void CMemoryCardDriver::Update() {
  ProbeResults result = CMemoryCardSys::IsMemoryCardInserted(x0_cardPort);

  if (result.x0_error == kCR_NOCARD) {
    if (x10_state != kS_NoCard)
      NoCardFound();
    gpMain->SetCardBusy(false);
    return;
  }

  if (x10_state == kS_CardProbe) {
    UpdateCardProbe();
    gpMain->SetCardBusy(false);
    return;
  }

  ECardResult resultCode = CMemoryCardSys::GetResultCode(x0_cardPort);
  bool cardBusy = false;

  if (IsCardBusy(x10_state)) {
    cardBusy = true;

    switch (x10_state) {
    case kS_CardProbe:
      break;
    case kS_CardMount:
      UpdateMountCard(resultCode);
      break;
    case kS_CardCheck:
      UpdateCardCheck(resultCode);
      break;
    case kS_FileDeleteBad:
      UpdateFileDeleteBad(resultCode);
      break;
    case kS_FileRead:
      UpdateFileRead(resultCode);
      break;
    case kS_FileDeleteAlt:
      UpdateFileDeleteAlt(resultCode);
      break;
    case kS_FileCreate:
      UpdateFileCreate(resultCode);
      break;
    case kS_FileWrite:
      UpdateFileWrite(resultCode);
      break;
    case kS_FileCreateTransactional:
      UpdateFileCreateTransactional(resultCode);
      break;
    case kS_FileWriteTransactional:
      UpdateFileWriteTransactional(resultCode);
      break;
    case kS_FileAltDeleteTransactional:
      UpdateFileAltDeleteTransactional(resultCode);
      break;
    case kS_FileRenameBtoA:
      UpdateFileRenameBtoA(resultCode);
      break;
    case kS_CardFormat:
      UpdateCardFormat(resultCode);
      break;
    default:
      break;
    }
  }

  gpMain->SetCardBusy(cardBusy);
}

void CMemoryCardDriver::HandleCardError(ECardResult result, EState state) {
  switch (result) {
  case kCR_BUSY:
    break;
  case kCR_WRONGDEVICE:
    x10_state = state;
    x14_error = kE_CardWrongDevice;
    break;
  case kCR_NOCARD:
    NoCardFound();
    break;
  case kCR_IOERROR:
    x10_state = state;
    x14_error = kE_CardIOError;
    break;
  case kCR_ENCODING:
    x10_state = state;
    x14_error = kE_CardWrongCharacterSet;
    break;
  }
}

void CMemoryCardDriver::UpdateMountCard(ECardResult result) {
  if (result == kCR_READY) {
    x10_state = kS_CardMountDone;
    StartCardCheck();
  } else if (result == kCR_BROKEN) {
    x10_state = kS_CardMountDone;
    x14_error = kE_CardBroken;
    StartCardCheck();
  } else {
    HandleCardError(result, kS_CardMountFailed);
  }
}

void CMemoryCardDriver::UpdateCardCheck(ECardResult result) {
  if (result == kCR_READY) {
    x10_state = kS_CardCheckDone;
    if (!GetCardFreeBytes())
      return;
    if (CMemoryCardSys::GetSerialNo(x0_cardPort, x28_cardSerial) == kCR_READY)
      return;
    NoCardFound();

  } else if (result == kCR_BROKEN) {
    x10_state = kS_CardCheckFailed;
    x14_error = kE_CardBroken;

  } else {
    HandleCardError(result, kS_CardCheckFailed);
  }
}

void CMemoryCardDriver::UpdateFileRead(ECardResult result) {
  if (result == kCR_READY) {
    ECardResult readRes = x100_mcFileInfos[x194_fileIdx].second.TryFileRead();
    if (x100_mcFileInfos[x194_fileIdx].second.Close() != kCR_READY) {
      NoCardFound();
      return;
    }

    int altFileIdx;
    if (x194_fileIdx == 0) {
      altFileIdx = 1;
    } else {
      altFileIdx = 0;
    }
    if (readRes == kCR_READY) {
      x10_state = kS_Ready;
      ReadFinished();
      EFileState fileSt = x100_mcFileInfos[altFileIdx].first;
      if (fileSt != kFS_NoFile) {
        StartFileDeleteAlt();
      } else {
        CheckCardCapacity();
      }
      return;
    }

    if (readRes == kCR_CRC_MISMATCH) {
      x100_mcFileInfos[x194_fileIdx].first = kFS_BadFile;
      if (x100_mcFileInfos[altFileIdx].first == kFS_File) {
        x10_state = kS_CardCheckDone;
        IndexFiles();
      } else {
        x10_state = kS_FileBad;
        x14_error = kE_FileCorrupted;
      }
    }
  } else {
    HandleCardError(result, kS_FileBad);
  }
}

void CMemoryCardDriver::UpdateFileDeleteAlt(ECardResult result) {
  if (result == kCR_READY) {
    x10_state = kS_Ready;
    if (GetCardFreeBytes()) {
      CheckCardCapacity();
    }
  } else {
    HandleCardError(result, kS_FileDeleteAltFailed);
  }
}

void CMemoryCardDriver::UpdateFileDeleteBad(ECardResult result) {
  if (result == kCR_READY) {
    x100_mcFileInfos[x194_fileIdx].first = kFS_NoFile;
    if (x100_mcFileInfos[x194_fileIdx ? 0 : 1].first == kFS_BadFile) {
      x10_state = kS_FileBad;
      StartFileDeleteBad();
    } else {
      x10_state = kS_CardCheckDone;
      if (!GetCardFreeBytes()) {
        return;
      }
      IndexFiles();
    }
  } else {
    HandleCardError(result, kS_FileDeleteBadFailed);
  }
}

void CMemoryCardDriver::UpdateFileCreate(ECardResult result) {
  if (result == kCR_READY) {
    x10_state = kS_FileCreateDone;
    StartFileWrite();
  } else {
    HandleCardError(result, kS_FileCreateFailed);
  }
}

void CMemoryCardDriver::UpdateFileWrite(ECardResult result) {
  if (result == kCR_READY) {
    ECardResult xferResult = x198_fileInfo->PumpCardTransfer();
    if (xferResult == kCR_READY) {
      x10_state = kS_Ready;
      if (x198_fileInfo->CloseFile() != kCR_READY) {
        NoCardFound();
      }
      return;
    }
    if (xferResult == kCR_BUSY) {
      return;
    }
    if (xferResult == kCR_IOERROR) {
      x10_state = kS_FileWriteFailed;
      x14_error = kE_CardIOError;
      return;
    }
    NoCardFound();
  } else {
    HandleCardError(result, kS_FileWriteFailed);
  }
}

void CMemoryCardDriver::UpdateFileCreateTransactional(ECardResult result) {
  if (result == kCR_READY) {
    x10_state = kS_FileCreateTransactionalDone;
    StartFileWriteTransactional();
  } else {
    HandleCardError(result, kS_FileCreateTransactionalFailed);
  }
}

void CMemoryCardDriver::UpdateFileWriteTransactional(ECardResult result) {
  if (result == kCR_READY) {
    ECardResult xferResult = x198_fileInfo->PumpCardTransfer();
    if (xferResult == kCR_READY) {
      x10_state = kS_FileWriteTransactionalDone;
      if (x198_fileInfo->CloseFile() != kCR_READY) {
        NoCardFound();
      } else {
        StartFileDeleteAltTransactional();
      }
      return;
    }
    if (xferResult == kCR_BUSY) {
      return;
    }
    if (xferResult == kCR_IOERROR) {
      x10_state = kS_FileWriteTransactionalFailed;
      x14_error = kE_CardIOError;
      return;
    }
    NoCardFound();
  } else {
    HandleCardError(result, kS_FileWriteTransactionalFailed);
  }
}

void CMemoryCardDriver::UpdateFileRenameBtoA(ECardResult result) {
  if (result == kCR_READY) {
    x10_state = kS_DriverClosed;
    WriteBackupBuf();
  } else {
    HandleCardError(result, kS_FileRenameBtoAFailed);
  }
}

void CMemoryCardDriver::StartFileRenameBtoA() {
  if (x194_fileIdx == 1) {
    /* Rename B file to A file (ideally the card is always left with 'A' only) */
    x14_error = kE_OK;
    x10_state = kS_FileRenameBtoA;
    int bidx = x194_fileIdx == 0 ? 1 : 0;
    ECardResult result =
        CMemoryCardSys::Rename(x0_cardPort, rstl::string_l(skSaveFileNames[x194_fileIdx]),
                               rstl::string_l(skSaveFileNames[bidx]));
    if (result != kCR_READY) {
      UpdateFileRenameBtoA(result);
    }
  } else {
    x10_state = kS_DriverClosed;
    WriteBackupBuf();
  }
}

void CMemoryCardDriver::WriteBackupBuf() {
  gpGameState->WriteBackupBuf();
  gpGameState->SetCardSerial(x28_cardSerial);
}

void CMemoryCardDriver::UpdateFileAltDeleteTransactional(ECardResult result) {
  if (result == kCR_READY) {
    x10_state = kS_FileAltDeleteTransactionalDone;
    if (GetCardFreeBytes())
      StartFileRenameBtoA();
  } else {
    HandleCardError(result, kS_FileAltDeleteTransactionalFailed);
  }
}

void CMemoryCardDriver::UpdateCardFormat(ECardResult result) {
  if (result == kCR_READY)
    x10_state = kS_CardFormatted;
  else if (result == kCR_BROKEN) {
    x10_state = kS_CardFormatFailed;
    x14_error = kE_CardIOError;
  } else {
    HandleCardError(result, kS_CardFormatFailed);
  }
}

void CMemoryCardDriver::StartCardProbe() {
  x10_state = kS_CardProbe;
  x14_error = kE_OK;
  UpdateCardProbe();
}

void CMemoryCardDriver::UpdateCardProbe() {
  ProbeResults result = CMemoryCardSys::IsMemoryCardInserted(x0_cardPort);
  ECardResult error = result.x0_error;

  if (error == kCR_READY && result.x8_sectorSize != 0x2000) {
    x10_state = kS_CardProbeFailed;
    x14_error = kE_CardNon8KSectors;
  } else if (error != kCR_BUSY) {
    if (error == kCR_WRONGDEVICE) {
      x10_state = kS_CardProbeFailed;
      x14_error = kE_CardWrongDevice;
    } else if (error != kCR_READY) {
      NoCardFound();
    } else {
      x10_state = kS_CardProbeDone;
      StartMountCard();
    }
  }

  // switch (result.x0_error) {
  // case kCR_READY:
  //   if (result.x8_sectorSize != 0x2000) {
  //     x10_state = kS_CardProbeFailed;
  //     x14_error = kE_CardNon8KSectors;
  //   } else {
  //     x10_state = kS_CardProbeDone;
  //     StartMountCard();
  //   }
  //   break;
  // case kCR_BUSY:
  //   break;
  // case kCR_WRONGDEVICE:
  //   x10_state = kS_CardProbeFailed;
  //   x14_error = kE_CardWrongDevice;
  //   break;
  // default:
  //   NoCardFound();
  //   break;
  // }
}

void CMemoryCardDriver::StartMountCard() {
  x10_state = kS_CardMount;
  x14_error = kE_OK;
  ECardResult result = CMemoryCardSys::MountCard(x0_cardPort);
  if (result != kCR_READY)
    UpdateMountCard(result);
}

void CMemoryCardDriver::StartCardCheck() {
  x14_error = kE_OK;
  x10_state = kS_CardCheck;
  ECardResult result = CMemoryCardSys::CheckCard(x0_cardPort);
  if (result != kCR_READY)
    UpdateCardCheck(result);
}

void CMemoryCardDriver::ClearError() {
  x14_error = kE_OK;
}

void CMemoryCardDriver::CheckCardCapacity() {}

void CMemoryCardDriver::NoCardFound() {}

void CMemoryCardDriver::IndexFiles() {}

void CMemoryCardDriver::StartFileDeleteBad() {}

void CMemoryCardDriver::StartFileDeleteAlt() {}

void CMemoryCardDriver::StartFileRead() {}

void CMemoryCardDriver::StartFileCreate() {}

void CMemoryCardDriver::StartFileWrite() {}

void CMemoryCardDriver::StartFileCreateTransactional() {}

void CMemoryCardDriver::StartFileWriteTransactional() {}

void CMemoryCardDriver::StartFileDeleteAltTransactional() {}

void CMemoryCardDriver::StartCardFormat() {}

void CMemoryCardDriver::InitializeFileInfo() {}

void CMemoryCardDriver::ReadFinished() {}

void CMemoryCardDriver::EraseFileSlot(int) {}

void CMemoryCardDriver::BuildNewFileSlot(int) {}

void CMemoryCardDriver::BuildExistingFileSlot(int) {}

void CMemoryCardDriver::ImportPersistentOptions() {}

void CMemoryCardDriver::ExportPersistentOptions() {}

const CGameState::GameFileStateInfo* CMemoryCardDriver::GetGameFileStateInfo(int) {
  return nullptr;
};

bool CMemoryCardDriver::GetCardFreeBytes() { return false; }
