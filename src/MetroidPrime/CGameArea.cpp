#include "MetroidPrime/CGameArea.hpp"

#include "Kyoto/CDvdRequest.hpp"
#include "Kyoto/CResFactory.hpp"


#define ROUND_UP_32(val) (((val) + 31) & ~31)

rstl::pair< rstl::auto_ptr< uchar >, int > GetScriptingMemoryAlways(const IGameArea& area) {
  SObjectTag tag('MREA', area.IGetAreaAssetId());

  rstl::auto_ptr< char > buf = new char[0x60];
  CInputStream* resource = gpResourceFactory->GetResLoader().LoadNewResourceSync(tag, 0, 0x60, buf.get());
  if (!resource || *(uint*)(buf.get()) != 0xdeadbeef) {
    return rstl::pair< rstl::auto_ptr< uchar >, int >(nullptr, 0);
  }
}

CGameArea::CPostConstructed::CPostConstructed() {}
CGameArea::CPostConstructed::~CPostConstructed() {}

const CTransform4f& CGameArea::IGetTM() const { return xc_transform; }

CAssetId CGameArea::IGetStringTableAssetId() const { return x8_nameSTRG; }

uint CGameArea::IGetNumAttachedAreas() const { return x8c_attachedAreaIndices.size(); }

TAreaId CGameArea::IGetAttachedAreaId(int i) const { return x8c_attachedAreaIndices[i]; }

bool CGameArea::IIsActive() const { return xf0_25_active; }

CAssetId CGameArea::IGetAreaAssetId() const { return x84_mrea; }

int CGameArea::IGetAreaSaveId() const { return x88_areaId; }

rstl::pair< rstl::auto_ptr< uchar >, int > CGameArea::IGetScriptingMemoryAlways() const {
  return GetScriptingMemoryAlways(*this);
}

bool CGameArea::StartStreamingMainArea() {
  if (xf0_24_postConstructed)
    return false;

  switch (xf4_phase) {
  case kP_LoadHeader: {
    x110_mreaSecBufs.reserve(3);
    AllocNewAreaData(0, 96);
    x12c_postConstructed.Set(new CPostConstructed());
    xf4_phase = kP_LoadSecSizes;
    break;
  }
  case kP_LoadSecSizes: {
    CullDeadAreaRequests();
    if (!xf8_loadTransactions.empty())
      break;
    VerifyHeader();
    AllocNewAreaData(x110_mreaSecBufs[0].second, ROUND_UP_32(GetNumPartSizes() * 4));
    xf4_phase = kP_ReserveSections;
    break;
  }
  case kP_ReserveSections: {
    CullDeadAreaRequests();
    if (xf8_loadTransactions.empty()) {
      x110_mreaSecBufs.reserve(GetNumPartSizes() + 2);
      x124_secCount = 0;
      x128_mreaDataOffset = x110_mreaSecBufs[0].second + x110_mreaSecBufs[1].second;
      xf4_phase = kP_LoadDataSections;
    }
    break;
  }
  case kP_LoadDataSections: {
    CullDeadAreaRequests();

    int totalSz = 0;
    int secCount = x124_secCount;
    int partSizes = GetNumPartSizes();
    SObjectTag tag('MREA', x84_mrea);

    //   for (uint i = 0; i < secCount; ++i)
    //     totalSz +=
    //     CBasics::SwapBytes(reinterpret_cast<u32*>(x110_mreaSecBufs[1].first.get())[i]);

    //   AllocNewAreaData(x128_mreaDataOffset, totalSz);

    //   m_resolvedBufs.reserve(secCount);
    //   m_resolvedBufs.emplace_back(x110_mreaSecBufs[0].first.get(), x110_mreaSecBufs[0].second);
    //   m_resolvedBufs.emplace_back(x110_mreaSecBufs[1].first.get(), x110_mreaSecBufs[1].second);

    //   uint curOff = 0;
    //   for (uint i = 0; i < secCount; ++i) {
    //     uint size =
    //     CBasics::SwapBytes(reinterpret_cast<u32*>(x110_mreaSecBufs[1].first.get())[i]);
    //     m_resolvedBufs.emplace_back(x110_mreaSecBufs[2].first.get() + curOff, size);
    //     curOff += size;
    //   }

    int dif = partSizes - secCount;
    int targetSecCount = secCount;
    for (int i = secCount; i < partSizes; ++i) {
      int size = x110_mreaSecBufs[i].second;
      if (targetSecCount != secCount && 0x10000 < size + totalSz)
        break;
      totalSz += size;
      targetSecCount += 1;
    }

    rstl::auto_ptr< char > buf = (char*)CMemory::Alloc(totalSz, IAllocator::kHI_RoundUpLen);
    xf8_loadTransactions.push_back(
        rstl::rc_ptr< CDvdRequest >(gpResourceFactory->GetResLoader().LoadResourcePartAsync(
            tag, x128_mreaDataOffset, totalSz, buf.get())));
    x128_mreaDataOffset += totalSz;
    x110_mreaSecBufs.push_back(rstl::pair< rstl::auto_ptr< char >, int >(buf, 0));

    for (int i = secCount + 1; i < targetSecCount; ++i) {
      x110_mreaSecBufs.push_back(rstl::pair< rstl::auto_ptr< char >, int >(nullptr, 0));
    }
    x124_secCount = targetSecCount;
    if (targetSecCount == partSizes) {
      x120_unk = x128_mreaDataOffset;
      xf4_phase = kP_WaitForFinish;
    }
    break;
  }
  case kP_WaitForFinish: {
    CullDeadAreaRequests();
    if (xf8_loadTransactions.empty())
      return false;
    break;
  }
  default:
    break;
  }

  return true;
}
