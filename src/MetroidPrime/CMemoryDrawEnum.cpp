//#include <MetroidPrime/CMemoryDrawEnum.hpp>
#include <Kyoto/Alloc/IAllocator.hpp>


/* ODR strikes again! */
IAllocator::SMetrics::SMetrics(const SMetrics& other)
: x0_heapSize(other.x0_heapSize)
, x4_(other.x4_)
, x8_(other.x8_)
, xc_(other.xc_)
, x10_(other.x10_)
, x14_heapSize2(other.x14_heapSize2)
, x18_(other.x18_)
, x1c_(other.x1c_)
, x20_(other.x20_)
, x24_(other.x24_)
, x28_(other.x28_)
, x2c_smallNumAllocs(other.x2c_smallNumAllocs)
, x30_smallAllocatedSize(other.x30_smallAllocatedSize)
, x34_smallRemainingSize(other.x34_smallRemainingSize)
, x38_mediumNumAllocs(other.x38_mediumNumAllocs)
, x3c_mediumAllocatedSize(other.x3c_mediumAllocatedSize)
, x40_mediumBlocksAvailable(other.x40_mediumBlocksAvailable)
, x44_(other.x44_)
, x48_(other.x48_)
, x4c_(other.x4c_)
, x50_mediumTotalAllocated(other.x50_mediumTotalAllocated)
, x54_fakeStatics(other.x54_fakeStatics) {}
