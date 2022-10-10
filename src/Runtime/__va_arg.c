typedef struct {
  char gpr;
  char fpr;
  char reserved[2];
  char* input_arg_area;
  char* reg_save_area;
} va_list[1];

typedef enum {
  ARGPOINTER,
  WORD,
  DOUBLEWORD,
  REAL,
} _va_arg_type;

#define ALIGN(addr, amount) (((unsigned int)(addr) + ((amount)-1)) & ~((amount)-1))

void* __va_arg(va_list ap, _va_arg_type type) {
  char* addr;
  char* curGprPtr = &(ap->gpr);
  int curGpr = ap->gpr;
  int max = 8;
  int size = 4;
  int inc = 1;
  int even = 0;
  int fprOffset = 0;
  int regSize = 4;

  if (type == 3) {
    curGprPtr = &(ap->fpr);
    curGpr = ap->fpr;
    size = 8;
    fprOffset = 8 * 4;
    regSize = 8;
  }
  if (type == 2) {
    size = 8;
    max = max - 1;
    if (curGpr & 1)
      even = 1;
    inc = 2;
  }
  if (curGpr < max) {
    curGpr += even;
    addr = ap->reg_save_area + fprOffset + (curGpr * regSize);
    *curGprPtr = curGpr + inc;
  } else {
    *curGprPtr = 8;
    addr = ap->input_arg_area;
    addr = (char*)ALIGN(addr, size);
    ap->input_arg_area = addr + size;
  }
  if (type == ARGPOINTER)
    addr = *((char**)addr);

  return addr;
}
