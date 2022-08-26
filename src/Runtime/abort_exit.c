#include <stdlib.h>

void __destroy_global_chain(void);
void _ExitProcess(void);

extern void (*_dtors[])(void);

static void (*__console_exit)(void);
void (*__stdio_exit)(void);
static int __atexit_curr_func;
int __aborting;

static void (*__atexit_funcs[64])(void);

void exit(int status) {
  int i;
  void (**dtor)(void);

  if (!__aborting) {
    __destroy_global_chain();
    dtor = _dtors;
    while (*dtor != NULL) {
      (*dtor)();
      dtor++;
    }
    if (__stdio_exit != NULL) {
      __stdio_exit();
      __stdio_exit = NULL;
    }
  }
  while (__atexit_curr_func > 0)
    __atexit_funcs[--__atexit_curr_func]();
  if (__console_exit != NULL) {
    __console_exit();
    __console_exit = NULL;
  }
  _ExitProcess();
}
