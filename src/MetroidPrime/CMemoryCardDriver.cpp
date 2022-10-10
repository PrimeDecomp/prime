#include "MetroidPrime/CMemoryCardDriver.hpp"

#include "MetroidPrime/CMain.hpp"

bool CMemoryCardDriver::IsCardBusy(EState) { return false; }

bool CMemoryCardDriver::IsCardWriting(EState) { return false; }

CMemoryCardDriver::CMemoryCardDriver(CMemoryCardSys::EMemoryCardPort cardPort, CAssetId saveBanner, CAssetId saveIcon0, CAssetId saveIcon1,
                    bool importPersistent)
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
  , x19d_importPersistent(importPersistent)
{
  x100_mcFileInfos.push_back(rstl::pair< EFileState, SMemoryCardFileInfo >(
    kFS_Unknown,
    SMemoryCardFileInfo(x0_cardPort, rstl::string_l("MetroidPrime A"))
  ));
  x100_mcFileInfos.push_back(rstl::pair< EFileState, SMemoryCardFileInfo >(
    kFS_Unknown,
    SMemoryCardFileInfo(x0_cardPort, rstl::string_l("MetroidPrime B"))
  ));
}

void CMemoryCardDriver::ClearFileInfo() {
  x198_fileInfo = nullptr;
}

CMemoryCardDriver::~CMemoryCardDriver() {}

void CMemoryCardDriver::Update() {
  ProbeResults result = CMemoryCardSys::IsMemoryCardInserted(x0_cardPort);

  if (result.x0_error == k_NOCARD) {
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

void CMemoryCardDriver::HandleCardError(int) {}

void CMemoryCardDriver::UpdateMountCard(ECardResult) {}

void CMemoryCardDriver::UpdateCardCheck(ECardResult) {}

void CMemoryCardDriver::UpdateFileRead(ECardResult) {}

void CMemoryCardDriver::UpdateFileDeleteAlt(ECardResult) {}

void CMemoryCardDriver::UpdateFileDeleteBad(ECardResult) {}

void CMemoryCardDriver::UpdateFileCreate(ECardResult) {}

void CMemoryCardDriver::UpdateFileWrite(ECardResult) {}

void CMemoryCardDriver::UpdateFileCreateTransactional(ECardResult) {}

void CMemoryCardDriver::UpdateFileWriteTransactional(ECardResult) {}

void CMemoryCardDriver::UpdateFileRenameBtoA(ECardResult) {}

void CMemoryCardDriver::StartFileRenameBtoA() {}

void CMemoryCardDriver::WriteBackupBuf() {}

void CMemoryCardDriver::UpdateFileAltDeleteTransactional(ECardResult) {}

void CMemoryCardDriver::UpdateCardFormat(ECardResult) {}

void CMemoryCardDriver::StartCardProbe() {}

void CMemoryCardDriver::UpdateCardProbe() {}

void CMemoryCardDriver::StartMountCard() {}

void CMemoryCardDriver::StartCardCheck() {}

void CMemoryCardDriver::ClearError() {}

void CMemoryCardDriver::CheckCardCapacity() {}

void CMemoryCardDriver::NoCardFound() {}

void CMemoryCardDriver::IndexFiles() {}

void CMemoryCardDriver::StartFileDeleteBad() {}

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
