#ifndef __CCRC32_HPP__
#define __CCRC32_HPP__
#include "types.h"

class CCRC32 {
public:
    static u32 Calculate(const void* data, u32 length);
};

#endif // __CCRC32_HPP__
