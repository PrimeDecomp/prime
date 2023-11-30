#include "musyx/hardware.h"

void* salMalloc(u32 len) { return salHooks.malloc(len); }

void salFree(void* addr) { salHooks.free(addr); }
