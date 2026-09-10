#ifndef _MEMORYCOPY
#define _MEMORYCOPY

#include <string.h>

// MWCC's intrinsic expands constant-sized copies inline. Use (memcpy)(...) for
// runtime-sized copies, which need the C library function.
#ifdef __MWERKS__
#define memcpy(dest, src, size) __memcpy((dest), (src), (size))
#endif

#endif // _MEMORYCOPY
