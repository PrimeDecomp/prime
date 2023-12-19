#include "NESemu/modwrapper.h"
#include "dolphin/os.h"

typedef void (*voidfunctionptr)(void); // pointer to function returning void
__declspec(section ".init") extern voidfunctionptr _ctors[];
__declspec(section ".init") extern voidfunctionptr _dtors[];

REL_EXPORT asm void _prolog(void) {
  fralloc
  lis r3, _ctors@ha
  addi r0, r3, _ctors@l
  mr r31, r0
  b @2
@1:
  mtctr r12
  bctrl
	addi r31, r31, 0x4
@2:
	lwz r12, 0x0(r31)
	cmplwi r12, 0x0
	bne+ @1

  bl ksNesInitModule

  frfree
	blr  
}

REL_EXPORT asm void _epilog(void) {
  fralloc
  lis r3, _dtors@ha
  addi r0, r3, _dtors@l
  mr r31, r0
  b @2
@1:
  mtctr r12
  bctrl
	addi r31, r31, sizeof(voidfunctionptr)
@2:
	lwz r12, 0x0(r31)
	cmplwi r12, 0x0
	bne+ @1

  frfree
	blr  
}

REL_EXPORT void _unresolved(void) { OSPanic("modwrapper.c\0\0\0", 0x3d, "ksNesEmulator unresolved"); }
