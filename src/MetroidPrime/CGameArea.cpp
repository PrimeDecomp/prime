#include "MetroidPrime/CGameArea.hpp"

#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CDvdRequest.hpp"

#define ROUND_UP_32(val) (((val) + 31) & ~31)

bool CGameArea::StartStreamingMainArea() {
  if (xf0_24_postConstructed)
    return false;

  switch (xf4_phase) {
  case kP_LoadHeader: {
    x110_mreaSecBufs.reserve(3);
    AllocNewAreaData(0, 96);
    x12c_postConstructed = new CPostConstructed();
    xf4_phase = kP_LoadSecSizes;
    break;
  }
  case kP_LoadSecSizes: {
    CullDeadAreaRequests();
    if (xf8_loadTransactions.size())
      break;
    VerifyHeader();
    AllocNewAreaData(x110_mreaSecBufs[0].second, ROUND_UP_32(GetNumPartSizes() * 4));
    xf4_phase = kP_ReserveSections;
    break;
  }
  case kP_ReserveSections: {
    CullDeadAreaRequests();
    if (xf8_loadTransactions.size() == 0) {
      x110_mreaSecBufs.reserve(GetNumPartSizes() + 2);
      x124_secCount = 0;
      x128_mreaDataOffset = x110_mreaSecBufs[0].second + x110_mreaSecBufs[1].second;
      xf4_phase = kP_LoadDataSections;
    }
    break;
  }
  case kP_LoadDataSections: {
    CullDeadAreaRequests();

    uint totalSz = 0;
    uint secCount = GetNumPartSizes();
  //   for (uint i = 0; i < secCount; ++i)
  //     totalSz += CBasics::SwapBytes(reinterpret_cast<u32*>(x110_mreaSecBufs[1].first.get())[i]);

  //   AllocNewAreaData(x128_mreaDataOffset, totalSz);

  //   m_resolvedBufs.reserve(secCount);
  //   m_resolvedBufs.emplace_back(x110_mreaSecBufs[0].first.get(), x110_mreaSecBufs[0].second);
  //   m_resolvedBufs.emplace_back(x110_mreaSecBufs[1].first.get(), x110_mreaSecBufs[1].second);

  //   uint curOff = 0;
  //   for (uint i = 0; i < secCount; ++i) {
  //     uint size = CBasics::SwapBytes(reinterpret_cast<u32*>(x110_mreaSecBufs[1].first.get())[i]);
  //     m_resolvedBufs.emplace_back(x110_mreaSecBufs[2].first.get() + curOff, size);
  //     curOff += size;
  //   }

    SObjectTag tag('MREA', x84_mrea);
    void* buf = CMemory::Alloc(totalSz, IAllocator::kHI_RoundUpLen);
    xf8_loadTransactions.push_back(
      rstl::rc_ptr< CDvdRequest >(gpResourceFactory->GetResLoader().LoadResourcePartAsync(tag, x128_mreaDataOffset, totalSz, buf))
    );
    x128_mreaDataOffset += totalSz;
    // x110_mreaSecBufs.push_back(buf);

    xf4_phase = kP_WaitForFinish;
    break;
  }
  case kP_WaitForFinish: {
    CullDeadAreaRequests();
    if (xf8_loadTransactions.size())
      break;
    return false;
  }
  default:
    break;
  }

  return true;
}
