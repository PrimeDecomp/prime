#ifndef __OSALARM_H__
#define __OSALARM_H__

#include <dolphin/os/OSContext.h>
#include <types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSAlarm OSAlarm;
typedef void (*OSAlarmHandler)(OSAlarm* alarm, OSContext* context);

struct OSAlarm {
  OSAlarmHandler handler;
  u32 tag;
  OSTime fire;
  OSAlarm* prev;
  OSAlarm* next;
  OSTime period;
  OSTime start;
};

void OSSetAlarm(OSAlarm* alarm, OSTime tick, OSAlarmHandler handler);
void OSSetPeriodicAlarm(OSAlarm* alarm, OSTime start, OSTime period, OSAlarmHandler handler);
void OSCancelAlarm(OSAlarm* alarm);

#ifdef __cplusplus
}
#endif

#endif
