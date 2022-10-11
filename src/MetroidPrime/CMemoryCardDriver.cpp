#include "MetroidPrime/CMemoryCardDriver.hpp"

#include "MetroidPrime/CMain.hpp"

#include "Kyoto/Streams/CMemoryInStream.hpp"

#include "dolphin/os.h"
#include "stdio.h"

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

CMemoryCardDriver::CMemoryCardDriver(EMemoryCardPort cardPort, CAssetId saveBanner,
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

void CMemoryCardDriver::ClearError() { x14_error = kE_OK; }

void CMemoryCardDriver::CheckCardCapacity() {
  if (x18_cardFreeBytes >= 0x2000 && x1c_cardFreeFiles >= 1) {
    return;
  }
  x14_error = kE_CardStillFull;
}

void CMemoryCardDriver::NoCardFound() {
  x10_state = kS_NoCard;
  gpMain->SetCardBusy(false);
}

void CMemoryCardDriver::IndexFiles() {
  x14_error = kE_OK;
  for (int i = 0; i < x100_mcFileInfos.capacity(); ++i) {
    rstl::pair< EFileState, SMemoryCardFileInfo >& info = x100_mcFileInfos[i];
    if (info.first == kFS_Unknown) {
      ECardResult result = info.second.Open();
      if (result == kCR_NOFILE) {
        info.first = kFS_NoFile;
        continue;
      } else if (result == kCR_READY) {
        CardStat stat;
        if (CMemoryCardSys::GetStatus(x0_cardPort, info.second.GetFileNo(), stat) == kCR_READY) {
          int comment = stat.GetCommentAddr();
          if (comment == -1)
            info.first = kFS_BadFile;
          else
            info.first = kFS_File;
        } else {
          NoCardFound();
          return;
        }
        if (info.second.Close() == kCR_NOCARD) {
          NoCardFound();
          return;
        }
      } else {
        NoCardFound();
        return;
      }
    }
  }

  if (x100_mcFileInfos[0].first == kFS_File) {
    if (x100_mcFileInfos[1].first == kFS_File) {
      CardStat stat;
      if (CMemoryCardSys::GetStatus(x0_cardPort, x100_mcFileInfos[0].second.GetFileNo(), stat) ==
          kCR_READY) {
        u32 timeA = stat.GetTime();
        if (CMemoryCardSys::GetStatus(x0_cardPort, x100_mcFileInfos[1].second.GetFileNo(), stat) ==
            kCR_READY) {
          u32 timeB = stat.GetTime();
          if (timeA > timeB)
            x194_fileIdx = 0;
          else
            x194_fileIdx = 1;
          StartFileRead();
          return;
        }
        NoCardFound();
        return;
      }
      NoCardFound();
      return;
    }
    x194_fileIdx = 0;
    StartFileRead();
    return;
  }

  if (x100_mcFileInfos[1].first == kFS_File) {
    x194_fileIdx = 1;
    StartFileRead();
    return;
  }

  if (x100_mcFileInfos[0].first == kFS_BadFile || x100_mcFileInfos[1].first == kFS_BadFile) {
    x14_error = kE_FileCorrupted;
    x10_state = kS_FileBad;
  } else {
    x14_error = kE_FileMissing;
    x10_state = kS_FileBad;
  }
}

void CMemoryCardDriver::StartFileDeleteBad() {
  x14_error = kE_OK;
  x10_state = kS_FileDeleteBad;

  for (int idx = 0; idx < x100_mcFileInfos.capacity(); ++idx) {
    rstl::pair< EFileState, SMemoryCardFileInfo >& info = x100_mcFileInfos[idx];
    if (info.first == kFS_BadFile) {
      x194_fileIdx = idx;
      ECardResult result = CMemoryCardSys::FastDeleteFile(x0_cardPort, info.second.GetFileNo());
      if (result != kCR_READY) {
        UpdateFileDeleteBad(result);
      }
      return;
    }
  }
}

void CMemoryCardDriver::StartFileDeleteAlt() {
  x14_error = kE_OK;
  x10_state = kS_FileDeleteAlt;

  int altFileIdx;
  if (x194_fileIdx == 0) {
    altFileIdx = 1;
  } else {
    altFileIdx = 0;
  }

  SMemoryCardFileInfo& fileInfo = x100_mcFileInfos[altFileIdx].second;
  ECardResult result = CMemoryCardSys::FastDeleteFile(x0_cardPort, fileInfo.GetFileNo());
  if (result != kCR_READY)
    UpdateFileDeleteAlt(result);
}

void CMemoryCardDriver::StartFileRead() {
  x14_error = kE_OK;
  x10_state = kS_FileRead;
  ECardResult result = x100_mcFileInfos[x194_fileIdx].second.Open();
  if (result != kCR_READY) {
    UpdateFileRead(result);
    return;
  }

  result = x100_mcFileInfos[x194_fileIdx].second.StartRead();
  if (result != kCR_READY)
    UpdateFileRead(result);
}

void CMemoryCardDriver::StartFileCreate() {
  x14_error = kE_OK;
  x10_state = kS_FileCreate;
  if (x18_cardFreeBytes < 0x4000 || x1c_cardFreeFiles < 2) {
    x10_state = kS_FileCreateFailed;
    x14_error = kE_CardFull;
    return;
  }

  x194_fileIdx = 0;
  x198_fileInfo = new CCardFileInfo(x0_cardPort, rstl::string_l(skSaveFileNames[x194_fileIdx]));
  InitializeFileInfo();
  ECardResult result = x198_fileInfo->CreateFile();
  if (result != kCR_READY)
    UpdateFileCreate(result);
}

void CMemoryCardDriver::StartFileWrite() {
  x14_error = kE_OK;
  x10_state = kS_FileWrite;
  ECardResult result = x198_fileInfo->WriteFile();
  if (result != kCR_READY)
    UpdateFileWrite(result);
}

void CMemoryCardDriver::StartFileCreateTransactional() {
  x14_error = kE_OK;
  x10_state = kS_FileCreateTransactional;
  ClearFileInfo();
  if (x18_cardFreeBytes < 8192 || x1c_cardFreeFiles < 1) {
    x10_state = kS_FileCreateTransactionalFailed;
    x14_error = kE_CardFull;
    return;
  }

  int altFileIdx;
  if (x194_fileIdx == 0) {
    altFileIdx = 1;
  } else {
    altFileIdx = 0;
  }

  x194_fileIdx = altFileIdx;
  x198_fileInfo = new CCardFileInfo(x0_cardPort, rstl::string_l(skSaveFileNames[x194_fileIdx]));
  InitializeFileInfo();
  ECardResult result = x198_fileInfo->CreateFile();
  if (result != kCR_READY)
    UpdateFileCreateTransactional(result);
}

void CMemoryCardDriver::StartFileWriteTransactional() {
  x14_error = kE_OK;
  x10_state = kS_FileWriteTransactional;
  ECardResult result = x198_fileInfo->WriteFile();
  if (result != kCR_READY)
    UpdateFileWriteTransactional(result);
}

void CMemoryCardDriver::StartFileDeleteAltTransactional() {
  x14_error = kE_OK;
  x10_state = kS_FileAltDeleteTransactional;
  int bidx = x194_fileIdx == 0 ? 1 : 0;
  ECardResult result =
      CMemoryCardSys::DeleteFile(x0_cardPort, rstl::string_l(skSaveFileNames[bidx]));
  if (result != kCR_READY)
    UpdateFileAltDeleteTransactional(result);
}

void CMemoryCardDriver::StartCardFormat() {
  x14_error = kE_OK;
  x10_state = kS_CardFormat;
  ECardResult result = CMemoryCardSys::FormatCard(x0_cardPort);
  if (result != kCR_READY)
    UpdateCardFormat(result);
}

void CMemoryCardDriver::InitializeFileInfo() {
  ExportPersistentOptions();

  OSCalendarTime time;
  OSTicksToCalendarTime(OSGetTime(), &time);

  char nameBuffer[36];

  sprintf(nameBuffer, "%02d.%02d.%02d  %02d:%02d", time.x10_mon + 1, time.xc_mday,
          time.x14_year % 100, time.x8_hour, time.x4_min);

  x198_fileInfo->SetComment(rstl::string_l("Metroid Prime                   ") + nameBuffer);

  x198_fileInfo->LockBannerToken(x4_saveBanner, *gpSimplePool);
  x198_fileInfo->LockIconToken(x8_saveIcon0, 2, *gpSimplePool);

  CMemoryStreamOut w = x198_fileInfo->BeginMemoryOut(3004);

  SSaveHeader header;
  for (int i = 0; i < xe4_fileSlots.capacity(); ++i) {
    header.x4_savePresent[i] = !xe4_fileSlots[i].null();
  }
  header.DoPut(w);

  w.Put(x30_systemData.data(), x30_systemData.size());

  for (int i = 0; i < xe4_fileSlots.size(); ++i) {
    rstl::auto_ptr< SGameFileSlot >& fileSlot = xe4_fileSlots[i];
    if (!fileSlot.null()) {
      fileSlot->DoPut(w);
    }
  }
}

void CMemoryCardDriver::ReadFinished() {
  SMemoryCardFileInfo& fileInfo = x100_mcFileInfos[x194_fileIdx].second;
  CardStat stat;
  if (CMemoryCardSys::GetStatus(fileInfo.x0_fileInfo.slot, fileInfo.GetFileNo(), stat) !=
      kCR_READY) {
    NoCardFound();
    return;
  }

  x20_fileTime = stat.GetTime();

  CMemoryInStream r(fileInfo.x34_saveData.data(), 3004);
  SSaveHeader header(r);
  r.Get(x30_systemData.data(), x30_systemData.capacity());

  for (int i = 0; i < xe4_fileSlots.capacity(); ++i) {
    if (header.x4_savePresent[i]) {
      xe4_fileSlots[i] = new SGameFileSlot(r);
    } else {
      xe4_fileSlots[i] = nullptr;
    }
  }

  if (x19d_importPersistent) {
    ImportPersistentOptions();
  }
}

void CMemoryCardDriver::EraseFileSlot(int) {}

void CMemoryCardDriver::BuildNewFileSlot(int) {}

void CMemoryCardDriver::BuildExistingFileSlot(int) {}

void CMemoryCardDriver::ImportPersistentOptions() {}

void CMemoryCardDriver::ExportPersistentOptions() {}

// SSaveHeader::SSaveHeader(int)

SSaveHeader::SSaveHeader(CMemoryInStream& in) {
  x0_version = in.ReadLong();
  for (int i = 0; i < 3; ++i) {
    x4_savePresent[i] = in.ReadBool();
  }
}

void SSaveHeader::DoPut(CMemoryStreamOut& out) const {
  out.WriteLong(x0_version);
  for (int i = 0; i < 3; ++i) {
    out.Put(x4_savePresent[i]);
  }
}

SGameFileSlot::SGameFileSlot() {}

SGameFileSlot::SGameFileSlot(CMemoryInStream& in) {}

void SGameFileSlot::DoPut(CMemoryStreamOut& w) const { w.Put(x0_saveBuffer.data(), x0_saveBuffer.capacity()); }

void SGameFileSlot::InitializeFromGameState() {}

void SGameFileSlot::LoadGameState(int) {}

const CGameState::GameFileStateInfo* CMemoryCardDriver::GetGameFileStateInfo(int) {
  return nullptr;
};

bool CMemoryCardDriver::GetCardFreeBytes() { return false; }
