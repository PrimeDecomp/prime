#include "Kyoto/Graphics/CGraphicsPalette.hpp"

#include "Kyoto/Alloc/CMemorySys.hpp"
#include "Kyoto/CFrameDelayedKiller.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

#include "dolphin/gx/GXEnum.h"
#include "dolphin/gx/GXTexture.h"
#include "dolphin/os/OSCache.h"

uint CGraphicsPalette::sCurrentFrameCount = 0;

CGraphicsPalette::CGraphicsPalette(EPaletteFormat format, int numEntries)
: mFmt(format)
#if NONMATCHING
, mFrameLoaded(0)
#endif
, mEntryCount(numEntries)
, mEntries((ushort*)CMemory::Alloc(numEntries * sizeof(ushort), IAllocator::kHI_RoundUpLen))
#if NONMATCHING
, mTlutObj()
#endif
, mLocked(false) {
  GXInitTlutObj(&mTlutObj, mEntries.get(), format_to_format(mFmt), mEntryCount);
}

CGraphicsPalette::CGraphicsPalette(CInputStream& in)
: mFmt(EPaletteFormat(in.ReadLong()))
#if NONMATCHING
, mFrameLoaded(0)
#endif
, mEntryCount(in.Get< short >() * in.Get< short >())
, mEntries((ushort*)CMemory::Alloc(mEntryCount * sizeof(ushort), IAllocator::kHI_RoundUpLen))
#if NONMATCHING
, mTlutObj()
#endif
, mLocked(false) {
  in.Get(reinterpret_cast< uchar* >(mEntries.get()), mEntryCount * sizeof(ushort));
  GXInitTlutObj(&mTlutObj, mEntries.get(), format_to_format(mFmt), mEntryCount);
  DCFlushRange(mEntries.get(), mEntryCount * sizeof(ushort));
}

CGraphicsPalette::~CGraphicsPalette() {
  uint frameDiff = sCurrentFrameCount - mFrameLoaded;
  if (frameDiff < 2) {
    CFrameDelayedKiller::ScheduleDeletion(frameDiff > 0 ? CFrameDelayedKiller::kWhichFrame_ThisFrame : CFrameDelayedKiller::kWhichFrame_NextFrame, mEntries.release());
  }
}

void CGraphicsPalette::Load() const {
  GXLoadTlut(&mTlutObj, GX_TLUT0);
  mFrameLoaded = sCurrentFrameCount;
}

void CGraphicsPalette::UnLock() {
  DCStoreRange(mEntries.get(), mEntryCount * sizeof(ushort));
  GXInitTlutObj(&mTlutObj, mEntries.get(), format_to_format(mFmt), mEntryCount);
  DCFlushRange(mEntries.get(), mEntryCount * sizeof(ushort));
  mLocked = false;
}
