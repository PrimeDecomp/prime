#include "ansi_files.h"

static unsigned char stdin_buff[0x100];
static unsigned char stdout_buff[0x100];
static unsigned char stderr_buff[0x100];

extern int fclose(FILE*);
extern int __read_console(__file_handle file, unsigned char* buff, size_t* count,
                          __idle_proc idle_proc);
extern int __write_console(__file_handle file, unsigned char* buff, size_t* count,
                           __idle_proc idle_proc);
extern int __close_console(__file_handle file);

FILE __files[4] = {
    {0,
     {0, 1, 1, 2, 0},
     {0, 0, 0, 0},
     0,
     0,
     0,
     {0, 0},
     {0, 0},
     0,
     stdin_buff,
     sizeof(stdin_buff),
     stdin_buff,
     0,
     0,
     0,
     0,
     NULL,
     &__read_console,
     &__write_console,
     &__close_console,
     0,
     &__files[1]},
    {1,
     {0, 2, 1, 2, 0},
     {0, 0, 0, 0},
     0,
     0,
     0,
     {0, 0},
     {0, 0},
     0,
     stdout_buff,
     sizeof(stdout_buff),
     stdout_buff,
     0,
     0,
     0,
     0,
     NULL,
     &__read_console,
     &__write_console,
     &__close_console,
     0,
     &__files[2]},
    {2,
     {0, 2, 0, 2, 0},
     {0, 0, 0, 0},
     0,
     0,
     0,
     {0, 0},
     {0, 0},
     0,
     stderr_buff,
     sizeof(stderr_buff),
     stderr_buff,
     0,
     0,
     0,
     0,
     NULL,
     &__read_console,
     &__write_console,
     &__close_console,
     0,
     &__files[3]},
};

void __close_all() {
  FILE* p = &__files[0];
  FILE* plast;

  // __begin_critical_region(2);

  while (p != NULL) {
    if (p->mode.file_kind != __closed_file) {
      fclose(p);
    }

    plast = p;
    p = p->next_file_struct;
    if (plast->is_dynamically_allocated)
      free(plast);
    else {
      plast->mode.file_kind = __unavailable_file;
      if ((p != NULL) && p->is_dynamically_allocated)
        plast->next_file_struct = NULL;
    }
  }

  // __end_critical_region(2);
}

int __flush_all() {
  int retval = 0;
  FILE* __stream;
  __stream = &__files[0];
  while (__stream) {
    if ((__stream->mode.file_kind) && (fflush(__stream))) {
      retval = -1;
    }
    __stream = __stream->next_file_struct;
  };
  return retval;
}
