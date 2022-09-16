#include <Kyoto/Audio/CSfxHandle.hpp>

uint CSfxHandle::mRefCount = 0;
CSfxHandle::CSfxHandle(uint value) : mID((++mRefCount << 14) | (value & 0xFFF)) {
}
