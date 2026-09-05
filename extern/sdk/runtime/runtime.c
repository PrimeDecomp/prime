/* clang-format off */
#define SAVE_FPR(reg) _savefpr_ ## reg
#define RESTORE_FPR(reg) _restfpr_ ## reg
#define SAVE_GPR(reg) _savegpr_ ## reg
#define RESTORE_GPR(reg) _restgpr_ ## reg

#define ENTRY_SAVE_FPR(reg) entry SAVE_FPR(reg)
#define ENTRY_RESTORE_FPR(reg) entry RESTORE_FPR(reg)
#define ENTRY_SAVE_GPR(reg) entry SAVE_GPR(reg)
#define ENTRY_RESTORE_GPR(reg) entry RESTORE_GPR(reg)

#define SAVE_FPR2(reg) _savef ## reg
#define RESTORE_FPR2(reg) _restf ## reg
#define ENTRY_SAVE_FPR2(reg)
#define ENTRY_RESTORE_FPR2(reg)


#ifdef __cplusplus
extern "C" {
#endif

void SAVE_FPR(14)(void);
void SAVE_FPR(15)(void);
void SAVE_FPR(16)(void);
void SAVE_FPR(17)(void);
void SAVE_FPR(18)(void);
void SAVE_FPR(19)(void);
void SAVE_FPR(20)(void);
void SAVE_FPR(21)(void);
void SAVE_FPR(22)(void);
void SAVE_FPR(23)(void);
void SAVE_FPR(24)(void);
void SAVE_FPR(25)(void);
void SAVE_FPR(26)(void);
void SAVE_FPR(27)(void);
void SAVE_FPR(28)(void);
void SAVE_FPR(29)(void);
void SAVE_FPR(30)(void);
void SAVE_FPR(31)(void);
void SAVE_FPR2(14)(void);
void SAVE_FPR2(15)(void);
void SAVE_FPR2(16)(void);
void SAVE_FPR2(17)(void);
void SAVE_FPR2(18)(void);
void SAVE_FPR2(19)(void);
void SAVE_FPR2(20)(void);
void SAVE_FPR2(21)(void);
void SAVE_FPR2(22)(void);
void SAVE_FPR2(23)(void);
void SAVE_FPR2(24)(void);
void SAVE_FPR2(25)(void);
void SAVE_FPR2(26)(void);
void SAVE_FPR2(27)(void);
void SAVE_FPR2(28)(void);
void SAVE_FPR2(29)(void);
void SAVE_FPR2(30)(void);
void SAVE_FPR2(31)(void);
void RESTORE_FPR(14)(void);
void RESTORE_FPR(15)(void);
void RESTORE_FPR(16)(void);
void RESTORE_FPR(17)(void);
void RESTORE_FPR(18)(void);
void RESTORE_FPR(19)(void);
void RESTORE_FPR(20)(void);
void RESTORE_FPR(21)(void);
void RESTORE_FPR(22)(void);
void RESTORE_FPR(23)(void);
void RESTORE_FPR(24)(void);
void RESTORE_FPR(25)(void);
void RESTORE_FPR(26)(void);
void RESTORE_FPR(27)(void);
void RESTORE_FPR(28)(void);
void RESTORE_FPR(29)(void);
void RESTORE_FPR(30)(void);
void RESTORE_FPR(31)(void);
void RESTORE_FPR2(14)(void);
void RESTORE_FPR2(15)(void);
void RESTORE_FPR2(16)(void);
void RESTORE_FPR2(17)(void);
void RESTORE_FPR2(18)(void);
void RESTORE_FPR2(19)(void);
void RESTORE_FPR2(20)(void);
void RESTORE_FPR2(21)(void);
void RESTORE_FPR2(22)(void);
void RESTORE_FPR2(23)(void);
void RESTORE_FPR2(24)(void);
void RESTORE_FPR2(25)(void);
void RESTORE_FPR2(26)(void);
void RESTORE_FPR2(27)(void);
void RESTORE_FPR2(28)(void);
void RESTORE_FPR2(29)(void);
void RESTORE_FPR2(30)(void);
void RESTORE_FPR2(31)(void);

void SAVE_GPR(14)(void);
void SAVE_GPR(15)(void);
void SAVE_GPR(16)(void);
void SAVE_GPR(17)(void);
void SAVE_GPR(18)(void);
void SAVE_GPR(19)(void);
void SAVE_GPR(20)(void);
void SAVE_GPR(21)(void);
void SAVE_GPR(22)(void);
void SAVE_GPR(23)(void);
void SAVE_GPR(24)(void);
void SAVE_GPR(25)(void);
void SAVE_GPR(26)(void);
void SAVE_GPR(27)(void);
void SAVE_GPR(28)(void);
void SAVE_GPR(29)(void);
void SAVE_GPR(30)(void);
void SAVE_GPR(31)(void);
void RESTORE_GPR(14)(void);
void RESTORE_GPR(15)(void);
void RESTORE_GPR(16)(void);
void RESTORE_GPR(17)(void);
void RESTORE_GPR(18)(void);
void RESTORE_GPR(19)(void);
void RESTORE_GPR(20)(void);
void RESTORE_GPR(21)(void);
void RESTORE_GPR(22)(void);
void RESTORE_GPR(23)(void);
void RESTORE_GPR(24)(void);
void RESTORE_GPR(25)(void);
void RESTORE_GPR(26)(void);
void RESTORE_GPR(27)(void);
void RESTORE_GPR(28)(void);
void RESTORE_GPR(29)(void);
void RESTORE_GPR(30)(void);
void RESTORE_GPR(31)(void);

static const unsigned long long __constants[] = {
  0x0000000000000000, // 0.0
  0x41F0000000000000, // 2**32
  0x41E0000000000000, // 2**31
};


asm unsigned long __cvt_fp2unsigned(register double d) {
  nofralloc 
  stwu r1, -0x10(r1)
  lis r4, __constants@h
  ori r4, r4, __constants@l
  li r3, 0
  lfd f0, 0(r4)
  lfd f3, 8(r4)
  lfd f4, 0x10(r4)
  fcmpu cr0, f1, f0
  fcmpu cr6, f1, f3
  blt lbl_803899A8
  addi r3, r3, -1
  bge cr6, lbl_803899A8
  fcmpu cr7, f1, f4
  fmr f2, f1
  blt cr7, lbl_80389994
  fsub f2, f1, f4
lbl_80389994:
  fctiwz f2, f2
  stfd f2, 8(r1)
  lwz r3, 0xc(r1)
  blt cr7, lbl_803899A8
  addis r3, r3, 0x8000
lbl_803899A8:
  addi r1, r1, 0x10
  blr
}


asm void __save_fpr() {
  ENTRY_SAVE_FPR(14)
	ENTRY_SAVE_FPR2(14)
		stfd	fp14,-144 (r11)
	ENTRY_SAVE_FPR(15)
	ENTRY_SAVE_FPR2(15)
		stfd	fp15,-136 (r11)
	ENTRY_SAVE_FPR(16)
	ENTRY_SAVE_FPR2(16)
		stfd	fp16,-128 (r11)
	ENTRY_SAVE_FPR(17)
	ENTRY_SAVE_FPR2(17)
		stfd	fp17,-120 (r11)
	ENTRY_SAVE_FPR(18)
	ENTRY_SAVE_FPR2(18)
		stfd	fp18,-112 (r11)
	ENTRY_SAVE_FPR(19)
	ENTRY_SAVE_FPR2(19)
		stfd	fp19,-104 (r11)
	ENTRY_SAVE_FPR(20)
	ENTRY_SAVE_FPR2(20)
		stfd	fp20,-96 (r11)
	ENTRY_SAVE_FPR(21)
	ENTRY_SAVE_FPR2(21)
		stfd	fp21,-88 (r11)
	ENTRY_SAVE_FPR(22)
	ENTRY_SAVE_FPR2(22)
		stfd	fp22,-80(r11)
	ENTRY_SAVE_FPR(23)
	ENTRY_SAVE_FPR2(23)
		stfd	fp23,-72(r11)
	ENTRY_SAVE_FPR(24)
	ENTRY_SAVE_FPR2(24)
		stfd	fp24,-64(r11)
	ENTRY_SAVE_FPR(25)
	ENTRY_SAVE_FPR2(25)
		stfd	fp25,-56(r11)
	ENTRY_SAVE_FPR(26)
	ENTRY_SAVE_FPR2(26)
		stfd	fp26,-48(r11)
	ENTRY_SAVE_FPR(27)
	ENTRY_SAVE_FPR2(27)
		stfd	fp27,-40(r11)
	ENTRY_SAVE_FPR(28)
	ENTRY_SAVE_FPR2(28)
		stfd	fp28,-32(r11)
	ENTRY_SAVE_FPR(29)
	ENTRY_SAVE_FPR2(29)
		stfd	fp29,-24(r11)
	ENTRY_SAVE_FPR(30)
	ENTRY_SAVE_FPR2(30)
		stfd	fp30,-16(r11)
	ENTRY_SAVE_FPR(31)
	ENTRY_SAVE_FPR2(31)
		stfd	fp31,-8(r11)
		blr
}

asm void __restore_fpr(void) {
  nofralloc
  ENTRY_RESTORE_FPR(14)
  ENTRY_RESTORE_FPR2(14)
  lfd		fp14,-144(r11)
  ENTRY_RESTORE_FPR(15)
  ENTRY_RESTORE_FPR2(15)
  lfd		fp15,-136(r11)
  ENTRY_RESTORE_FPR(16)
  ENTRY_RESTORE_FPR2(16)
  lfd		fp16,-128(r11)
  ENTRY_RESTORE_FPR(17)
  ENTRY_RESTORE_FPR2(17)
  lfd		fp17,-120(r11)
  ENTRY_RESTORE_FPR(18)
  ENTRY_RESTORE_FPR2(18)
  lfd		fp18,-112(r11)
  ENTRY_RESTORE_FPR(19)
  ENTRY_RESTORE_FPR2(19)
  lfd		fp19,-104(r11)
  ENTRY_RESTORE_FPR(20)
  ENTRY_RESTORE_FPR2(20)
  lfd		fp20,-96(r11)
  ENTRY_RESTORE_FPR(21)
  ENTRY_RESTORE_FPR2(21)
  lfd		fp21,-88(r11)
  ENTRY_RESTORE_FPR(22)
  ENTRY_RESTORE_FPR2(22)
  lfd		fp22,-80(r11)
  ENTRY_RESTORE_FPR(23)
  ENTRY_RESTORE_FPR2(23)
  lfd		fp23,-72(r11)
  ENTRY_RESTORE_FPR(24)
  ENTRY_RESTORE_FPR2(24)
  lfd		fp24,-64(r11)
  ENTRY_RESTORE_FPR(25)
  ENTRY_RESTORE_FPR2(25)
  lfd		fp25,-56(r11)
  ENTRY_RESTORE_FPR(26)
  ENTRY_RESTORE_FPR2(26)
  lfd		fp26,-48(r11)
  ENTRY_RESTORE_FPR(27)
  ENTRY_RESTORE_FPR2(27)
  lfd		fp27,-40(r11)
  ENTRY_RESTORE_FPR(28)
  ENTRY_RESTORE_FPR2(28)
  lfd		fp28,-32(r11)
  ENTRY_RESTORE_FPR(29)
  ENTRY_RESTORE_FPR2(29)
  lfd		fp29,-24(r11)
  ENTRY_RESTORE_FPR(30)
  ENTRY_RESTORE_FPR2(30)
  lfd		fp30,-16(r11)
  ENTRY_RESTORE_FPR(31)
  ENTRY_RESTORE_FPR2(31)
  lfd		fp31,-8(r11)
  blr
}

asm void __save_gpr(void) {
	nofralloc
  ENTRY_SAVE_GPR(14)
  stw		r14,-72(r11)
  ENTRY_SAVE_GPR(15)
  stw		r15,-68(r11)
  ENTRY_SAVE_GPR(16)
  stw		r16,-64(r11)
  ENTRY_SAVE_GPR(17)
  stw		r17,-60(r11)
  ENTRY_SAVE_GPR(18)
  stw		r18,-56(r11)
  ENTRY_SAVE_GPR(19)
  stw		r19,-52(r11)
  ENTRY_SAVE_GPR(20)
  stw		r20,-48(r11)
  ENTRY_SAVE_GPR(21)
  stw		r21,-44(r11)
  ENTRY_SAVE_GPR(22)
  stw		r22,-40(r11)
  ENTRY_SAVE_GPR(23)
  stw		r23,-36(r11)
  ENTRY_SAVE_GPR(24)
  stw		r24,-32(r11)
  ENTRY_SAVE_GPR(25)
  stw		r25,-28(r11)
  ENTRY_SAVE_GPR(26)
  stw		r26,-24(r11)
  ENTRY_SAVE_GPR(27)
  stw		r27,-20(r11)
  ENTRY_SAVE_GPR(28)
  stw		r28,-16(r11)
  ENTRY_SAVE_GPR(29)
  stw		r29,-12(r11)
  ENTRY_SAVE_GPR(30)
  stw		r30,-8(r11)
  ENTRY_SAVE_GPR(31)
  stw		r31,-4(r11)
  blr
}

asm void __restore_gpr(void) {
  nofralloc
  ENTRY_RESTORE_GPR(14)
  lwz		r14,-72(r11)
  ENTRY_RESTORE_GPR(15)
  lwz		r15,-68(r11)
  ENTRY_RESTORE_GPR(16)
  lwz		r16,-64(r11)
  ENTRY_RESTORE_GPR(17)
  lwz		r17,-60(r11)
  ENTRY_RESTORE_GPR(18)
  lwz		r18,-56(r11)
  ENTRY_RESTORE_GPR(19)
  lwz		r19,-52(r11)
  ENTRY_RESTORE_GPR(20)
  lwz		r20,-48(r11)
  ENTRY_RESTORE_GPR(21)
  lwz		r21,-44(r11)
  ENTRY_RESTORE_GPR(22)
  lwz		r22,-40(r11)
  ENTRY_RESTORE_GPR(23)
  lwz		r23,-36(r11)
  ENTRY_RESTORE_GPR(24)
  lwz		r24,-32(r11)
  ENTRY_RESTORE_GPR(25)
  lwz		r25,-28(r11)
  ENTRY_RESTORE_GPR(26)
  lwz		r26,-24(r11)
  ENTRY_RESTORE_GPR(27)
  lwz		r27,-20(r11)
  ENTRY_RESTORE_GPR(28)
  lwz		r28,-16(r11)
  ENTRY_RESTORE_GPR(29)
  lwz		r29,-12(r11)
  ENTRY_RESTORE_GPR(30)
  lwz		r30,-8(r11)
  ENTRY_RESTORE_GPR(31)
  lwz		r31,-4(r11)
  blr
}

asm void __div2u(void) {
  nofralloc
  cmpwi r3, 0
  cntlzw r0, r3
  cntlzw r9, r4
  bne lbl_80389AF4
  addi r0, r9, 0x20
lbl_80389AF4:
  cmpwi r5, 0
  cntlzw r9, r5
  cntlzw r10, r6
  bne lbl_80389B08
  addi r9, r10, 0x20
lbl_80389B08:
  cmpw r0, r9
  subfic r10, r0, 0x40
  bgt lbl_80389BC0
  addi r9, r9, 1
  subfic r9, r9, 0x40
  add r0, r0, r9
  subf r9, r9, r10
  mtctr r9
  cmpwi r9, 0x20
  addi r7, r9, -32
  blt lbl_80389B40
  srw r8, r3, r7
  li r7, 0
  b lbl_80389B54
lbl_80389B40:
  srw r8, r4, r9
  subfic r7, r9, 0x20
  slw r7, r3, r7
  or r8, r8, r7
  srw r7, r3, r9
lbl_80389B54:
  cmpwi r0, 0x20
  addic r9, r0, -32
  blt lbl_80389B6C
  slw r3, r4, r9
  li r4, 0
  b lbl_80389B80
lbl_80389B6C:
  slw r3, r3, r0
  subfic r9, r0, 0x20
  srw r9, r4, r9
  or r3, r3, r9
  slw r4, r4, r0
lbl_80389B80:
  li r10, -1
  addic r7, r7, 0
lbl_80389B88:
  adde r4, r4, r4
  adde r3, r3, r3
  adde r8, r8, r8
  adde r7, r7, r7
  subfc r0, r6, r8
  subfe. r9, r5, r7
  blt lbl_80389BB0
  mr r8, r0
  mr r7, r9
  addic r0, r10, 1
lbl_80389BB0:
  bdnz lbl_80389B88
  adde r4, r4, r4
  adde r3, r3, r3
  blr
lbl_80389BC0:
  li r4, 0
  li r3, 0
  blr
}

asm void __div2i(void) {
  nofralloc
  stwu r1, -0x10(r1)
  rlwinm. r9, r3, 0, 0, 0
  beq lbl_80389BE0
  subfic r4, r4, 0
  subfze r3, r3
lbl_80389BE0:
  stw r9, 8(r1)
  rlwinm. r10, r5, 0, 0, 0
  beq lbl_80389BF4
  subfic r6, r6, 0
  subfze r5, r5
lbl_80389BF4:
  stw r10, 0xc(r1)
  cmpwi r3, 0
  cntlzw r0, r3
  cntlzw r9, r4
  bne lbl_80389C0C
  addi r0, r9, 0x20
lbl_80389C0C:
  cmpwi r5, 0
  cntlzw r9, r5
  cntlzw r10, r6
  bne lbl_80389C20
  addi r9, r10, 0x20
lbl_80389C20:
  cmpw r0, r9
  subfic r10, r0, 0x40
  bgt lbl_80389CF4
  addi r9, r9, 1
  subfic r9, r9, 0x40
  add r0, r0, r9
  subf r9, r9, r10
  mtctr r9
  cmpwi r9, 0x20
  addi r7, r9, -32
  blt lbl_80389C58
  srw r8, r3, r7
  li r7, 0
  b lbl_80389C6C
lbl_80389C58:
  srw r8, r4, r9
  subfic r7, r9, 0x20
  slw r7, r3, r7
  or r8, r8, r7
  srw r7, r3, r9
lbl_80389C6C:
  cmpwi r0, 0x20
  addic r9, r0, -32
  blt lbl_80389C84
  slw r3, r4, r9
  li r4, 0
  b lbl_80389C98
lbl_80389C84:
  slw r3, r3, r0
  subfic r9, r0, 0x20
  srw r9, r4, r9
  or r3, r3, r9
  slw r4, r4, r0
lbl_80389C98:
  li r10, -1
  addic r7, r7, 0
lbl_80389CA0:
  adde r4, r4, r4
  adde r3, r3, r3
  adde r8, r8, r8
  adde r7, r7, r7
  subfc r0, r6, r8
  subfe. r9, r5, r7
  blt lbl_80389CC8
  mr r8, r0
  mr r7, r9
  addic r0, r10, 1
lbl_80389CC8:
  bdnz lbl_80389CA0
  adde r4, r4, r4
  adde r3, r3, r3
  lwz r9, 8(r1)
  lwz r10, 0xc(r1)
  xor. r7, r9, r10
  beq lbl_80389CFC
  cmpwi r9, 0
  subfic r4, r4, 0
  subfze r3, r3
  b lbl_80389CFC
lbl_80389CF4:
  li r4, 0
  li r3, 0
lbl_80389CFC:
  addi r1, r1, 0x10
  blr
}

asm void __mod2u() {
  nofralloc
  cmpwi r3, 0
  cntlzw r0, r3
  cntlzw r9, r4
  bne lbl_80389D18
  addi r0, r9, 0x20
lbl_80389D18:
  cmpwi r5, 0
  cntlzw r9, r5
  cntlzw r10, r6
  bne lbl_80389D2C
  addi r9, r10, 0x20
lbl_80389D2C:
  cmpw r0, r9
  subfic r10, r0, 0x40
  bgtlr
  addi r9, r9, 1
  subfic r9, r9, 0x40
  add r0, r0, r9
  subf r9, r9, r10
  mtctr r9
  cmpwi r9, 0x20
  addi r7, r9, -32
  blt lbl_80389D64
  srw r8, r3, r7
  li r7, 0
  b lbl_80389D78
lbl_80389D64:
  srw r8, r4, r9
  subfic r7, r9, 0x20
  slw r7, r3, r7
  or r8, r8, r7
  srw r7, r3, r9
lbl_80389D78:
  cmpwi r0, 0x20
  addic r9, r0, -32
  blt lbl_80389D90
  slw r3, r4, r9
  li r4, 0
  b lbl_80389DA4
lbl_80389D90:
  slw r3, r3, r0
  subfic r9, r0, 0x20
  srw r9, r4, r9
  or r3, r3, r9
  slw r4, r4, r0
lbl_80389DA4:
  li r10, -1
  addic r7, r7, 0
lbl_80389DAC:
  adde r4, r4, r4
  adde r3, r3, r3
  adde r8, r8, r8
  adde r7, r7, r7
  subfc r0, r6, r8
  subfe. r9, r5, r7
  blt lbl_80389DD4
  mr r8, r0
  mr r7, r9
  addic r0, r10, 1
lbl_80389DD4:
  bdnz lbl_80389DAC
  mr r4, r8
  mr r3, r7
  blr
  blr
}

asm void __mod2i(void) {
  nofralloc
  cmpwi cr7, r3, 0
  bge cr7, lbl_80389DF8
  subfic r4, r4, 0
  subfze r3, r3
lbl_80389DF8:
  cmpwi r5, 0
  bge lbl_80389E08
  subfic r6, r6, 0
  subfze r5, r5
lbl_80389E08:
  cmpwi r3, 0
  cntlzw r0, r3
  cntlzw r9, r4
  bne lbl_80389E1C
  addi r0, r9, 0x20
lbl_80389E1C:
  cmpwi r5, 0
  cntlzw r9, r5
  cntlzw r10, r6
  bne lbl_80389E30
  addi r9, r10, 0x20
lbl_80389E30:
  cmpw r0, r9
  subfic r10, r0, 0x40
  bgt lbl_80389EE4
  addi r9, r9, 1
  subfic r9, r9, 0x40
  add r0, r0, r9
  subf r9, r9, r10
  mtctr r9
  cmpwi r9, 0x20
  addi r7, r9, -32
  blt lbl_80389E68
  srw r8, r3, r7
  li r7, 0
  b lbl_80389E7C
lbl_80389E68:
  srw r8, r4, r9
  subfic r7, r9, 0x20
  slw r7, r3, r7
  or r8, r8, r7
  srw r7, r3, r9
lbl_80389E7C:
  cmpwi r0, 0x20
  addic r9, r0, -32
  blt lbl_80389E94
  slw r3, r4, r9
  li r4, 0
  b lbl_80389EA8
lbl_80389E94:
  slw r3, r3, r0
  subfic r9, r0, 0x20
  srw r9, r4, r9
  or r3, r3, r9
  slw r4, r4, r0
lbl_80389EA8:
  li r10, -1
  addic r7, r7, 0
lbl_80389EB0:
  adde r4, r4, r4
  adde r3, r3, r3
  adde r8, r8, r8
  adde r7, r7, r7
  subfc r0, r6, r8
  subfe. r9, r5, r7
  blt lbl_80389ED8
  mr r8, r0
  mr r7, r9
  addic r0, r10, 1
lbl_80389ED8:
  bdnz lbl_80389EB0
  mr r4, r8
  mr r3, r7
lbl_80389EE4:
  bgelr cr7
  subfic r4, r4, 0
  subfze r3, r3
  blr
}

asm void __shl2i() {
  nofralloc
  subfic r8, r5, 0x20
  addic r9, r5, -32
  slw r3, r3, r5
  srw r10, r4, r8
  or r3, r3, r10
  slw r10, r4, r9
  or r3, r3, r10
  slw r4, r4, r5
  blr
}

asm void __shr2u() {
  nofralloc
  subfic r8, r5, 0x20
  addic r9, r5, -32
  srw r4, r4, r5
  slw r10, r3, r8
  or r4, r4, r10
  srw r10, r3, r9
  or r4, r4, r10
  srw r3, r3, r5
  blr
}

asm void __shr2i() {
  nofralloc
  subfic r8, r5, 0x20
  addic. r9, r5, -32
  srw r4, r4, r5
  slw r10, r3, r8
  or r4, r4, r10
  sraw r10, r3, r9
  ble lbl_80389F5C
  or r4, r4, r10
lbl_80389F5C:
  sraw r3, r3, r5
  blr
}

asm void __cvt_sll_flt(void) {
  nofralloc
  stwu r1, -0x10(r1)
  rlwinm. r5, r3, 0, 0, 0
  beq lbl_80389F78
  subfic r4, r4, 0
  subfze r3, r3
lbl_80389F78:
  or. r7, r3, r4
  li r6, 0
  beq lbl_8038A000
  cntlzw r7, r3
  cntlzw r8, r4
  rlwinm r9, r7, 0x1a, 0, 4
  srawi r9, r9, 0x1f
  and r9, r9, r8
  add r7, r7, r9
  subfic r8, r7, 0x20
  addic r9, r7, -32
  slw r3, r3, r7
  srw r10, r4, r8
  or r3, r3, r10
  slw r10, r4, r9
  or r3, r3, r10
  slw r4, r4, r7
  subf r6, r7, r6
  clrlwi r7, r4, 0x15
  cmpwi r7, 0x400
  addi r6, r6, 0x43e
  blt lbl_80389FE8
  bgt lbl_80389FDC
  rlwinm. r7, r4, 0, 0x14, 0x14
  beq lbl_80389FE8
lbl_80389FDC:
  addic r4, r4, 0x800
  addze r3, r3
  addze r6, r6
lbl_80389FE8:
  rotlwi r4, r4, 0x15
  rlwimi r4, r3, 0x15, 0, 0xa
  rlwinm r3, r3, 0x15, 0xc, 0x1f
  slwi r6, r6, 0x14
  or r3, r6, r3
  or r3, r5, r3
lbl_8038A000:
  stw r3, 8(r1)
  stw r4, 0xc(r1)
  lfd f1, 8(r1)
  frsp f1, f1
  addi r1, r1, 0x10
  blr
}

asm unsigned long __cvt_dbl_usll(register double d) {
  nofralloc
  stwu r1, -0x10(r1)
  stfd f1, 8(r1)
  lwz r3, 8(r1)
  lwz r4, 0xc(r1)
  rlwinm r5, r3, 0xc, 0x15, 0x1f
  cmplwi r5, 0x3ff
  bge lbl_8038A040
  li r3, 0
  li r4, 0
  b lbl_8038A0DC
lbl_8038A040:
  mr r6, r3
  clrlwi r3, r3, 0xc
  oris r3, r3, 0x10
  addi r5, r5, -1075
  cmpwi r5, 0
  bge lbl_8038A080
  neg r5, r5
  subfic r8, r5, 0x20
  addic r9, r5, -32
  srw r4, r4, r5
  slw r10, r3, r8
  or r4, r4, r10
  srw r10, r3, r9
  or r4, r4, r10
  srw r3, r3, r5
  b lbl_8038A0CC
lbl_8038A080:
  cmpwi r5, 0xa
  ble+ lbl_8038A0AC
  rlwinm. r6, r6, 0, 0, 0
  beq lbl_8038A09C
  lis r3, 0x8000
  li r4, 0
  b lbl_8038A0DC
lbl_8038A09C:
  lis r3, 0x7FFFFFFF@h
  ori r3, r3, 0x7FFFFFFF@l
  li r4, -1
  b lbl_8038A0DC
lbl_8038A0AC:
  subfic r8, r5, 0x20
  addic r9, r5, -32
  slw r3, r3, r5
  srw r10, r4, r8
  or r3, r3, r10
  slw r10, r4, r9
  or r3, r3, r10
  slw r4, r4, r5
lbl_8038A0CC:
  rlwinm. r6, r6, 0, 0, 0
  beq lbl_8038A0DC
  subfic r4, r4, 0
  subfze r3, r3
lbl_8038A0DC:
  addi r1, r1, 0x10
  blr
}

#ifdef __cplusplus
}
#endif
