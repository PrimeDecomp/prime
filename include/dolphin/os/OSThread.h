#ifndef _DOLPHIN_OSTHREAD
#define _DOLPHIN_OSTHREAD

#include <dolphin/os/OSContext.h>

#ifdef __cplusplus
extern "C" {
#endif

#define OS_THREAD_SPECIFIC_MAX 2

typedef struct OSThread OSThread;
typedef struct OSThreadQueue OSThreadQueue;
typedef struct OSThreadLink OSThreadLink;
typedef s32 OSPriority; //  0 highest, 31 lowest

typedef struct OSMutex OSMutex;
typedef struct OSMutexQueue OSMutexQueue;
typedef struct OSMutexLink OSMutexLink;
typedef struct OSCond OSCond;

typedef void (*OSIdleFunction)(void* param);
typedef void (*OSSwitchThreadCallback)(OSThread* from, OSThread* to);

struct OSThreadQueue {
  OSThread* head;
  OSThread* tail;
};

struct OSThreadLink {
  OSThread* next;
  OSThread* prev;
};

struct OSMutexQueue {
  OSMutex* head;
  OSMutex* tail;
};

struct OSMutexLink {
  OSMutex* next;
  OSMutex* prev;
};

struct OSThread {
  OSContext context;
  u16 state;
  u16 attr;
  s32 suspend;
  OSPriority priority;
  OSPriority base;
  void* val;
  OSThreadQueue* queue;
  OSThreadLink link;
  OSThreadQueue queueJoin;
  OSMutex* mutex;
  OSMutexQueue queueMutex;
  OSThreadLink linkActive;
  u8* stackBase;
  u32* stackEnd;
  s32 error;
  void* specific[OS_THREAD_SPECIFIC_MAX];
};

OSThread* OSGetCurrentThread(void);

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_OSTHREAD
