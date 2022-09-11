#ifndef __CCIRCULARBUFFER_HPP__
#define __CCIRCULARBUFFER_HPP__


#include <types.h>

class CCircularBuffer {
public:
    enum EOwnership {
        kOS_Owned,
        kOS_NotOwned
    };

    CCircularBuffer(void* buf, int len, EOwnership owned = kOS_NotOwned);
    bool IsWrappedMemory(int offset, int len);
    void* Alloc(int len);
    void Free(void* ptr, int len);
    int GetAllocatedAmount() const;
private:
    u8 x0_owned;
    void* x4_ptr;
    s32 x8_bufferLen;
    s32 xc_;
    s32 x10_nextFreeAddr;
    s32 x14_;
};
#endif // __CCIRCULARBUFFER_HPP__
