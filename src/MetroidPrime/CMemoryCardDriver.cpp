#include "MetroidPrime/CMemoryCardDriver.hpp"

bool CMemoryCardDriver::IsCardBusy(EState) { return false; }

bool CMemoryCardDriver::IsCardWriting(EState) { return false; }

CMemoryCardDriver::CMemoryCardDriver(ECardSlot cardPort, CAssetId saveBanner, CAssetId saveIcon0, CAssetId saveIcon1,
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

void CMemoryCardDriver::ClearFileInfo() {}

CMemoryCardDriver::~CMemoryCardDriver() {}

void CMemoryCardDriver::Update() {}

void CMemoryCardDriver::HandleCardError(int) {}

void CMemoryCardDriver::UpdateMountCard(int) {}

void CMemoryCardDriver::UpdateCardCheck() {}

void CMemoryCardDriver::UpdateFileRead() {}

void CMemoryCardDriver::UpdateFileDeleteAlt() {}

void CMemoryCardDriver::UpdateFileDeleteBad() {}

void CMemoryCardDriver::UpdateFileCreate() {}

void CMemoryCardDriver::UpdateFileWrite() {}

void CMemoryCardDriver::UpdateFileCreateTransactional() {}

void CMemoryCardDriver::UpdateFileWriteTransactional() {}

void CMemoryCardDriver::UpdateFileRenameBtoA() {}

void CMemoryCardDriver::StartFileRenameBtoA() {}

void CMemoryCardDriver::WriteBackupBuf() {}

void CMemoryCardDriver::UpdateFileAltDeleteTransactional() {}

void CMemoryCardDriver::UpdateCardFormat() {}

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
