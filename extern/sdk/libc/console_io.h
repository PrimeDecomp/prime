#ifndef _CONSOLE_IO
#define _CONSOLE_IO

#include "stddef.h"
#include "file_struc.h"

#ifdef __cplusplus
extern "C" {
#endif

int __write_console(__file_handle handle, unsigned char * buffer, size_t * count, __idle_proc idle_proc);

#ifdef __cplusplus
}
#endif

#endif // _CONSOLE_IO
