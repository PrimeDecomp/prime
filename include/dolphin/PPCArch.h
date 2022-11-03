#ifndef _DOLPHIN_PPCARCH
#define _DOLPHIN_PPCARCH

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif
#define MSR_IR 0x00000020
#define MSR_DR 0x00000010
#define L2CR_L2E 0x80000000
#define L2CR_L2PE 0x40000000
#define L2CR_L2SIZ_256K 0x10000000
#define L2CR_L2SIZ_512K 0x20000000
#define L2CR_L2SIZ_1M 0x30000000
#define L2CR_L2CLK_1_0 0x02000000
#define L2CR_L2CLK_1_5 0x04000000
#define L2CR_L2CLK_2_0 0x08000000
#define L2CR_L2CLK_2_5 0x0A000000
#define L2CR_L2CLK_3_0 0x0C000000
#define L2CR_RAM_FLOW_THRU_BURST 0x00000000
#define L2CR_RAM_PIPELINE_BURST 0x01000000
#define L2CR_RAM_PIPELINE_LATE 0x01800000
#define L2CR_L2I 0x00200000

#define SRR1_DMA_BIT 0x00200000
#define SRR1_L2DP_BIT 0x00100000
#define HID0_ICE 0x00008000
#define HID0_DCE 0x00004000
#define HID2_DCHERR 0x00800000
#define HID2_DNCERR 0x00400000
#define HID2_DCMERR 0x00200000
#define HID2_DQOERR 0x00100000
#define HID2_DCHEE 0x00080000
#define HID2_DNCEE 0x00040000
#define HID2_DCMEE 0x00020000
#define HID2_DQOEE 0x00010000

u32 PPCMfmsr();
void PPCMtmsr(u32 newMSR);
u32 PPCOrMsr(u32 value);
u32 PPCMfhid0();
void PPCMthid0(u32 newHID0);
u32 PPCMfl2cr();
void PPCMtl2cr(u32 newL2cr);
void PPCMtdec(u32 newDec);
void PPCSync();
void PPCHalt();
u32 PPCMffpscr();
void PPCMtfpscr(u32 newFPSCR);
u32 PPCMfhid2();
void PPCMthid2(u32 newhid2);
u32 PPCMfwpar();
void PPCMtwpar(u32 newwpar);
void PPCEnableSpeculation();
void PPCDisableSpeculation();
void PPCSetFpIEEEMode();
void PPCSetFpNonIEEEMode();

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_PPCARCH
