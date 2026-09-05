extern void (*__stdio_exit)(void);
void __close_all(void);

void __stdio_atexit(void) { __stdio_exit = __close_all; }
