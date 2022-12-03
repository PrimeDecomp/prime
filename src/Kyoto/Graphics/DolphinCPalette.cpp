#include "Kyoto/Graphics/CGraphicsPalette.hpp"

#include "Kyoto/Alloc/CMemorySys.hpp"
#include "Kyoto/CFrameDelayedKiller.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "dolphin/os/OSCache.h"

uint CGraphicsPalette::sCurrentFrameCount = 0;

CGraphicsPalette::CGraphicsPalette(EPaletteFormat format, int numEntries)
: x0_fmt(format)
, x8_entryCount(numEntries)
, xc_entries((ushort*)CMemory::Alloc(numEntries * sizeof(ushort), IAllocator::kHI_RoundUpLen))
, x1c_locked(false) {
  GXInitTlutObj(&x10_tlutObj, xc_entries.get(), (GXTlutFmt)(x0_fmt), x8_entryCount);
}

CGraphicsPalette::CGraphicsPalette(CInputStream& in)
: x0_fmt(EPaletteFormat(in.ReadLong()))
, x8_entryCount(in.Get< short >() * in.Get< short >())
, xc_entries((ushort*)CMemory::Alloc(x8_entryCount * sizeof(ushort), IAllocator::kHI_RoundUpLen))
, x1c_locked(false) {
  in.Get(reinterpret_cast< uchar* >(xc_entries.get()), x8_entryCount * sizeof(ushort));
  GXInitTlutObj(&x10_tlutObj, xc_entries.get(), static_cast< GXTlutFmt >(x0_fmt), x8_entryCount);
  DCFlushRange(xc_entries.get(), x8_entryCount * sizeof(ushort));
}

CGraphicsPalette::~CGraphicsPalette() {
  uint frameDiff = sCurrentFrameCount - x4_frameLoaded;
  if (frameDiff < 2) {
    CFrameDelayedKiller::sub_8036cc1c(frameDiff == 0, xc_entries.release());
  }
}

void CGraphicsPalette::Load() const {
  GXLoadTlut(&x10_tlutObj, GX_TLUT0);
  x4_frameLoaded = sCurrentFrameCount;
}

void CGraphicsPalette::UnLock() {
  DCStoreRange(xc_entries.get(), x8_entryCount * sizeof(ushort));
  GXInitTlutObj(&x10_tlutObj, xc_entries.get(), static_cast< GXTlutFmt >(x0_fmt), x8_entryCount);
  DCFlushRange(xc_entries.get(), x8_entryCount * sizeof(ushort));
  x1c_locked = false;
}
