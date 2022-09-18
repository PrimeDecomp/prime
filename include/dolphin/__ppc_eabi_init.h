#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif
__declspec(section ".init") void __init_hardware(void);
__declspec(section ".init") void __flush_cache(register void* address, register unsigned int size);

void __init_user(void);
void __init_cpp(void);

#ifdef __cplusplus
}
#endif
