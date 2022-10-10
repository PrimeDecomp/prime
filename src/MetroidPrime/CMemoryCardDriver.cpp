#include "MetroidPrime/CMemoryCardDriver.hpp"

bool CMemoryCardDriver::IsCardBusy(EState) { return false; }

bool CMemoryCardDriver::IsCardWriting(EState) { return false; }

CMemoryCardDriver::CMemoryCardDriver() {}

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
