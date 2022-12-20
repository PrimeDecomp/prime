#include "dolphin/dsp.h"
#include "dolphin/dsp_regs.h"

DSPTaskInfo* __DSP_curr_task;
DSPTaskInfo* __DSP_first_task;
DSPTaskInfo* __DSP_last_task;
DSPTaskInfo* __DSP_tmp_task;
DSPTaskInfo* __DSP_rude_task;

BOOL __DSP_rude_task_pending;

void __DSPHandler(__OSInterrupt, OSContext* context) {
  DSPTaskInfo* tmp_task;
  OSContext exceptionContext;
  u16 tmp;
  u32 mail;

  tmp = __DSPRegs[5];
  tmp = (u16)(tmp & ~0x28) | 0x80;
  __DSPRegs[5] = tmp;

  OSClearContext(&exceptionContext);
  OSSetCurrentContext(&exceptionContext);

  while (!DSPCheckMailFromDSP())
    ;
  mail = DSPReadMailFromDSP();

  if ((__DSP_curr_task->flags & DSP_TASK_FLAG_CANCEL) && (mail == 0xDCD10002)) {
    mail = 0xDCD10003;
  }

  switch (mail) {
  case 0xDCD10000:
    __DSP_curr_task->state = DSP_TASK_STATE_RUN;

    if (__DSP_curr_task->init_cb) {
      (*(__DSP_curr_task->init_cb))((void*)(__DSP_curr_task));
    }
    break;
  case 0xDCD10001:
    __DSP_curr_task->state = DSP_TASK_STATE_RUN;
    if (__DSP_curr_task->res_cb) {
      (*(__DSP_curr_task->res_cb))((void*)(__DSP_curr_task));
    }
    break;
  case 0xDCD10002:
    if (__DSP_rude_task_pending) {

      if (__DSP_curr_task == __DSP_rude_task) {
        DSPSendMailToDSP(0xCDD10003);
        while (DSPCheckMailToDSP()) {
        }

        __DSP_rude_task = NULL;
        __DSP_rude_task_pending = FALSE;

        if (__DSP_curr_task->res_cb) {
          (*(__DSP_curr_task->res_cb))((void*)(__DSP_curr_task));
        }

        break;
      } else {
        DSPSendMailToDSP(0xCDD10001);
        while (DSPCheckMailToDSP())
          ;
        __DSP_exec_task(__DSP_curr_task, __DSP_rude_task);

        __DSP_curr_task->state = DSP_TASK_STATE_YIELD;
        __DSP_curr_task = __DSP_rude_task;

        __DSP_rude_task = NULL;
        __DSP_rude_task_pending = FALSE;

        break;
      }
    }

    if (__DSP_curr_task->next == NULL) {

      if (__DSP_curr_task == __DSP_first_task) {

        DSPSendMailToDSP(0xCDD10003);
        while (DSPCheckMailToDSP())
          ;

        if (__DSP_curr_task->res_cb) {
          (*(__DSP_curr_task->res_cb))((void*)(__DSP_curr_task));
        }

      } else {
        DSPSendMailToDSP(0xCDD10001);
        while (DSPCheckMailToDSP()) {
        }

        __DSP_exec_task(__DSP_curr_task, __DSP_first_task);

        __DSP_curr_task->state = DSP_TASK_STATE_YIELD;
        __DSP_curr_task = __DSP_first_task;
      }

    } else {

      DSPSendMailToDSP(0xCDD10001);
      while (DSPCheckMailToDSP()) {
      }

      __DSP_exec_task(__DSP_curr_task, __DSP_curr_task->next);

      __DSP_curr_task->state = DSP_TASK_STATE_YIELD;
      __DSP_curr_task = __DSP_curr_task->next;
    }
    break;
  case 0xDCD10003:
    if (__DSP_rude_task_pending) {

      if (__DSP_curr_task->done_cb) {
        (*(__DSP_curr_task->done_cb))((void*)(__DSP_curr_task));
      }

      DSPSendMailToDSP(0xCDD10001);
      while (DSPCheckMailToDSP())
        ;

      __DSP_exec_task(NULL, __DSP_rude_task);

      __DSP_remove_task(__DSP_curr_task);
      __DSP_curr_task = __DSP_rude_task;

      __DSP_rude_task = NULL;
      __DSP_rude_task_pending = FALSE;

      break;
    }

    if (__DSP_curr_task->next == NULL) {

      if (__DSP_curr_task == __DSP_first_task) {

        if (__DSP_curr_task->done_cb) {
          (*(__DSP_curr_task->done_cb))((void*)(__DSP_curr_task));
        }

        DSPSendMailToDSP(0xCDD10002);
        while (DSPCheckMailToDSP())
          ;

        __DSP_curr_task->state = DSP_TASK_STATE_DONE;

        __DSP_remove_task(__DSP_curr_task);

      } else {

        if (__DSP_curr_task->done_cb) {
          (*(__DSP_curr_task->done_cb))((void*)(__DSP_curr_task));
        }

        DSPSendMailToDSP(0xCDD10001);
        while (DSPCheckMailToDSP())
          ;

        __DSP_curr_task->state = DSP_TASK_STATE_DONE;
        __DSP_exec_task(NULL, __DSP_first_task);

        __DSP_curr_task = __DSP_first_task;
        __DSP_remove_task(__DSP_last_task);
      }

    } else {
      if (__DSP_curr_task->done_cb) {
        (*(__DSP_curr_task->done_cb))((void*)(__DSP_curr_task));
      }
      DSPSendMailToDSP(0xCDD10001);
      while (DSPCheckMailToDSP())
        ;

      __DSP_curr_task->state = DSP_TASK_STATE_DONE;
      __DSP_exec_task(NULL, __DSP_curr_task->next);

      __DSP_curr_task = __DSP_curr_task->next;
      __DSP_remove_task(__DSP_curr_task->prev);
    }
    break;

  case 0xDCD10004:

    if (__DSP_curr_task->req_cb) {
      (*(__DSP_curr_task->req_cb))((void*)(__DSP_curr_task));
    }
    break;
  default:
    break;
  }
  OSClearContext(&exceptionContext);
  OSSetCurrentContext(context);
}

#if NONMATCHING
void __DSP_exec_task(DSPTaskInfo* curr, DSPTaskInfo* next) {
  if (curr) {
    DSPSendMailToDSP((u32)(curr->dram_mmem_addr));
    while (DSPCheckMailToDSP())
      ;
    DSPSendMailToDSP((u32)(curr->dram_length));
    while (DSPCheckMailToDSP())
      ;
    DSPSendMailToDSP((u32)(curr->dram_addr));
    while (DSPCheckMailToDSP())
      ;
  } else {

    DSPSendMailToDSP((u32)(0));
    while (DSPCheckMailToDSP())
      ;
    DSPSendMailToDSP((u32)(0));
    while (DSPCheckMailToDSP())
      ;
    DSPSendMailToDSP((u32)(0));
    while (DSPCheckMailToDSP())
      ;
  }

  DSPSendMailToDSP((u32)(next->iram_mmem_addr));
  while (DSPCheckMailToDSP())
    ;
  DSPSendMailToDSP((u32)(next->iram_length));
  while (DSPCheckMailToDSP())
    ;
  DSPSendMailToDSP((u32)(next->iram_addr));
  while (DSPCheckMailToDSP())
    ;

  if (DSP_TASK_STATE_INIT == next->state) {
    DSPSendMailToDSP((u32)(next->dsp_init_vector));
    while (DSPCheckMailToDSP())
      ;
    DSPSendMailToDSP((u32)(0));
    while (DSPCheckMailToDSP())
      ;
    DSPSendMailToDSP((u32)(0));
    while (DSPCheckMailToDSP())
      ;
    DSPSendMailToDSP((u32)(0));
    while (DSPCheckMailToDSP())
      ;
  } else {
    DSPSendMailToDSP((u32)(next->dsp_resume_vector));
    while (DSPCheckMailToDSP())
      ;
    DSPSendMailToDSP((u32)(next->dram_mmem_addr));
    while (DSPCheckMailToDSP())
      ;

    DSPSendMailToDSP((u32)(next->dram_length));
    while (DSPCheckMailToDSP())
      ;

    DSPSendMailToDSP((u32)(next->dram_addr));
    while (DSPCheckMailToDSP())
      ;
  }
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __DSP_exec_task(DSPTaskInfo* curr, DSPTaskInfo* next) {
  nofralloc
  mflr r0
  stw r0, 4(r1)
  stwu r1, -0x18(r1)
  stw r31, 0x14(r1)
  addi r31, r4, 0
  stw r30, 0x10(r1)
  or. r30, r3, r3
  beq lbl_803700A4
  lwz r3, 0x18(r30)
  bl DSPSendMailToDSP
lbl_8037006C:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_8037006C
  lwz r3, 0x1c(r30)
  bl DSPSendMailToDSP
lbl_80370080:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_80370080
  lwz r3, 0x20(r30)
  bl DSPSendMailToDSP
lbl_80370094:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_80370094
  b lbl_803700E0
lbl_803700A4:
  li r3, 0
  bl DSPSendMailToDSP
lbl_803700AC:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_803700AC
  li r3, 0
  bl DSPSendMailToDSP
lbl_803700C0:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_803700C0
  li r3, 0
  bl DSPSendMailToDSP
lbl_803700D4:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_803700D4
lbl_803700E0:
  lwz r3, 0xc(r31)
  bl DSPSendMailToDSP
lbl_803700E8:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_803700E8
  lwz r3, 0x10(r31)
  bl DSPSendMailToDSP
lbl_803700FC:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_803700FC
  lwz r3, 0x14(r31)
  bl DSPSendMailToDSP
lbl_80370110:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_80370110
  lwz r0, 0(r31)
  cmplwi r0, 0
  bne lbl_8037017C
  lhz r3, 0x24(r31)
  bl DSPSendMailToDSP
lbl_80370130:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_80370130
  li r3, 0
  bl DSPSendMailToDSP
lbl_80370144:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_80370144
  li r3, 0
  bl DSPSendMailToDSP
lbl_80370158:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_80370158
  li r3, 0
  bl DSPSendMailToDSP
lbl_8037016C:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_8037016C
  b lbl_803701CC
lbl_8037017C:
  lhz r3, 0x26(r31)
  bl DSPSendMailToDSP
lbl_80370184:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_80370184
  lwz r3, 0x18(r31)
  bl DSPSendMailToDSP
lbl_80370198:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_80370198
  lwz r3, 0x1c(r31)
  bl DSPSendMailToDSP
lbl_803701AC:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_803701AC
  lwz r3, 0x20(r31)
  bl DSPSendMailToDSP
lbl_803701C0:
  bl DSPCheckMailToDSP
  cmplwi r3, 0
  bne lbl_803701C0
lbl_803701CC:
  lwz r0, 0x1c(r1)
  lwz r31, 0x14(r1)
  lwz r30, 0x10(r1)
  addi r1, r1, 0x18
  mtlr r0
  blr
}
#pragma pop
/* clang-format on */
#endif

#if NONMATCHING
#define MSG_BASE 0x80F30000
void __DSP_boot_task(DSPTaskInfo* task) {

  volatile u32 mail;

  while (!DSPCheckMailFromDSP())
    ;

  mail = DSPReadMailFromDSP();

  DSPSendMailToDSP(MSG_BASE | 0xA001);
  while (DSPCheckMailToDSP()) {
  }
  DSPSendMailToDSP((u32)(task->iram_mmem_addr));
  while (DSPCheckMailToDSP()) {
  }

  DSPSendMailToDSP(MSG_BASE | 0xC002);
  while (DSPCheckMailToDSP()) {
  }
  DSPSendMailToDSP((u32)(task->iram_addr & 0xffff));
  while (DSPCheckMailToDSP()) {
  }

  DSPSendMailToDSP(MSG_BASE | 0xA002);
  while (DSPCheckMailToDSP()) {
  }
  DSPSendMailToDSP(task->iram_length);
  while (DSPCheckMailToDSP()) {
  }

  DSPSendMailToDSP(MSG_BASE | 0xB002);
  while (DSPCheckMailToDSP()) {
  }
  DSPSendMailToDSP(0x00000000);
  while (DSPCheckMailToDSP()) {
  }

  DSPSendMailToDSP(MSG_BASE | 0xD001);
  while (DSPCheckMailToDSP()) {
  }
  DSPSendMailToDSP((u32)(0xffff & task->dsp_init_vector));
  while (DSPCheckMailToDSP()) {
  }

  __DSP_debug_printf("DSP is booting task: 0x%08X\n", task);
  __DSP_debug_printf("__DSP_boot_task()  : IRAM MMEM ADDR: 0x%08X\n", (u32)(task->iram_mmem_addr));
  __DSP_debug_printf("__DSP_boot_task()  : IRAM DSP ADDR : 0x%08X\n", (u32)(task->iram_addr));
  __DSP_debug_printf("__DSP_boot_task()  : IRAM LENGTH   : 0x%08X\n", (u32)(task->iram_length));
  __DSP_debug_printf("__DSP_boot_task()  : DRAM MMEM ADDR: 0x%08X\n", (u32)(task->dram_length));
  __DSP_debug_printf("__DSP_boot_task()  : Start Vector  : 0x%08X\n", (u32)(task->dsp_init_vector));
}
#else
char __DSP_msgs[] = "DSP is booting task: 0x%08X\n\0\0\0\0"
                    "__DSP_boot_task()  : IRAM MMEM ADDR: 0x%08X\n\0\0\0\0"
                    "__DSP_boot_task()  : IRAM DSP ADDR : 0x%08X\n\0\0\0\0"
                    "__DSP_boot_task()  : IRAM LENGTH   : 0x%08X\n\0\0\0\0"
                    "__DSP_boot_task()  : DRAM MMEM ADDR: 0x%08X\n\0\0\0\0"
                    "__DSP_boot_task()  : Start Vector  : 0x%08X\n\0\0\0\0"
                    "__DSP_add_task() : Added task    : 0x%08X\n\0\0";

/* clang-format off */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __DSP_boot_task(DSPTaskInfo* task) {
  nofralloc
/* 803701E4 0036D144  7C 08 02 A6 */	mflr r0
/* 803701E8 0036D148  3C 80 80 3F */	lis r4, __DSP_msgs@ha
/* 803701EC 0036D14C  90 01 00 04 */	stw r0, 4(r1)
/* 803701F0 0036D150  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803701F4 0036D154  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803701F8 0036D158  3B E4 FA 50 */	addi r31, r4, __DSP_msgs@l
/* 803701FC 0036D15C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80370200 0036D160  3B C3 00 00 */	addi r30, r3, 0
lbl_80370204:
/* 80370204 0036D164  4B FF F7 C5 */	bl DSPCheckMailFromDSP
/* 80370208 0036D168  28 03 00 00 */	cmplwi r3, 0
/* 8037020C 0036D16C  41 82 FF F8 */	beq lbl_80370204
/* 80370210 0036D170  4B FF F7 C9 */	bl DSPReadMailFromDSP
/* 80370214 0036D174  90 61 00 0C */	stw r3, 0xc(r1)
/* 80370218 0036D178  3C 60 80 F4 */	lis r3, 0x80F3A001@ha
/* 8037021C 0036D17C  38 63 A0 01 */	addi r3, r3, 0x80F3A001@l
/* 80370220 0036D180  4B FF F7 D1 */	bl DSPSendMailToDSP
lbl_80370224:
/* 80370224 0036D184  4B FF F7 95 */	bl DSPCheckMailToDSP
/* 80370228 0036D188  28 03 00 00 */	cmplwi r3, 0
/* 8037022C 0036D18C  40 82 FF F8 */	bne lbl_80370224
/* 80370230 0036D190  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80370234 0036D194  4B FF F7 BD */	bl DSPSendMailToDSP
lbl_80370238:
/* 80370238 0036D198  4B FF F7 81 */	bl DSPCheckMailToDSP
/* 8037023C 0036D19C  28 03 00 00 */	cmplwi r3, 0
/* 80370240 0036D1A0  40 82 FF F8 */	bne lbl_80370238
/* 80370244 0036D1A4  3C 60 80 F4 */	lis r3, 0x80F3C002@ha
/* 80370248 0036D1A8  38 63 C0 02 */	addi r3, r3, 0x80F3C002@l
/* 8037024C 0036D1AC  4B FF F7 A5 */	bl DSPSendMailToDSP
lbl_80370250:
/* 80370250 0036D1B0  4B FF F7 69 */	bl DSPCheckMailToDSP
/* 80370254 0036D1B4  28 03 00 00 */	cmplwi r3, 0
/* 80370258 0036D1B8  40 82 FF F8 */	bne lbl_80370250
/* 8037025C 0036D1BC  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80370260 0036D1C0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80370264 0036D1C4  4B FF F7 8D */	bl DSPSendMailToDSP
lbl_80370268:
/* 80370268 0036D1C8  4B FF F7 51 */	bl DSPCheckMailToDSP
/* 8037026C 0036D1CC  28 03 00 00 */	cmplwi r3, 0
/* 80370270 0036D1D0  40 82 FF F8 */	bne lbl_80370268
/* 80370274 0036D1D4  3C 60 80 F4 */	lis r3, 0x80F3A002@ha
/* 80370278 0036D1D8  38 63 A0 02 */	addi r3, r3, 0x80F3A002@l
/* 8037027C 0036D1DC  4B FF F7 75 */	bl DSPSendMailToDSP
lbl_80370280:
/* 80370280 0036D1E0  4B FF F7 39 */	bl DSPCheckMailToDSP
/* 80370284 0036D1E4  28 03 00 00 */	cmplwi r3, 0
/* 80370288 0036D1E8  40 82 FF F8 */	bne lbl_80370280
/* 8037028C 0036D1EC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80370290 0036D1F0  4B FF F7 61 */	bl DSPSendMailToDSP
lbl_80370294:
/* 80370294 0036D1F4  4B FF F7 25 */	bl DSPCheckMailToDSP
/* 80370298 0036D1F8  28 03 00 00 */	cmplwi r3, 0
/* 8037029C 0036D1FC  40 82 FF F8 */	bne lbl_80370294
/* 803702A0 0036D200  3C 60 80 F4 */	lis r3, 0x80F3B002@ha
/* 803702A4 0036D204  38 63 B0 02 */	addi r3, r3, 0x80F3B002@l
/* 803702A8 0036D208  4B FF F7 49 */	bl DSPSendMailToDSP
lbl_803702AC:
/* 803702AC 0036D20C  4B FF F7 0D */	bl DSPCheckMailToDSP
/* 803702B0 0036D210  28 03 00 00 */	cmplwi r3, 0
/* 803702B4 0036D214  40 82 FF F8 */	bne lbl_803702AC
/* 803702B8 0036D218  38 60 00 00 */	li r3, 0
/* 803702BC 0036D21C  4B FF F7 35 */	bl DSPSendMailToDSP
lbl_803702C0:
/* 803702C0 0036D220  4B FF F6 F9 */	bl DSPCheckMailToDSP
/* 803702C4 0036D224  28 03 00 00 */	cmplwi r3, 0
/* 803702C8 0036D228  40 82 FF F8 */	bne lbl_803702C0
/* 803702CC 0036D22C  3C 60 80 F4 */	lis r3, 0x80F3D001@ha
/* 803702D0 0036D230  38 63 D0 01 */	addi r3, r3, 0x80F3D001@l
/* 803702D4 0036D234  4B FF F7 1D */	bl DSPSendMailToDSP
lbl_803702D8:
/* 803702D8 0036D238  4B FF F6 E1 */	bl DSPCheckMailToDSP
/* 803702DC 0036D23C  28 03 00 00 */	cmplwi r3, 0
/* 803702E0 0036D240  40 82 FF F8 */	bne lbl_803702D8
/* 803702E4 0036D244  A0 7E 00 24 */	lhz r3, 0x24(r30)
/* 803702E8 0036D248  4B FF F7 09 */	bl DSPSendMailToDSP
lbl_803702EC:
/* 803702EC 0036D24C  4B FF F6 CD */	bl DSPCheckMailToDSP
/* 803702F0 0036D250  28 03 00 00 */	cmplwi r3, 0
/* 803702F4 0036D254  40 82 FF F8 */	bne lbl_803702EC
/* 803702F8 0036D258  38 7F 00 00 */	addi r3, r31, 0
/* 803702FC 0036D25C  4C C6 31 82 */	crclr 6
/* 80370300 0036D260  38 9E 00 00 */	addi r4, r30, 0
/* 80370304 0036D264  4B FF F8 CD */	bl __DSP_debug_printf
/* 80370308 0036D268  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8037030C 0036D26C  38 7F 00 20 */	addi r3, r31, 0x20
/* 80370310 0036D270  4C C6 31 82 */	crclr 6
/* 80370314 0036D274  4B FF F8 BD */	bl __DSP_debug_printf
/* 80370318 0036D278  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8037031C 0036D27C  38 7F 00 50 */	addi r3, r31, 0x50
/* 80370320 0036D280  4C C6 31 82 */	crclr 6
/* 80370324 0036D284  4B FF F8 AD */	bl __DSP_debug_printf
/* 80370328 0036D288  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8037032C 0036D28C  38 7F 00 80 */	addi r3, r31, 0x80
/* 80370330 0036D290  4C C6 31 82 */	crclr 6
/* 80370334 0036D294  4B FF F8 9D */	bl __DSP_debug_printf
/* 80370338 0036D298  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 8037033C 0036D29C  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 80370340 0036D2A0  4C C6 31 82 */	crclr 6
/* 80370344 0036D2A4  4B FF F8 8D */	bl __DSP_debug_printf
/* 80370348 0036D2A8  A0 9E 00 24 */	lhz r4, 0x24(r30)
/* 8037034C 0036D2AC  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 80370350 0036D2B0  4C C6 31 82 */	crclr 6
/* 80370354 0036D2B4  4B FF F8 7D */	bl __DSP_debug_printf
/* 80370358 0036D2B8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8037035C 0036D2BC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80370360 0036D2C0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80370364 0036D2C4  38 21 00 18 */	addi r1, r1, 0x18
/* 80370368 0036D2C8  7C 08 03 A6 */	mtlr r0
/* 8037036C 0036D2CC  4E 80 00 20 */	blr
}
#pragma pop
/* clang-format on */
#endif

void __DSP_insert_task(DSPTaskInfo* task) {

  DSPTaskInfo* temp;

  if (__DSP_first_task == NULL) {
    __DSP_first_task = __DSP_last_task = __DSP_curr_task = task;
    task->next = task->prev = NULL;
  } else {
    temp = __DSP_first_task;

    while (temp) {
      if (task->priority < temp->priority) {
        task->prev = temp->prev;
        temp->prev = task;
        task->next = temp;
        if (task->prev == NULL) {
          __DSP_first_task = task;
        } else {
          (task->prev)->next = task;
        }
        break;
      }
      temp = temp->next;
    }

    if (temp == NULL) {
      __DSP_last_task->next = task;
      task->next = NULL;
      task->prev = __DSP_last_task;
      __DSP_last_task = task;
    }
  }
}

void __DSP_add_task(DSPTaskInfo* task) {
  if (__DSP_last_task == NULL) {
    __DSP_first_task = __DSP_last_task = __DSP_curr_task = task;
    task->next = task->prev = NULL;
  } else {
    __DSP_last_task->next = task;
    task->next = NULL;
    task->prev = __DSP_last_task;
    __DSP_last_task = task;
  }

  task->state = DSP_TASK_STATE_INIT;

  __DSP_debug_printf("__DSP_add_task() : Added task    : 0x%08X\n", task);
}

void __DSP_remove_task(DSPTaskInfo* task) {

  task->flags = DSP_TASK_FLAG_CLEARALL;
  task->state = DSP_TASK_STATE_DONE;

  if (__DSP_first_task == task) {
    if (task->next) {
      __DSP_first_task = (task->next);
      task->next->prev = NULL;
    } else {
      __DSP_first_task = __DSP_last_task = __DSP_curr_task = NULL;
    }
  } else if (__DSP_last_task == task) {
    __DSP_last_task = (task->prev);
    task->prev->next = NULL;
    __DSP_curr_task = __DSP_first_task;

  } else {
    __DSP_curr_task = task->next;
    task->prev->next = task->next;
    task->next->prev = task->prev;
  }
}
