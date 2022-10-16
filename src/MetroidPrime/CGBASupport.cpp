#include "MetroidPrime/CGBASupport.hpp"
#include "Kyoto/Alloc/CCallStack.hpp"
#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Basics/CBasics.hpp"
#include "dolphin/gba.h"
#include "dolphin/os.h"
#include "dolphin/os/OSSerial.h"
#include "rstl/math.hpp"

extern "C" {
void nullsub_130() {}
}

const uint MAGIC = 0x414d5445;

CGBASupport::CGBASupport() : CDvdFile("client_pad.bin") {
  x28_fileSize = (Length() + 0x1fu) & 0xffffffe0u;
  x2c_buffer =
      (uchar*)CMemory::Alloc(x28_fileSize, IAllocator::kHI_RoundUpLen, IAllocator::kSC_Unk1,
                             IAllocator::kTP_Heap, CCallStack(-1, "??(??)"));
  x30_dvdReq = this->SyncRead(x2c_buffer, x28_fileSize);
  x34_phase = kP_LoadClientPad;
  x38_timeout = 0.f;
  x3c_status = 0;
  x40_siChan = -1;
  x44_fusionLinked = false;
  x45_fusionBeat = false;
  GBAInit();
  g_GBA = this;
}

CGBASupport::~CGBASupport() {
  g_GBA = nullptr;

  if (x30_dvdReq) {
    x30_dvdReq->PostCancelRequest(true);
  }
  if (x2c_buffer) {
    CMemory::Free(x2c_buffer);
  }
}

void CGBASupport::InitializeSupport() {
  x34_phase = kP_Standby;
  x38_timeout = 0.f;
  x3c_status = 0;
  x40_siChan = -1;
  x44_fusionLinked = false;
  x45_fusionBeat = false;
}

void CGBASupport::StartLink() {
  x34_phase = kP_StartProbeTimeout;
  x40_siChan = -1;
}

inline bool CGBASupport::CheckReadyStatus() {
  if (x34_phase != kP_LoadClientPad)
    return true;
  if (x30_dvdReq->IsComplete()) {
    if (x30_dvdReq) {
      x30_dvdReq->PostCancelRequest(true);
    }
    x30_dvdReq = nullptr;
    x34_phase = kP_Standby;
    uchar* buff = x2c_buffer;
    u32 tick = OSGetTick();
    buff[0xc8] = (tick >> 0);
    buff[0xc9] = (tick >> 8);
    buff[0xca] = (tick >> 16);
    buff[0xcb] = (tick >> 24);
    buff[0xaf] = 'E'; // ??? 0x45
    buff[0xbd] = 0xc9;
    return true;
  }
  return false;
}

bool CGBASupport::IsReady() { return CheckReadyStatus(); }

void CGBASupport::Update(float dt) {
  switch (x34_phase) {
  case kP_LoadClientPad:
    CheckReadyStatus();
    break;

  case kP_StartProbeTimeout:
    x38_timeout = 4.f;
    x34_phase = kP_PollProbe;
    // [[fallthrough]];

  case kP_PollProbe:
    int channel = 1;
    do {
      uint result = SIProbe(channel);
      if (result == 0x40000) {
        x40_siChan = channel;
        x34_phase = kP_StartJoyBusBoot;
        x38_timeout = 4.f;
        goto end_switch;
      }
      channel++;
    } while (channel < 4);
    float newT = rstl::max_val(0.f, x38_timeout - dt);
    x38_timeout = newT;
    if (x38_timeout == 0.f) {
      x34_phase = kP_Failed;
    }
    break;

  case kP_StartJoyBusBoot:
    x34_phase = kP_PollJoyBusBoot;
    GBAJoyBootAsync(x40_siChan, x40_siChan << 1, kBM_unk2, x2c_buffer, Length(), &x3c_status,
                    &nullsub_130);
    break;

  case kP_PollJoyBusBoot:
    EGBAProcessStatus status = GBAGetProcessStatus(x40_siChan, &x3c_status);
    if (status != kBM_unk2) {
      if (GBAGetStatus(x40_siChan, &x3c_status) == kGSF_failure) {
        x34_phase = kP_Failed;
      } else {
        x38_timeout = 4.f;
        x34_phase = kP_DataTransfer;
      }
    }
    break;
  case kP_DataTransfer:
    if (PollResponse()) {
      x34_phase = kP_Complete;
      break;
    }
    x38_timeout = rstl::max_val(0.f, x38_timeout - dt);
    if (x38_timeout == 0.f)
      x34_phase = kP_Failed;
    break;
  }
end_switch:;
}

inline uchar CalculateFusionJBusChecksum(const void* dataPtr) {
  const uchar* data = reinterpret_cast< const uchar* >(dataPtr);
  uint sum = -1;
  uint i = 3;
  do {
    uchar ch = *data++;
    sum ^= ch;
    for (int j = 0; j < 8; ++j) {
      if ((sum & 1)) {
        sum >>= 1;
        sum ^= 0xb010;
      } else
        sum >>= 1;
    }
  } while (--i);
  return sum;
}

inline uint FusionSwapBytes(uint value) {
  return (value >> 24) | (value >> 8 & 0xff00) | (value << 8 & 0xff0000) | (value << 24);
}

bool CGBASupport::PollResponse() {
  uchar gbaStatus;
  uint unk;

  // Not sure why this is called twice
  if (GBAReset(x40_siChan, &gbaStatus) == kGSF_failure &&
      GBAReset(x40_siChan, &gbaStatus) == kGSF_failure) {
    return false;
  }
  if (GBAGetStatus(x40_siChan, &gbaStatus) == kGSF_failure) {
    return false;
  }
  if (gbaStatus != 0x28) {
    return false;
  }
  uint magic;
  if (GBARead(x40_siChan, &magic, &gbaStatus) == kGSF_failure) {
    return false;
  }
  if (magic != 0x414d5445) { // "AMTE"
    return false;
  }
  if (GBAGetStatus(x40_siChan, &gbaStatus) == kGSF_failure) {
    return false;
  }
  if (gbaStatus != 0x20) {
    return false;
  }
  if (GBAWrite(x40_siChan, &MAGIC, &gbaStatus) == kGSF_failure) {
    return false;
  }
  if (GBAGetStatus(x40_siChan, &gbaStatus) == kGSF_failure) {
    return false;
  }
  if ((gbaStatus & 0x30) != 0x30) {
    return false;
  }
  uint start = OSGetTick();
  do {
    uint current = OSGetTick();
    if (OSTicksToMicroseconds(current - start) > 500) {
      goto end;
    }
  } while ((GBAGetStatus(x40_siChan, &gbaStatus) == kGSF_failure || (gbaStatus & 0x8) == 0) ||
           (GBAGetStatus(x40_siChan, &gbaStatus) != kGSF_success || gbaStatus != 0x38));

  uint read;
  uchar fusionStatus[4];
  if (GBARead(x40_siChan, &read, &gbaStatus) != kGSF_success) {
    return false;
  }
  // fusionStatus = FusionSwapBytes(read);
  if (fusionStatus[3] != CalculateFusionJBusChecksum(&fusionStatus)) {
    return;
  }

  x44_fusionLinked = (fusionStatus[2] & 0x2) != 0;
  // if (x44_fusionLinked && (bytes[2] & 0x1) != 0)
    // x45_fusionBeat = true;

end:
  return true;
}
