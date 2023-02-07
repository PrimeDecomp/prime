#ifndef _DOLPHIN_HW_REGS
#define _DOLPHIN_HW_REGS

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __MWERKS__
vu16 __VIRegs[59] : 0xCC002000;
vu32 __PIRegs[12] : 0xCC003000;
vu16 __MEMRegs[64] : 0xCC004000;
vu16 __DSPRegs[32] : 0xCC005000;
vu32 __DIRegs[16] : 0xCC006000;
vu32 __SIRegs[64] : 0xCC006400;
vu32 __EXIRegs[16] : 0xCC006800;
vu32 __AIRegs[8] : 0xCC006C00;

#else
#define __VIRegs ((vu16*)0xCC002000)
#define __PIRegs ((vu32*)0xCC003000)
#define __MEMRegs ((vu16*)0xCC004000)
#define __DSPRegs ((vu16*)0xCC005000)
#define __DIRegs ((vu32*)0xCC006000)
#define __SIRegs ((vu32*)0xCC006400)
#define __EXIRegs ((vu32*)0xCC006800)
#define __AIRegs ((vu32*)0xCC006C00)
#endif

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_HW_REGS
