#ifndef _DOLPHIN_OS_H
#define _DOLPHIN_OS_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

// #ifndef ADDRESS
// #define ADDRESS(v) __attribute__((address((v))))
// #endif
// const u32 __OSBusClock ADDRESS(0x800000f8);
// const u32 __OSCoreClock ADDRESS(0x800000fc);
// #define OS_BUS_CLOCK __OSBusClock
// #define OS_CORE_CLOCK __OSCoreClock

#define OS_BUS_CLOCK *((const u32*)0x800000f8)
#define OS_CORE_CLOCK *((const u32*)0x800000fc)
#define OS_TIMER_CLOCK (OS_BUS_CLOCK / 4)

#define OSSecondsToTicks(v) ((v)*OS_TIMER_CLOCK)


typedef struct OSContext {
    u32 gpr[32];
    u32 cr;
    u32 lr;
    u32 ctr;
    u32 xer;

    f64 fpr[32];

    u32 fpscr_pad;
    u32 fpscr;

    u32 srr0;
    u32 srr1;

    u16 mode;
    u16 state;

    u32 gqr[8];
    u32 psf_pad;
    f64 psf[32];

} OSContext;

OSTime OSGetTime();

#ifdef __cplusplus
}
#endif

#endif
