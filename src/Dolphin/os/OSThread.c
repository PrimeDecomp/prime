#include "dolphin/os/OSPriv.h"

static vu32 RunQueueBits;
static volatile BOOL RunQueueHint;
static vs32 Reschedule;

static OSThreadQueue RunQueue[32];
static OSThread IdleThread;
static OSThread DefaultThread;
static OSContext IdleContext;
static void DefaultSwitchThreadCallback(OSThread* from, OSThread* to);
static OSSwitchThreadCallback SwitchThreadCallback = DefaultSwitchThreadCallback;

OSThread* __OSCurrentThread : OS_BASE_CACHED + 0x00E4;
OSThreadQueue __OSActiveThreadQueue : OS_BASE_CACHED + 0x00DC;
volatile OSContext __OSCurrentContext : OS_BASE_CACHED + 0x00D4;
volatile OSContext* __OSFPUContext : OS_BASE_CACHED + 0x00D8;

static void DefaultSwitchThreadCallback(OSThread* from, OSThread* to) {}

extern u8 _stack_addr[];
extern u8 _stack_end[];

#define AddTail(queue, thread, link)                                                               \
  do {                                                                                             \
    OSThread* prev;                                                                                \
                                                                                                   \
    prev = (queue)->tail;                                                                          \
    if (prev == NULL)                                                                              \
      (queue)->head = (thread);                                                                    \
    else                                                                                           \
      prev->link.next = (thread);                                                                  \
    (thread)->link.prev = prev;                                                                    \
    (thread)->link.next = NULL;                                                                    \
    (queue)->tail = (thread);                                                                      \
  } while (0)

#define AddPrio(queue, thread, link)                                                               \
  do {                                                                                             \
    OSThread *prev, *next;                                                                         \
                                                                                                   \
    for (next = (queue)->head; next && next->priority <= thread->priority; next = next->link.next) \
      ;                                                                                            \
    if (next == NULL)                                                                              \
      AddTail(queue, thread, link);                                                                \
    else {                                                                                         \
      (thread)->link.next = next;                                                                  \
      prev = next->link.prev;                                                                      \
      next->link.prev = (thread);                                                                  \
      (thread)->link.prev = prev;                                                                  \
      if (prev == NULL)                                                                            \
        (queue)->head = (thread);                                                                  \
      else                                                                                         \
        prev->link.next = (thread);                                                                \
    }                                                                                              \
  } while (0)

#define RemoveItem(queue, thread, link)                                                            \
  do {                                                                                             \
    OSThread *next, *prev;                                                                         \
    next = (thread)->link.next;                                                                    \
    prev = (thread)->link.prev;                                                                    \
    if (next == NULL)                                                                              \
      (queue)->tail = prev;                                                                        \
    else                                                                                           \
      next->link.prev = prev;                                                                      \
    if (prev == NULL)                                                                              \
      (queue)->head = next;                                                                        \
    else                                                                                           \
      prev->link.next = next;                                                                      \
  } while (0)

#define RemoveHead(queue, thread, link)                                                            \
  do {                                                                                             \
    OSThread* __next;                                                                              \
    (thread) = (queue)->head;                                                                      \
    __next = (thread)->link.next;                                                                  \
    if (__next == NULL)                                                                            \
      (queue)->tail = NULL;                                                                        \
    else                                                                                           \
      __next->link.prev = NULL;                                                                    \
    (queue)->head = __next;                                                                        \
  } while (0)

static inline void OSInitMutexQueue(OSMutexQueue* queue) { queue->head = queue->tail = NULL; }

static inline void OSSetCurrentThread(OSThread* thread) {
  SwitchThreadCallback(__OSCurrentThread, thread);
  __OSCurrentThread = thread;
}

void __OSThreadInit() {
  OSThread* thread = &DefaultThread;
  int prio;

  thread->state = OS_THREAD_STATE_RUNNING;
  thread->attr = OS_THREAD_ATTR_DETACH;
  thread->priority = thread->base = 16;
  thread->suspend = 0;
  thread->val = (void*)-1;
  thread->mutex = NULL;
  OSInitThreadQueue(&thread->queueJoin);
  OSInitMutexQueue(&thread->queueMutex);

  __OSFPUContext = &thread->context;

  OSClearContext(&thread->context);
  OSSetCurrentContext(&thread->context);
  thread->stackBase = (void*)_stack_addr;
  thread->stackEnd = (void*)_stack_end;
  *(thread->stackEnd) = OS_THREAD_STACK_MAGIC;

  OSSetCurrentThread(thread);
  OSClearStack(0);

  RunQueueBits = 0;
  RunQueueHint = FALSE;
  for (prio = OS_PRIORITY_MIN; prio <= OS_PRIORITY_MAX; ++prio) {
    OSInitThreadQueue(&RunQueue[prio]);
  }

  OSInitThreadQueue(&__OSActiveThreadQueue);
  AddTail(&__OSActiveThreadQueue, thread, linkActive);
  OSClearContext(&IdleContext);
  Reschedule = 0;
}

void OSInitThreadQueue(OSThreadQueue* queue) { queue->head = queue->tail = NULL; }

OSThread* OSGetCurrentThread() { return __OSCurrentThread; }

#ifdef FULL_FRANK
/* Code matches, stack epilogue bug*/
s32 OSDisableScheduler() {
  BOOL enabled;
  s32 count;

  enabled = OSDisableInterrupts();
  count = Reschedule++;
  OSRestoreInterrupts(enabled);
  return count;
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 
#pragma optimizewithasm off
asm s32 OSDisableScheduler() {
  nofralloc
  mflr r0
  stw r0, 4(r1)
  stwu r1, -0x10(r1)
  stw r31, 0xc(r1)
  bl OSDisableInterrupts
  lwz r4, Reschedule
  addi r0, r4, 1
  stw r0, Reschedule
  mr r31, r4
  bl OSRestoreInterrupts
  mr r3, r31
  lwz r0, 0x14(r1)
  lwz r31, 0xc(r1)
  addi r1, r1, 0x10
  mtlr r0
  blr
}
/* clang-format on */
#pragma pop
#endif

#ifdef FULL_FRANK
/* Code matches, stack epilogue bug*/
s32 OSEnableScheduler() {
  BOOL enabled;
  s32 count;

  enabled = OSDisableInterrupts();
  count = Reschedule--;
  OSRestoreInterrupts(enabled);
  return count;
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 
#pragma optimizewithasm off
asm s32 OSEnableScheduler() {
  nofralloc
  mflr r0
  stw r0, 4(r1)
  stwu r1, -0x10(r1)
  stw r31, 0xc(r1)
  bl OSDisableInterrupts
  lwz r4, Reschedule
  subi r0, r4, 1
  stw r0, Reschedule
  mr r31, r4
  bl OSRestoreInterrupts
  mr r3, r31
  lwz r0, 0x14(r1)
  lwz r31, 0xc(r1)
  addi r1, r1, 0x10
  mtlr r0
  blr
}
/* clang-format on */
#pragma pop
#endif

static void SetRun(OSThread* thread) {
  thread->queue = &RunQueue[thread->priority];
  AddTail(thread->queue, thread, link);
  RunQueueBits |= 1u << (OS_PRIORITY_MAX - thread->priority);
  RunQueueHint = TRUE;
}
#pragma dont_inline on
static void UnsetRun(OSThread* thread) {
  OSThreadQueue* queue;
  queue = thread->queue;
  RemoveItem(queue, thread, link);
  if (queue->head == 0)
    RunQueueBits &= ~(1u << (OS_PRIORITY_MAX - thread->priority));
  thread->queue = NULL;
}
#pragma dont_inline reset

OSPriority __OSGetEffectivePriority(OSThread* thread) {
  OSPriority priority;
  OSMutex* mutex;
  OSThread* blocked;

  priority = thread->base;
  for (mutex = thread->queueMutex.head; mutex; mutex = mutex->link.next) {
    blocked = mutex->queue.head;
    if (blocked && blocked->priority < priority) {
      priority = blocked->priority;
    }
  }
  return priority;
}

static OSThread* SetEffectivePriority(OSThread* thread, OSPriority priority) {
  switch (thread->state) {
  case OS_THREAD_STATE_READY:
    UnsetRun(thread);
    thread->priority = priority;
    SetRun(thread);
    break;
  case OS_THREAD_STATE_WAITING:
    RemoveItem(thread->queue, thread, link);
    thread->priority = priority;
    AddPrio(thread->queue, thread, link);
    if (thread->mutex) {
      return thread->mutex->thread;
    }
    break;
  case OS_THREAD_STATE_RUNNING:
    RunQueueHint = TRUE;
    thread->priority = priority;
    break;
  }
  return NULL;
}

static void UpdatePriority(OSThread* thread) {
  OSPriority priority;

  do {
    if (0 < thread->suspend) {
      break;
    }
    priority = __OSGetEffectivePriority(thread);
    if (thread->priority == priority) {
      break;
    }
    thread = SetEffectivePriority(thread, priority);
  } while (thread);
}

static void __OSSwitchThread(OSThread* nextThread) {
  OSSetCurrentThread(nextThread);
  OSSetCurrentContext(&nextThread->context);
  OSLoadContext(&nextThread->context);
}

static OSThread* SelectThread(BOOL yield) {
  OSContext* currentContext;
  OSThread* currentThread;
  OSThread* nextThread;
  OSPriority priority;
  OSThreadQueue* queue;

  if (0 < Reschedule) {
    return 0;
  }

  currentContext = OSGetCurrentContext();
  currentThread = OSGetCurrentThread();
  if (currentContext != &currentThread->context) {
    return 0;
  }

  if (currentThread) {
    if (currentThread->state == OS_THREAD_STATE_RUNNING) {
      if (!yield) {
        priority = __cntlzw(RunQueueBits);
        if (currentThread->priority <= priority) {
          return 0;
        }
      }
      currentThread->state = OS_THREAD_STATE_READY;
      SetRun(currentThread);
    }

    if (!(currentThread->context.state & OS_CONTEXT_STATE_EXC) &&
        OSSaveContext(&currentThread->context)) {
      return 0;
    }
  }

  OSSetCurrentThread(NULL);
  if (RunQueueBits == 0) {
    OSSetCurrentContext(&IdleContext);
    do {
      OSEnableInterrupts();
      while (RunQueueBits == 0)
        ;
      OSDisableInterrupts();
    } while (RunQueueBits == 0);

    OSClearContext(&IdleContext);
  }

  RunQueueHint = FALSE;

  priority = __cntlzw(RunQueueBits);
  queue = &RunQueue[priority];
  RemoveHead(queue, nextThread, link);
  if (queue->head == 0) {
    RunQueueBits &= ~(1u << (OS_PRIORITY_MAX - priority));
  }
  nextThread->queue = NULL;
  nextThread->state = OS_THREAD_STATE_RUNNING;
  __OSSwitchThread(nextThread);
  return nextThread;
}

void __OSReschedule() {
  if (!RunQueueHint) {
    return;
  }

  SelectThread(FALSE);
}

void OSYieldThread(void) {
  BOOL enabled;

  enabled = OSDisableInterrupts();
  SelectThread(TRUE);
  OSRestoreInterrupts(enabled);
}

void OSCancelThread(OSThread* thread) {
  BOOL enabled;

  enabled = OSDisableInterrupts();

  switch (thread->state) {
  case OS_THREAD_STATE_READY:
    if (!(0 < thread->suspend)) {
      UnsetRun(thread);
    }
    break;
  case OS_THREAD_STATE_RUNNING:
    RunQueueHint = TRUE;
    break;
  case OS_THREAD_STATE_WAITING:
    RemoveItem(thread->queue, thread, link);
    thread->queue = NULL;
    if (!(0 < thread->suspend) && thread->mutex) {
      UpdatePriority(thread->mutex->thread);
    }
    break;
  default:
    OSRestoreInterrupts(enabled);
    return;
  }

  OSClearContext(&thread->context);
  if (thread->attr & OS_THREAD_ATTR_DETACH) {
    RemoveItem(&__OSActiveThreadQueue, thread, linkActive);
    thread->state = 0;
  } else {
    thread->state = OS_THREAD_STATE_MORIBUND;
  }

  __OSUnlockAllMutex(thread);

  OSWakeupThread(&thread->queueJoin);

  __OSReschedule();
  OSRestoreInterrupts(enabled);

  return;
}

#ifdef FULL_FRANK
/* Code matches, stack epilogue bug*/
s32 OSResumeThread(OSThread* thread) {
  BOOL enabled;
  s32 suspendCount;

  enabled = OSDisableInterrupts();
  suspendCount = thread->suspend--;
  if (thread->suspend < 0) {
    thread->suspend = 0;
  } else if (thread->suspend == 0) {
    switch (thread->state) {
    case OS_THREAD_STATE_READY:
      thread->priority = __OSGetEffectivePriority(thread);
      SetRun(thread);
      break;
    case OS_THREAD_STATE_WAITING:
      RemoveItem(thread->queue, thread, link);
      thread->priority = __OSGetEffectivePriority(thread);
      AddPrio(thread->queue, thread, link);
      if (thread->mutex) {
        UpdatePriority(thread->mutex->thread);
      }
      break;
    }
    __OSReschedule();
  }
  OSRestoreInterrupts(enabled);
  return suspendCount;
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 OSResumeThread(OSThread* thread) {
  nofralloc
  mflr r0
  stw r0, 4(r1)
  stwu r1, -0x28(r1)
  stw r31, 0x24(r1)
  stw r30, 0x20(r1)
  stw r29, 0x1c(r1)
  mr r29, r3
  bl OSDisableInterrupts
  lwz r4, 0x2cc(r29)
  addi r31, r3, 0
  addi r0, r4, -1
  stw r0, 0x2cc(r29)
  mr r30, r4
  lwz r0, 0x2cc(r29)
  cmpwi r0, 0
  bge lbl_80384D60
  li r0, 0
  stw r0, 0x2cc(r29)
  b lbl_80384F74
lbl_80384D60:
  bne lbl_80384F74
  lhz r0, 0x2c8(r29)
  cmpwi r0, 4
  beq lbl_80384E24
  bge lbl_80384F60
  cmpwi r0, 1
  beq lbl_80384D80
  b lbl_80384F60
lbl_80384D80:
  lwz r0, 0x2d4(r29)
  lwz r3, 0x2f4(r29)
  b lbl_80384DAC
lbl_80384D8C:
  lwz r4, 0(r3)
  cmplwi r4, 0
  beq lbl_80384DA8
  lwz r4, 0x2d0(r4)
  cmpw r4, r0
  bge lbl_80384DA8
  mr r0, r4
lbl_80384DA8:
  lwz r3, 0x10(r3)
lbl_80384DAC:
  cmplwi r3, 0
  bne lbl_80384D8C
  stw r0, 0x2d0(r29)
  lis r3, RunQueue@ha
  addi r0, r3, RunQueue@l
  lwz r3, 0x2d0(r29)
  slwi r3, r3, 3
  add r0, r0, r3
  stw r0, 0x2dc(r29)
  lwz r4, 0x2dc(r29)
  lwz r3, 4(r4)
  cmplwi r3, 0
  bne lbl_80384DE8
  stw r29, 0(r4)
  b lbl_80384DEC
lbl_80384DE8:
  stw r29, 0x2e0(r3)
lbl_80384DEC:
  stw r3, 0x2e4(r29)
  li r0, 0
  li r3, 1
  stw r0, 0x2e0(r29)
  lwz r4, 0x2dc(r29)
  stw r29, 4(r4)
  lwz r0, 0x2d0(r29)
  lwz r4, RunQueueBits
  subfic r0, r0, 0x1f
  slw r0, r3, r0
  or r0, r4, r0
  stw r0, RunQueueBits
  stw r3, RunQueueHint
  b lbl_80384F60
lbl_80384E24:
  lwz r4, 0x2e0(r29)
  lwz r5, 0x2e4(r29)
  cmplwi r4, 0
  bne lbl_80384E40
  lwz r3, 0x2dc(r29)
  stw r5, 4(r3)
  b lbl_80384E44
lbl_80384E40:
  stw r5, 0x2e4(r4)
lbl_80384E44:
  cmplwi r5, 0
  bne lbl_80384E58
  lwz r3, 0x2dc(r29)
  stw r4, 0(r3)
  b lbl_80384E5C
lbl_80384E58:
  stw r4, 0x2e0(r5)
lbl_80384E5C:
  lwz r0, 0x2d4(r29)
  lwz r3, 0x2f4(r29)
  b lbl_80384E88
lbl_80384E68:
  lwz r4, 0(r3)
  cmplwi r4, 0
  beq lbl_80384E84
  lwz r4, 0x2d0(r4)
  cmpw r4, r0
  bge lbl_80384E84
  mr r0, r4
lbl_80384E84:
  lwz r3, 0x10(r3)
lbl_80384E88:
  cmplwi r3, 0
  bne lbl_80384E68
  stw r0, 0x2d0(r29)
  lwz r4, 0x2dc(r29)
  lwz r5, 0(r4)
  b lbl_80384EA4
lbl_80384EA0:
  lwz r5, 0x2e0(r5)
lbl_80384EA4:
  cmplwi r5, 0
  beq lbl_80384EBC
  lwz r3, 0x2d0(r5)
  lwz r0, 0x2d0(r29)
  cmpw r3, r0
  ble lbl_80384EA0
lbl_80384EBC:
  cmplwi r5, 0
  bne lbl_80384EF4
  lwz r3, 4(r4)
  cmplwi r3, 0
  bne lbl_80384ED8
  stw r29, 0(r4)
  b lbl_80384EDC
lbl_80384ED8:
  stw r29, 0x2e0(r3)
lbl_80384EDC:
  stw r3, 0x2e4(r29)
  li r0, 0
  stw r0, 0x2e0(r29)
  lwz r3, 0x2dc(r29)
  stw r29, 4(r3)
  b lbl_80384F1C
lbl_80384EF4:
  stw r5, 0x2e0(r29)
  lwz r3, 0x2e4(r5)
  stw r29, 0x2e4(r5)
  cmplwi r3, 0
  stw r3, 0x2e4(r29)
  bne lbl_80384F18
  lwz r3, 0x2dc(r29)
  stw r29, 0(r3)
  b lbl_80384F1C
lbl_80384F18:
  stw r29, 0x2e0(r3)
lbl_80384F1C:
  lwz r3, 0x2f0(r29)
  cmplwi r3, 0
  beq lbl_80384F60
  lwz r29, 8(r3)
lbl_80384F2C:
  lwz r0, 0x2cc(r29)
  cmpwi r0, 0
  bgt lbl_80384F60
  mr r3, r29
  bl __OSGetEffectivePriority
  lwz r0, 0x2d0(r29)
  addi r4, r3, 0
  cmpw r0, r4
  beq lbl_80384F60
  mr r3, r29
  bl SetEffectivePriority
  or. r29, r3, r3
  bne lbl_80384F2C
lbl_80384F60:
  lwz r0, RunQueueHint
  cmpwi r0, 0
  beq lbl_80384F74
  li r3, 0
  bl SelectThread
lbl_80384F74:
  mr r3, r31
  bl OSRestoreInterrupts
  mr r3, r30
  lwz r0, 0x2c(r1)
  lwz r31, 0x24(r1)
  lwz r30, 0x20(r1)
  lwz r29, 0x1c(r1)
  addi r1, r1, 0x28
  mtlr r0
  blr
}
#pragma pop
/* clang-format on */

#endif

#ifdef FULL_FRANK
/* Code matches, stack epilogue bug*/
s32 OSSuspendThread(OSThread* thread) {
  BOOL enabled;
  s32 suspendCount;

  enabled = OSDisableInterrupts();
  suspendCount = thread->suspend++;
  if (suspendCount == 0) {
    switch (thread->state) {
    case OS_THREAD_STATE_RUNNING:
      RunQueueHint = TRUE;
      thread->state = OS_THREAD_STATE_READY;
      break;
    case OS_THREAD_STATE_READY:
      UnsetRun(thread);
      break;
    case OS_THREAD_STATE_WAITING:
      RemoveItem(thread->queue, thread, link);
      thread->priority = 32;
      AddTail(thread->queue, thread, link);
      if (thread->mutex) {
        UpdatePriority(thread->mutex->thread);
      }
      break;
    }

    __OSReschedule();
  }
  OSRestoreInterrupts(enabled);
  return suspendCount;
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 OSSuspendThread(OSThread* thread) {
  nofralloc
  mflr r0
  stw r0, 4(r1)
  stwu r1, -0x20(r1)
  stw r31, 0x1c(r1)
  stw r30, 0x18(r1)
  stw r29, 0x14(r1)
  mr r29, r3
  bl OSDisableInterrupts
  lwz r4, 0x2cc(r29)
  addi r31, r3, 0
  addi r0, r4, 1
  or. r30, r4, r4
  stw r0, 0x2cc(r29)
  bne lbl_803850E4
  lhz r0, 0x2c8(r29)
  cmpwi r0, 3
  beq lbl_803850D0
  bge lbl_80384FF4
  cmpwi r0, 1
  beq lbl_80385010
  bge lbl_80385000
  b lbl_803850D0
lbl_80384FF4:
  cmpwi r0, 5
  bge lbl_803850D0
  b lbl_8038501C
lbl_80385000:
  li r0, 1
  stw r0, RunQueueHint
  sth r0, 0x2c8(r29)
  b lbl_803850D0
lbl_80385010:
  mr r3, r29
  bl UnsetRun
  b lbl_803850D0
lbl_8038501C:
  lwz r4, 0x2e0(r29)
  lwz r5, 0x2e4(r29)
  cmplwi r4, 0
  bne lbl_80385038
  lwz r3, 0x2dc(r29)
  stw r5, 4(r3)
  b lbl_8038503C
lbl_80385038:
  stw r5, 0x2e4(r4)
lbl_8038503C:
  cmplwi r5, 0
  bne lbl_80385050
  lwz r3, 0x2dc(r29)
  stw r4, 0(r3)
  b lbl_80385054
lbl_80385050:
  stw r4, 0x2e0(r5)
lbl_80385054:
  li r0, 0x20
  stw r0, 0x2d0(r29)
  lwz r4, 0x2dc(r29)
  lwz r3, 4(r4)
  cmplwi r3, 0
  bne lbl_80385074
  stw r29, 0(r4)
  b lbl_80385078
lbl_80385074:
  stw r29, 0x2e0(r3)
lbl_80385078:
  stw r3, 0x2e4(r29)
  li r0, 0
  stw r0, 0x2e0(r29)
  lwz r3, 0x2dc(r29)
  stw r29, 4(r3)
  lwz r3, 0x2f0(r29)
  cmplwi r3, 0
  beq lbl_803850D0
  lwz r29, 8(r3)
lbl_8038509C:
  lwz r0, 0x2cc(r29)
  cmpwi r0, 0
  bgt lbl_803850D0
  mr r3, r29
  bl __OSGetEffectivePriority
  lwz r0, 0x2d0(r29)
  addi r4, r3, 0
  cmpw r0, r4
  beq lbl_803850D0
  mr r3, r29
  bl SetEffectivePriority
  or. r29, r3, r3
  bne lbl_8038509C
lbl_803850D0:
  lwz r0, RunQueueHint
  cmpwi r0, 0
  beq lbl_803850E4
  li r3, 0
  bl SelectThread
lbl_803850E4:
  mr r3, r31
  bl OSRestoreInterrupts
  mr r3, r30
  lwz r0, 0x24(r1)
  lwz r31, 0x1c(r1)
  lwz r30, 0x18(r1)
  lwz r29, 0x14(r1)
  addi r1, r1, 0x20
  mtlr r0
  blr
}
#pragma pop
/* clang-format on */
#endif 

void OSSleepThread(OSThreadQueue* queue) {
  BOOL enabled;
  OSThread* currentThread;

  enabled = OSDisableInterrupts();
  currentThread = OSGetCurrentThread();

  currentThread->state = OS_THREAD_STATE_WAITING;
  currentThread->queue = queue;
  AddPrio(queue, currentThread, link);
  RunQueueHint = TRUE;
  __OSReschedule();
  OSRestoreInterrupts(enabled);
}

void OSWakeupThread(OSThreadQueue* queue) {
  BOOL enabled;
  OSThread* thread;

  enabled = OSDisableInterrupts();
  while (queue->head) {
    RemoveHead(queue, thread, link);
    thread->state = OS_THREAD_STATE_READY;
    if (!(0 < thread->suspend)) {
      SetRun(thread);
    }
  }
  __OSReschedule();
  OSRestoreInterrupts(enabled);
}

void OSClearStack(u8 val) {
  register u32 sp;
  register u32* p;
  register u32 pattern;

  pattern = ((u32)val << 24) | ((u32)val << 16) | ((u32)val << 8) | (u32)val;
  sp = OSGetStackPointer();
  for (p = __OSCurrentThread->stackEnd + 1; p < (u32*)sp; ++p) {
    *p = pattern;
  }
}
