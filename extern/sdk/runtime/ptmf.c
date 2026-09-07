
typedef struct PTMF {
  long this_delta;  // delta to this pointer
  long vtbl_offset; // offset in vtable (-1: not a virtual function)
  union {
    void* func_addr;    //nonvirtual function address
    long ventry_offset; // of virtual function entry in vtable
  } func_data;
} PTMF;

const PTMF __ptmf_null = {0, 0, 0};

/* clang-format off */
asm void __ptmf_test(register PTMF* ptmf) {
  nofralloc

  lwz r5, PTMF.this_delta(ptmf)
  lwz r6, PTMF.vtbl_offset(ptmf)
  lwz r7, PTMF.func_data(ptmf)
  li r3, 1
  cmpwi cr0, r5, 0
  cmpwi cr6, r6, 0
  cmpwi cr7, r7, 0
  bnelr cr0
  bnelr cr6
  bnelr cr7
  li r3, 0
  blr
}

asm void __ptmf_scall(...) {
  nofralloc
  lwz r0, PTMF.this_delta(r12)
  lwz r11, PTMF.vtbl_offset(r12)
  lwz r12, PTMF.func_data(r12)
  add r3, r3, r0
  cmpwi r11, 0
  blt @1
  lwzx r12, r3, r12
  lwzx r12, r12, r11
@1 
  mtctr r12
  bctr
}
/* clang-format - on*/
