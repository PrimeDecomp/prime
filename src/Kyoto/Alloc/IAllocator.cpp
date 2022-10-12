#include "Kyoto/Alloc/IAllocator.hpp"

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Basics/COsContext.hpp"

IAllocator::SMetrics::SMetrics(uint heapSize, uint unk1, uint unk2, uint unk3, uint unk4,
                               uint heapSize2, uint unk5, uint unk6, uint unk7, uint unk8,
                               uint unk9, uint smallAllocNumAllocs, uint smallAllocAllocatedSize,
                               uint smallAllocRemainingSize, uint mediumAllocNumAllocs,
                               uint mediumAllocAllocatedSize, uint mediumAllocBlocksAvailable,
                               uint unk10, uint unk11, uint unk12, uint mediumAllocTotalAllocated,
                               uint fakeStatics)
: x0_heapSize(heapSize)
, x4_(unk1)
, x8_(unk2)
, xc_(unk3)
, x10_(unk4)
, x14_heapSize2(heapSize2)
, x18_(unk5)
, x1c_(unk6)
, x20_(unk7)
, x24_(unk8)
, x28_(unk9)
, x2c_smallNumAllocs(smallAllocNumAllocs)
, x30_smallAllocatedSize(smallAllocAllocatedSize)
, x34_smallRemainingSize(smallAllocRemainingSize)
, x38_mediumNumAllocs(mediumAllocNumAllocs)
, x3c_mediumAllocatedSize(mediumAllocAllocatedSize)
, x40_mediumBlocksAvailable(mediumAllocBlocksAvailable)
, x44_(unk10)
, x48_(unk11)
, x4c_(unk12)
, x50_mediumTotalAllocated(mediumAllocTotalAllocated)
, x54_fakeStatics(fakeStatics) {}

IAllocator::~IAllocator() {}
