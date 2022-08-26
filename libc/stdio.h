#ifndef _STDIO_H_
#define _STDIO_H_

#include <stddef.h>
#include <stdarg.h>

#ifdef __cplusplus
extern "C" {
#endif

#define __ungetc_buffer_size 2

typedef unsigned long __file_handle;
typedef unsigned long fpos_t;
typedef unsigned short wchar_t;

enum __file_kinds { __closed_file, __disk_file, __console_file, __unavailable_file };
enum __file_orientation { __unoriented, __char_oriented, __wide_oriented };

typedef struct {
  unsigned int open_mode : 2;
  unsigned int io_mode : 3;
  unsigned int buffer_mode : 2;
  unsigned int file_kind : 3;
  unsigned int file_orientation : 2;
  unsigned int binary_io : 1;
} __file_modes;

typedef struct {
  unsigned int io_state : 3;
  unsigned int free_buffer : 1;
  unsigned char eof;
  unsigned char error;
} __file_state;

typedef void* __ref_con;
typedef int (*__pos_proc)(__file_handle file, fpos_t* position, int mode, __ref_con ref_con);
typedef int (*__io_proc)(__file_handle file, unsigned char* buff, size_t* count, __ref_con ref_con);
typedef int (*__close_proc)(__file_handle file);

typedef struct _FILE {
  __file_handle handle;
  __file_modes mode;
  __file_state state;
  unsigned char is_dynamically_allocated;
  unsigned char char_buffer;
  unsigned char char_buffer_overflow;
  unsigned char ungetc_buffer[__ungetc_buffer_size];
  wchar_t ungetwc_buffer[__ungetc_buffer_size];
  unsigned long position;
  unsigned char* buffer;
  unsigned long buffer_size;
  unsigned char* buffer_ptr;
  unsigned long buffer_len;
  unsigned long buffer_alignment;
  unsigned long saved_buffer_len;
  unsigned long buffer_pos;
  __pos_proc position_proc;
  __io_proc read_proc;
  __io_proc write_proc;
  __close_proc close_proc;
  __ref_con ref_con;
  struct _FILE* next_file_struct;
} FILE;

int puts(const char* s);
int printf(const char*, ...);
int sprintf(char* s, const char* format, ...);
int vprintf(const char* format, va_list arg);
int vsprintf(char* s, const char* format, va_list arg);

#ifdef __cplusplus
}
#endif

#endif
