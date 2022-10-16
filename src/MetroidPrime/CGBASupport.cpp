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

bool CGBASupport::IsReady() {
 return CheckReadyStatus();
}

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
      if (GBAGetStatus(x40_siChan, &x3c_status) == 1) {
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
