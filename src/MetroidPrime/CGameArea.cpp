#include "MetroidPrime/CGameArea.hpp"

#include "Kyoto/CDvdRequest.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "MetaRender/CCubeRenderer.hpp"

#define ROUND_UP_32(val) (((val) + 31) & ~31)

rstl::pair< rstl::auto_ptr< uchar >, int > GetScriptingMemoryAlways(const IGameArea& area) {
  SObjectTag tag('MREA', area.IGetAreaAssetId());

  rstl::auto_ptr< char > buf = rs_new char[0x60];
  CInputStream* resource =
      gpResourceFactory->GetResLoader().LoadNewResourceSync(tag, 0, 0x60, buf.get());
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
    x12c_postConstructed.reset(rs_new CPostConstructed());
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

CGameArea::CAreaFog::CAreaFog()
: x0_fogMode(kRFM_None)
, x4_rangeCur(0.f, 1024.f)
, xc_rangeTarget(x4_rangeCur)
, x14_rangeDelta(0.f, 0.f)
, x1c_colorCur(0.5f, 0.5f, 0.5f)
, x28_colorTarget(x1c_colorCur)
, x34_colorDelta(0.f) {}

void CGameArea::CAreaFog::DisableFog() { x0_fogMode = kRFM_None; }

bool CGameArea::CAreaFog::IsFogDisabled() const { return x0_fogMode == kRFM_None; }

void CGameArea::CAreaFog::SetFogExplicit(ERglFogMode mode, const CColor& color,
                                         const CVector2f& range) {
  x0_fogMode = mode;
  x1c_colorCur = x28_colorTarget = color.ToVector3f();
  x4_rangeCur = xc_rangeTarget = range;
}

void CGameArea::CAreaFog::FadeFog(const ERglFogMode mode, const CColor& color,
                                  const CVector2f& vec1, const float speed, const CVector2f& vec2) {
  if (x0_fogMode == kRFM_None) {
    x0_fogMode = mode;
    x1c_colorCur = x28_colorTarget = color.ToVector3f();
    x4_rangeCur = CVector2f(vec1.GetY(), vec1.GetY());
    xc_rangeTarget = vec1;
  } else {
    x0_fogMode = mode;
    x28_colorTarget = color.ToVector3f();
    xc_rangeTarget = vec1;
  }

  x34_colorDelta = speed;
  x14_rangeDelta = vec2;
}

void CGameArea::CAreaFog::RollFogOut(const float rangeDelta, const float colorDelta,
                                     const CColor& color) {
  x14_rangeDelta = CVector2f(rangeDelta, rangeDelta * 2.f);
  xc_rangeTarget = CVector2f(4096.f, 4096.f);
  x34_colorDelta = colorDelta;
  x28_colorTarget = color.ToVector3f();
}

void CGameArea::UpdateFog(const float dt) {
  if (!x12c_postConstructed->x10c4_areaFog.null()) {
    x12c_postConstructed->x10c4_areaFog->Update(dt);
  }
}

void CGameArea::CAreaFog::Update(const float dt) {
  if (x0_fogMode) {
    return;
  }

  if (x34_colorDelta <= 0.f && x14_rangeDelta == CVector2f(0.f, 0.f)) {
    return;
  }
}
void CGameArea::CAreaFog::SetCurrent() const {
  gpRender->SetWorldFog(x0_fogMode, x4_rangeCur.GetX(), x4_rangeCur.GetY(),
                        CColor(x1c_colorCur.GetX(), x1c_colorCur.GetY(), x1c_colorCur.GetZ(), 1.f));
}
