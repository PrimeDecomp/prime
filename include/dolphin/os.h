#ifndef _DOLPHIN_OS_H
#define _DOLPHIN_OS_H

#include <dolphin/types.h>

#ifdef __cplusplus
extern "C" {
#endif

// TODO OSInerrupt.h
typedef s16  __OSInterrupt;

// Upper words of the masks, since UIMM is only 16 bits
#define OS_CACHED_REGION_PREFIX         0x8000
#define OS_UNCACHED_REGION_PREFIX       0xC000
#define OS_PHYSICAL_MASK                0x3FFF

#define OS_BASE_CACHED                  (OS_CACHED_REGION_PREFIX << 16)
#define OS_BASE_UNCACHED                (OS_UNCACHED_REGION_PREFIX << 16)

#ifdef __MWERKS__
#define AT_ADDRESS(xyz) : (xyz)
#else
#define AT_ADDRESS
#endif
typedef s64 OSTime;
typedef u32 OSTick;
u32 __OSBusClock    AT_ADDRESS(OS_BASE_CACHED | 0x00F8);    // sync with OSLoMem.h
u32 __OSCoreClock   AT_ADDRESS(OS_BASE_CACHED | 0x00FC);    // sync with OSLoMem.h
#define OS_BUS_CLOCK        __OSBusClock
#define OS_CORE_CLOCK       __OSCoreClock
#define OS_TIMER_CLOCK      (OS_BUS_CLOCK/4)

#define OSTicksToCycles( ticks )        (((ticks) * ((OS_CORE_CLOCK * 2) / OS_TIMER_CLOCK)) / 2)
#define OSTicksToSeconds( ticks )       ((ticks) / OS_TIMER_CLOCK)
#define OSTicksToMilliseconds( ticks )  ((ticks) / (OS_TIMER_CLOCK / 1000))
#define OSTicksToMicroseconds( ticks )  (((ticks) * 8) / (OS_TIMER_CLOCK / 125000))
#define OSTicksToNanoseconds( ticks )   (((ticks) * 8000) / (OS_TIMER_CLOCK / 125000))
#define OSSecondsToTicks( sec )         ((sec)  * OS_TIMER_CLOCK)
#define OSMillisecondsToTicks( msec )   ((msec) * (OS_TIMER_CLOCK / 1000))
#define OSMicrosecondsToTicks( usec )   (((usec) * (OS_TIMER_CLOCK / 125000)) / 8)
#define OSNanosecondsToTicks( nsec )    (((nsec) * (OS_TIMER_CLOCK / 125000)) / 8000)

#define OSDiffTick(tick1, tick0)        ((s32) (tick1) - (s32) (tick0))


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
