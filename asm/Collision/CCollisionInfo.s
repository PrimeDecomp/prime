.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global Swap__14CCollisionInfoFv
Swap__14CCollisionInfoFv:
/* 802CE0B8 002CB018  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 802CE0BC 002CB01C  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 802CE0C0 002CB020  FC 00 00 50 */	fneg f0, f0
/* 802CE0C4 002CB024  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 802CE0C8 002CB028  FC 20 08 50 */	fneg f1, f1
/* 802CE0CC 002CB02C  FC 40 10 50 */	fneg f2, f2
/* 802CE0D0 002CB030  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802CE0D4 002CB034  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 802CE0D8 002CB038  D0 43 00 50 */	stfs f2, 0x50(r3)
/* 802CE0DC 002CB03C  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 802CE0E0 002CB040  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 802CE0E4 002CB044  FC 00 00 50 */	fneg f0, f0
/* 802CE0E8 002CB048  C0 43 00 5C */	lfs f2, 0x5c(r3)
/* 802CE0EC 002CB04C  FC 20 08 50 */	fneg f1, f1
/* 802CE0F0 002CB050  FC 40 10 50 */	fneg f2, f2
/* 802CE0F4 002CB054  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 802CE0F8 002CB058  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 802CE0FC 002CB05C  D0 43 00 5C */	stfs f2, 0x5c(r3)
/* 802CE100 002CB060  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 802CE104 002CB064  80 C3 00 3C */	lwz r6, 0x3c(r3)
/* 802CE108 002CB068  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802CE10C 002CB06C  80 83 00 44 */	lwz r4, 0x44(r3)
/* 802CE110 002CB070  90 83 00 3C */	stw r4, 0x3c(r3)
/* 802CE114 002CB074  90 03 00 38 */	stw r0, 0x38(r3)
/* 802CE118 002CB078  90 C3 00 44 */	stw r6, 0x44(r3)
/* 802CE11C 002CB07C  90 A3 00 40 */	stw r5, 0x40(r3)
/* 802CE120 002CB080  4E 80 00 20 */	blr 

.global GetExtreme__14CCollisionInfoCFv
GetExtreme__14CCollisionInfoCFv:
/* 802CE124 002CB084  C0 24 00 00 */	lfs f1, 0(r4)
/* 802CE128 002CB088  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802CE12C 002CB08C  C0 64 00 04 */	lfs f3, 4(r4)
/* 802CE130 002CB090  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 802CE134 002CB094  EC 21 00 2A */	fadds f1, f1, f0
/* 802CE138 002CB098  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 802CE13C 002CB09C  EC A3 10 2A */	fadds f5, f3, f2
/* 802CE140 002CB0A0  C0 84 00 1C */	lfs f4, 0x1c(r4)
/* 802CE144 002CB0A4  C0 64 00 08 */	lfs f3, 8(r4)
/* 802CE148 002CB0A8  EC 21 00 2A */	fadds f1, f1, f0
/* 802CE14C 002CB0AC  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802CE150 002CB0B0  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 802CE154 002CB0B4  EC 63 10 2A */	fadds f3, f3, f2
/* 802CE158 002CB0B8  C0 44 00 20 */	lfs f2, 0x20(r4)
/* 802CE15C 002CB0BC  EC A5 20 2A */	fadds f5, f5, f4
/* 802CE160 002CB0C0  C0 84 00 28 */	lfs f4, 0x28(r4)
/* 802CE164 002CB0C4  EC 01 00 2A */	fadds f0, f1, f0
/* 802CE168 002CB0C8  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 802CE16C 002CB0CC  EC 43 10 2A */	fadds f2, f3, f2
/* 802CE170 002CB0D0  EC 65 20 2A */	fadds f3, f5, f4
/* 802CE174 002CB0D4  D0 03 00 00 */	stfs f0, 0(r3)
/* 802CE178 002CB0D8  EC 02 08 2A */	fadds f0, f2, f1
/* 802CE17C 002CB0DC  D0 63 00 04 */	stfs f3, 4(r3)
/* 802CE180 002CB0E0  D0 03 00 08 */	stfs f0, 8(r3)
/* 802CE184 002CB0E4  4E 80 00 20 */	blr 

.global __ct__14CCollisionInfoFQ214CCollisionInfo8EInvalid
__ct__14CCollisionInfoFQ214CCollisionInfo8EInvalid:
/* 802CE188 002CB0E8  C0 02 C4 98 */	lfs f0, lbl_805AE1B8@sda21(r2)
/* 802CE18C 002CB0EC  38 00 00 00 */	li r0, 0
/* 802CE190 002CB0F0  D0 03 00 00 */	stfs f0, 0(r3)
/* 802CE194 002CB0F4  D0 03 00 04 */	stfs f0, 4(r3)
/* 802CE198 002CB0F8  D0 03 00 08 */	stfs f0, 8(r3)
/* 802CE19C 002CB0FC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802CE1A0 002CB100  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802CE1A4 002CB104  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802CE1A8 002CB108  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802CE1AC 002CB10C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802CE1B0 002CB110  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802CE1B4 002CB114  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802CE1B8 002CB118  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802CE1BC 002CB11C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802CE1C0 002CB120  98 03 00 30 */	stb r0, 0x30(r3)
/* 802CE1C4 002CB124  98 03 00 31 */	stb r0, 0x31(r3)
/* 802CE1C8 002CB128  90 03 00 3C */	stw r0, 0x3c(r3)
/* 802CE1CC 002CB12C  90 03 00 38 */	stw r0, 0x38(r3)
/* 802CE1D0 002CB130  90 03 00 44 */	stw r0, 0x44(r3)
/* 802CE1D4 002CB134  90 03 00 40 */	stw r0, 0x40(r3)
/* 802CE1D8 002CB138  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802CE1DC 002CB13C  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 802CE1E0 002CB140  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 802CE1E4 002CB144  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 802CE1E8 002CB148  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 802CE1EC 002CB14C  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 802CE1F0 002CB150  4E 80 00 20 */	blr 

.global GetSwapped__14CCollisionInfoCFv
GetSwapped__14CCollisionInfoCFv:
/* 802CE1F4 002CB154  C0 04 00 00 */	lfs f0, 0(r4)
/* 802CE1F8 002CB158  D0 03 00 00 */	stfs f0, 0(r3)
/* 802CE1FC 002CB15C  C0 04 00 04 */	lfs f0, 4(r4)
/* 802CE200 002CB160  D0 03 00 04 */	stfs f0, 4(r3)
/* 802CE204 002CB164  C0 04 00 08 */	lfs f0, 8(r4)
/* 802CE208 002CB168  D0 03 00 08 */	stfs f0, 8(r3)
/* 802CE20C 002CB16C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802CE210 002CB170  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802CE214 002CB174  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 802CE218 002CB178  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802CE21C 002CB17C  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 802CE220 002CB180  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802CE224 002CB184  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 802CE228 002CB188  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802CE22C 002CB18C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 802CE230 002CB190  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802CE234 002CB194  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 802CE238 002CB198  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802CE23C 002CB19C  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 802CE240 002CB1A0  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802CE244 002CB1A4  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 802CE248 002CB1A8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802CE24C 002CB1AC  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 802CE250 002CB1B0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802CE254 002CB1B4  88 04 00 30 */	lbz r0, 0x30(r4)
/* 802CE258 002CB1B8  98 03 00 30 */	stb r0, 0x30(r3)
/* 802CE25C 002CB1BC  88 04 00 31 */	lbz r0, 0x31(r4)
/* 802CE260 002CB1C0  98 03 00 31 */	stb r0, 0x31(r3)
/* 802CE264 002CB1C4  80 04 00 40 */	lwz r0, 0x40(r4)
/* 802CE268 002CB1C8  80 A4 00 44 */	lwz r5, 0x44(r4)
/* 802CE26C 002CB1CC  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 802CE270 002CB1D0  90 03 00 38 */	stw r0, 0x38(r3)
/* 802CE274 002CB1D4  80 04 00 38 */	lwz r0, 0x38(r4)
/* 802CE278 002CB1D8  80 A4 00 3C */	lwz r5, 0x3c(r4)
/* 802CE27C 002CB1DC  90 A3 00 44 */	stw r5, 0x44(r3)
/* 802CE280 002CB1E0  90 03 00 40 */	stw r0, 0x40(r3)
/* 802CE284 002CB1E4  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 802CE288 002CB1E8  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802CE28C 002CB1EC  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 802CE290 002CB1F0  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 802CE294 002CB1F4  C0 04 00 5C */	lfs f0, 0x5c(r4)
/* 802CE298 002CB1F8  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 802CE29C 002CB1FC  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 802CE2A0 002CB200  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 802CE2A4 002CB204  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 802CE2A8 002CB208  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 802CE2AC 002CB20C  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 802CE2B0 002CB210  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 802CE2B4 002CB214  4E 80 00 20 */	blr 

.global __ct__14CCollisionInfoFRC6CAABoxRC13CMaterialListRC13CMaterialListRC9CVector3fRC9CVector3f
__ct__14CCollisionInfoFRC6CAABoxRC13CMaterialListRC13CMaterialListRC9CVector3fRC9CVector3f:
/* 802CE2B8 002CB218  C0 04 00 00 */	lfs f0, 0(r4)
/* 802CE2BC 002CB21C  38 00 00 01 */	li r0, 1
/* 802CE2C0 002CB220  C0 22 C4 98 */	lfs f1, lbl_805AE1B8@sda21(r2)
/* 802CE2C4 002CB224  D0 03 00 00 */	stfs f0, 0(r3)
/* 802CE2C8 002CB228  C0 04 00 04 */	lfs f0, 4(r4)
/* 802CE2CC 002CB22C  D0 03 00 04 */	stfs f0, 4(r3)
/* 802CE2D0 002CB230  C0 04 00 08 */	lfs f0, 8(r4)
/* 802CE2D4 002CB234  D0 03 00 08 */	stfs f0, 8(r3)
/* 802CE2D8 002CB238  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 802CE2DC 002CB23C  C0 04 00 00 */	lfs f0, 0(r4)
/* 802CE2E0 002CB240  EC 02 00 28 */	fsubs f0, f2, f0
/* 802CE2E4 002CB244  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802CE2E8 002CB248  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 802CE2EC 002CB24C  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 802CE2F0 002CB250  C0 04 00 04 */	lfs f0, 4(r4)
/* 802CE2F4 002CB254  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 802CE2F8 002CB258  EC 02 00 28 */	fsubs f0, f2, f0
/* 802CE2FC 002CB25C  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 802CE300 002CB260  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802CE304 002CB264  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 802CE308 002CB268  C0 04 00 08 */	lfs f0, 8(r4)
/* 802CE30C 002CB26C  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802CE310 002CB270  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 802CE314 002CB274  EC 02 00 28 */	fsubs f0, f2, f0
/* 802CE318 002CB278  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 802CE31C 002CB27C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802CE320 002CB280  98 03 00 30 */	stb r0, 0x30(r3)
/* 802CE324 002CB284  98 03 00 31 */	stb r0, 0x31(r3)
/* 802CE328 002CB288  80 06 00 00 */	lwz r0, 0(r6)
/* 802CE32C 002CB28C  80 86 00 04 */	lwz r4, 4(r6)
/* 802CE330 002CB290  90 83 00 3C */	stw r4, 0x3c(r3)
/* 802CE334 002CB294  90 03 00 38 */	stw r0, 0x38(r3)
/* 802CE338 002CB298  80 05 00 00 */	lwz r0, 0(r5)
/* 802CE33C 002CB29C  80 85 00 04 */	lwz r4, 4(r5)
/* 802CE340 002CB2A0  90 83 00 44 */	stw r4, 0x44(r3)
/* 802CE344 002CB2A4  90 03 00 40 */	stw r0, 0x40(r3)
/* 802CE348 002CB2A8  C0 07 00 00 */	lfs f0, 0(r7)
/* 802CE34C 002CB2AC  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802CE350 002CB2B0  C0 07 00 04 */	lfs f0, 4(r7)
/* 802CE354 002CB2B4  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 802CE358 002CB2B8  C0 07 00 08 */	lfs f0, 8(r7)
/* 802CE35C 002CB2BC  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 802CE360 002CB2C0  C0 08 00 00 */	lfs f0, 0(r8)
/* 802CE364 002CB2C4  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 802CE368 002CB2C8  C0 08 00 04 */	lfs f0, 4(r8)
/* 802CE36C 002CB2CC  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 802CE370 002CB2D0  C0 08 00 08 */	lfs f0, 8(r8)
/* 802CE374 002CB2D4  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 802CE378 002CB2D8  4E 80 00 20 */	blr 

.global __ct__14CCollisionInfoFRC9CVector3fRC13CMaterialListRC13CMaterialListRC9CVector3fRC9CVector3f
__ct__14CCollisionInfoFRC9CVector3fRC13CMaterialListRC13CMaterialListRC9CVector3fRC9CVector3f:
/* 802CE37C 002CB2DC  C0 04 00 00 */	lfs f0, 0(r4)
/* 802CE380 002CB2E0  3D 20 80 5A */	lis r9, skZero3f@ha
/* 802CE384 002CB2E4  39 49 66 A0 */	addi r10, r9, skZero3f@l
/* 802CE388 002CB2E8  39 20 00 01 */	li r9, 1
/* 802CE38C 002CB2EC  D0 03 00 00 */	stfs f0, 0(r3)
/* 802CE390 002CB2F0  38 00 00 00 */	li r0, 0
/* 802CE394 002CB2F4  C0 04 00 04 */	lfs f0, 4(r4)
/* 802CE398 002CB2F8  D0 03 00 04 */	stfs f0, 4(r3)
/* 802CE39C 002CB2FC  C0 04 00 08 */	lfs f0, 8(r4)
/* 802CE3A0 002CB300  D0 03 00 08 */	stfs f0, 8(r3)
/* 802CE3A4 002CB304  C0 0A 00 00 */	lfs f0, 0(r10)
/* 802CE3A8 002CB308  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802CE3AC 002CB30C  C0 0A 00 04 */	lfs f0, 4(r10)
/* 802CE3B0 002CB310  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802CE3B4 002CB314  C0 0A 00 08 */	lfs f0, 8(r10)
/* 802CE3B8 002CB318  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802CE3BC 002CB31C  C0 0A 00 00 */	lfs f0, 0(r10)
/* 802CE3C0 002CB320  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802CE3C4 002CB324  C0 0A 00 04 */	lfs f0, 4(r10)
/* 802CE3C8 002CB328  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802CE3CC 002CB32C  C0 0A 00 08 */	lfs f0, 8(r10)
/* 802CE3D0 002CB330  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802CE3D4 002CB334  C0 0A 00 00 */	lfs f0, 0(r10)
/* 802CE3D8 002CB338  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802CE3DC 002CB33C  C0 0A 00 04 */	lfs f0, 4(r10)
/* 802CE3E0 002CB340  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802CE3E4 002CB344  C0 0A 00 08 */	lfs f0, 8(r10)
/* 802CE3E8 002CB348  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802CE3EC 002CB34C  99 23 00 30 */	stb r9, 0x30(r3)
/* 802CE3F0 002CB350  98 03 00 31 */	stb r0, 0x31(r3)
/* 802CE3F4 002CB354  80 06 00 00 */	lwz r0, 0(r6)
/* 802CE3F8 002CB358  80 86 00 04 */	lwz r4, 4(r6)
/* 802CE3FC 002CB35C  90 83 00 3C */	stw r4, 0x3c(r3)
/* 802CE400 002CB360  90 03 00 38 */	stw r0, 0x38(r3)
/* 802CE404 002CB364  80 05 00 00 */	lwz r0, 0(r5)
/* 802CE408 002CB368  80 85 00 04 */	lwz r4, 4(r5)
/* 802CE40C 002CB36C  90 83 00 44 */	stw r4, 0x44(r3)
/* 802CE410 002CB370  90 03 00 40 */	stw r0, 0x40(r3)
/* 802CE414 002CB374  C0 07 00 00 */	lfs f0, 0(r7)
/* 802CE418 002CB378  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802CE41C 002CB37C  C0 07 00 04 */	lfs f0, 4(r7)
/* 802CE420 002CB380  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 802CE424 002CB384  C0 07 00 08 */	lfs f0, 8(r7)
/* 802CE428 002CB388  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 802CE42C 002CB38C  C0 08 00 00 */	lfs f0, 0(r8)
/* 802CE430 002CB390  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 802CE434 002CB394  C0 08 00 04 */	lfs f0, 4(r8)
/* 802CE438 002CB398  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 802CE43C 002CB39C  C0 08 00 08 */	lfs f0, 8(r8)
/* 802CE440 002CB3A0  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 802CE444 002CB3A4  4E 80 00 20 */	blr 

.global __ct__14CCollisionInfoFRC9CVector3fRC13CMaterialListRC13CMaterialListRC9CVector3f
__ct__14CCollisionInfoFRC9CVector3fRC13CMaterialListRC13CMaterialListRC9CVector3f:
/* 802CE448 002CB3A8  C0 04 00 00 */	lfs f0, 0(r4)
/* 802CE44C 002CB3AC  3D 00 80 5A */	lis r8, skZero3f@ha
/* 802CE450 002CB3B0  39 28 66 A0 */	addi r9, r8, skZero3f@l
/* 802CE454 002CB3B4  39 00 00 01 */	li r8, 1
/* 802CE458 002CB3B8  D0 03 00 00 */	stfs f0, 0(r3)
/* 802CE45C 002CB3BC  38 00 00 00 */	li r0, 0
/* 802CE460 002CB3C0  C0 04 00 04 */	lfs f0, 4(r4)
/* 802CE464 002CB3C4  D0 03 00 04 */	stfs f0, 4(r3)
/* 802CE468 002CB3C8  C0 04 00 08 */	lfs f0, 8(r4)
/* 802CE46C 002CB3CC  D0 03 00 08 */	stfs f0, 8(r3)
/* 802CE470 002CB3D0  C0 09 00 00 */	lfs f0, 0(r9)
/* 802CE474 002CB3D4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802CE478 002CB3D8  C0 09 00 04 */	lfs f0, 4(r9)
/* 802CE47C 002CB3DC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802CE480 002CB3E0  C0 09 00 08 */	lfs f0, 8(r9)
/* 802CE484 002CB3E4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802CE488 002CB3E8  C0 09 00 00 */	lfs f0, 0(r9)
/* 802CE48C 002CB3EC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802CE490 002CB3F0  C0 09 00 04 */	lfs f0, 4(r9)
/* 802CE494 002CB3F4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802CE498 002CB3F8  C0 09 00 08 */	lfs f0, 8(r9)
/* 802CE49C 002CB3FC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802CE4A0 002CB400  C0 09 00 00 */	lfs f0, 0(r9)
/* 802CE4A4 002CB404  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802CE4A8 002CB408  C0 09 00 04 */	lfs f0, 4(r9)
/* 802CE4AC 002CB40C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802CE4B0 002CB410  C0 09 00 08 */	lfs f0, 8(r9)
/* 802CE4B4 002CB414  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802CE4B8 002CB418  99 03 00 30 */	stb r8, 0x30(r3)
/* 802CE4BC 002CB41C  98 03 00 31 */	stb r0, 0x31(r3)
/* 802CE4C0 002CB420  80 06 00 00 */	lwz r0, 0(r6)
/* 802CE4C4 002CB424  80 86 00 04 */	lwz r4, 4(r6)
/* 802CE4C8 002CB428  90 83 00 3C */	stw r4, 0x3c(r3)
/* 802CE4CC 002CB42C  90 03 00 38 */	stw r0, 0x38(r3)
/* 802CE4D0 002CB430  80 05 00 00 */	lwz r0, 0(r5)
/* 802CE4D4 002CB434  80 85 00 04 */	lwz r4, 4(r5)
/* 802CE4D8 002CB438  90 83 00 44 */	stw r4, 0x44(r3)
/* 802CE4DC 002CB43C  90 03 00 40 */	stw r0, 0x40(r3)
/* 802CE4E0 002CB440  C0 07 00 00 */	lfs f0, 0(r7)
/* 802CE4E4 002CB444  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802CE4E8 002CB448  C0 07 00 04 */	lfs f0, 4(r7)
/* 802CE4EC 002CB44C  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 802CE4F0 002CB450  C0 07 00 08 */	lfs f0, 8(r7)
/* 802CE4F4 002CB454  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 802CE4F8 002CB458  C0 07 00 00 */	lfs f0, 0(r7)
/* 802CE4FC 002CB45C  C0 27 00 04 */	lfs f1, 4(r7)
/* 802CE500 002CB460  C0 47 00 08 */	lfs f2, 8(r7)
/* 802CE504 002CB464  FC 00 00 50 */	fneg f0, f0
/* 802CE508 002CB468  FC 20 08 50 */	fneg f1, f1
/* 802CE50C 002CB46C  FC 40 10 50 */	fneg f2, f2
/* 802CE510 002CB470  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 802CE514 002CB474  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 802CE518 002CB478  D0 43 00 5C */	stfs f2, 0x5c(r3)
/* 802CE51C 002CB47C  4E 80 00 20 */	blr
