#include "MetroidPrime/CGBASupport.hpp"
#include "Kyoto/Alloc/CCallStack.hpp"
#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Basics/CBasics.hpp"
#include "dolphin/gba.h"
#include "dolphin/os.h"
#include "dolphin/os/OSSerial.h"

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

inline bool CGBASupport::IsReady() {
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

void CGBASupport::Update(float dt) {
  switch (x34_phase) {
  case kP_LoadClientPad:
    IsReady();
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
        break;
      }
      channel++;
    } while (channel < 4);
    x34_phase = kP_StartJoyBusBoot;
    // [[fallthrough]];

  case kP_StartJoyBusBoot:
    x34_phase = kP_PollJoyBusBoot;
    // if (!g_JbusEndpoint ||
        // g_JbusEndpoint->GBAJoyBootAsync(x40_siChan * 2, 2, x2c_buffer.get(), x28_fileSize,
        //                                 &x3c_status, JoyBootDone) != jbus::GBA_READY) {
      // x34_phase = kP_Failed;
    // }
    break;

  case kP_PollJoyBusBoot:
    u8 percent;
    // if (g_JbusEndpoint && g_JbusEndpoint->GBAGetProcessStatus(percent) == jbus::GBA_BUSY)
    //   break;
    // if (!g_JbusEndpoint || g_JbusEndpoint->GBAGetStatus(&x3c_status) == jbus::GBA_NOT_READY) {
    //   x34_phase = kP_Failed;
    //   break;
    // }
    x38_timeout = 4.f;
    x34_phase = kP_DataTransfer;
    break;

  case kP_DataTransfer:
    if (PollResponse()) {
      x34_phase = kP_Complete;
      break;
    }
    // x38_timeout = std::max(0.f, x38_timeout - dt);
    if (x38_timeout == 0.f)
      x34_phase = kP_Failed;
    break;

  default:
    break;
  }
}
