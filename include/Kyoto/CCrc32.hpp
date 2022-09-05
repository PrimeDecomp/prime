#ifndef __CCRC32_HPP__
#define __CCRC32_HPP__
#include "types.h"

class CCRC32 {
public:
    static uint Calculate(const void* data, uint length);
};

#endif // __CCRC32_HPP__
