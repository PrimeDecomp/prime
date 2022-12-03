#include "Kyoto/CARAMToken.hpp"

#include "Kyoto/Alloc/CMemorySys.hpp"
#include "Kyoto/CARAMManager.hpp"

#include "rstl/construct.hpp"

CARAMToken::CARAMToken() {
  x0_ = 6;
  x4_ = NULL;
  x8_ = CARAMManager::GetInvalidAlloc();
  xc_ = 0;
  x10_ = CARAMManager::GetInvalidDMAHandle();
  x14_ = 0;
  x18_ = 0;
  x1c_24_ = false;
  InitiallyMoveToList();
}

CARAMToken::CARAMToken(void* ptr, uint len) {}

CARAMToken::CARAMToken(const CARAMToken& other)
: x0_(other.x0_)
, x4_(other.x4_)
, x8_(other.x8_)
, xc_(other.xc_)
, x10_(other.x10_)
, x14_(0)
, x18_(0)
, x1c_24_(other.x1c_24_) {
  const_cast< CARAMToken& >(other).MakeInvalid();
  InitiallyMoveToList();
}

CARAMToken::~CARAMToken() {
  if (x10_ != CARAMManager::GetInvalidDMAHandle() && !CARAMManager::CancelDMA(x10_)) {
    CARAMManager::WaitForDMACompletion(x10_);
  }

  RemoveFromList();
  CMemory::Free(x4_);
  CARAMManager::Free(x8_);
}

void CARAMToken::PostConstruct(void* ptr, uint len, int unk) {
  MoveToList(kS_One);
  x4_ = ptr;
  xc_ = len;
  x1c_24_ = unk == 0;
}

CARAMToken& CARAMToken::operator=(const CARAMToken& other) {
  if (&other == this) {
    return *this;
  }

  rstl::destroy(this);
  rstl::construct(this, other);
  return *this;
}


void CARAMToken::LoadToMRAM() {
  
}
