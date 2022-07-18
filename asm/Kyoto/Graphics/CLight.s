.include "macros.inc"

.section .sdata

.global lbl_805A8810
lbl_805A8810:
	# ROM: 0x3F61B0
	.4byte 0x3D70F0F1

.global lbl_805A8814
lbl_805A8814:
	# ROM: 0x3F61B4
	.float 0.2

.global lbl_805A8818
lbl_805A8818:
	# ROM: 0x3F61B8
	.4byte 0x3D70F0F1

.global lbl_805A881C
lbl_805A881C:
	# ROM: 0x3F61BC
	.float 0.2

.section .text, "ax"

.global GetNormalIndependentLightingAtPoint__6CLightCFRC9CVector3f
GetNormalIndependentLightingAtPoint__6CLightCFRC9CVector3f:
/* 80306024 00302F84  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80306028 00302F88  7C 08 02 A6 */	mflr r0
/* 8030602C 00302F8C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80306030 00302F90  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80306034 00302F94  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80306038 00302F98  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8030603C 00302F9C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 80306040 00302FA0  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80306044 00302FA4  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 80306048 00302FA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8030604C 00302FAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80306050 00302FB0  7C 7E 1B 78 */	mr r30, r3
/* 80306054 00302FB4  7C 9F 23 78 */	mr r31, r4
/* 80306058 00302FB8  E0 3F A0 1A */	psq_l f1, 26(r31), 1, qr2
/* 8030605C 00302FBC  C0 02 C7 7C */	lfs f0, lbl_805AE49C@sda21(r2)
/* 80306060 00302FC0  EF E0 00 72 */	fmuls f31, f0, f1
/* 80306064 00302FC4  E0 3F A0 19 */	psq_l f1, 25(r31), 1, qr2
/* 80306068 00302FC8  EF C0 00 72 */	fmuls f30, f0, f1
/* 8030606C 00302FCC  E0 3F A0 18 */	psq_l f1, 24(r31), 1, qr2
/* 80306070 00302FD0  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80306074 00302FD4  EF A0 00 72 */	fmuls f29, f0, f1
/* 80306078 00302FD8  2C 00 00 03 */	cmpwi r0, 3
/* 8030607C 00302FDC  40 82 00 14 */	bne lbl_80306090
/* 80306080 00302FE0  D3 BE 00 00 */	stfs f29, 0(r30)
/* 80306084 00302FE4  D3 DE 00 04 */	stfs f30, 4(r30)
/* 80306088 00302FE8  D3 FE 00 08 */	stfs f31, 8(r30)
/* 8030608C 00302FEC  48 00 00 98 */	b lbl_80306124
lbl_80306090:
/* 80306090 00302FF0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80306094 00302FF4  38 61 00 0C */	addi r3, r1, 0xc
/* 80306098 00302FF8  C0 05 00 04 */	lfs f0, 4(r5)
/* 8030609C 00302FFC  C0 7F 00 08 */	lfs f3, 8(r31)
/* 803060A0 00303000  C0 45 00 08 */	lfs f2, 8(r5)
/* 803060A4 00303004  EC 81 00 28 */	fsubs f4, f1, f0
/* 803060A8 00303008  C0 3F 00 00 */	lfs f1, 0(r31)
/* 803060AC 0030300C  C0 05 00 00 */	lfs f0, 0(r5)
/* 803060B0 00303010  EC 43 10 28 */	fsubs f2, f3, f2
/* 803060B4 00303014  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 803060B8 00303018  EC 01 00 28 */	fsubs f0, f1, f0
/* 803060BC 0030301C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 803060C0 00303020  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803060C4 00303024  48 00 E7 F5 */	bl Magnitude__9CVector3fCFv
/* 803060C8 00303028  FC 40 08 18 */	frsp f2, f1
/* 803060CC 0030302C  C0 02 C7 78 */	lfs f0, lbl_805AE498@sda21(r2)
/* 803060D0 00303030  D0 21 00 08 */	stfs f1, 8(r1)
/* 803060D4 00303034  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803060D8 00303038  40 80 00 0C */	bge lbl_803060E4
/* 803060DC 0030303C  38 62 C7 78 */	addi r3, r2, lbl_805AE498@sda21
/* 803060E0 00303040  48 00 00 08 */	b lbl_803060E8
lbl_803060E4:
/* 803060E4 00303044  38 61 00 08 */	addi r3, r1, 8
lbl_803060E8:
/* 803060E8 00303048  C0 83 00 00 */	lfs f4, 0(r3)
/* 803060EC 0030304C  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 803060F0 00303050  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 803060F4 00303054  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 803060F8 00303058  EC 42 01 32 */	fmuls f2, f2, f4
/* 803060FC 0030305C  C0 62 C7 80 */	lfs f3, lbl_805AE4A0@sda21(r2)
/* 80306100 00303060  EC 01 01 3A */	fmadds f0, f1, f4, f0
/* 80306104 00303064  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 80306108 00303068  EC 03 00 24 */	fdivs f0, f3, f0
/* 8030610C 0030306C  EC 40 07 72 */	fmuls f2, f0, f29
/* 80306110 00303070  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80306114 00303074  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80306118 00303078  D0 5E 00 00 */	stfs f2, 0(r30)
/* 8030611C 0030307C  D0 3E 00 04 */	stfs f1, 4(r30)
/* 80306120 00303080  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_80306124:
/* 80306124 00303084  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80306128 00303088  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8030612C 0030308C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 80306130 00303090  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80306134 00303094  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 80306138 00303098  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8030613C 0030309C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80306140 003030A0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80306144 003030A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80306148 003030A8  7C 08 03 A6 */	mtlr r0
/* 8030614C 003030AC  38 21 00 50 */	addi r1, r1, 0x50
/* 80306150 003030B0  4E 80 00 20 */	blr

.global GetIntensity__6CLightCFv
GetIntensity__6CLightCFv:
/* 80306154 003030B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80306158 003030B8  88 83 00 4C */	lbz r4, 0x4c(r3)
/* 8030615C 003030BC  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 80306160 003030C0  41 82 00 84 */	beq lbl_803061E4
/* 80306164 003030C4  38 00 00 00 */	li r0, 0
/* 80306168 003030C8  C0 62 C7 80 */	lfs f3, lbl_805AE4A0@sda21(r2)
/* 8030616C 003030CC  50 04 3E 30 */	rlwimi r4, r0, 7, 0x18, 0x18
/* 80306170 003030D0  98 83 00 4C */	stb r4, 0x4c(r3)
/* 80306174 003030D4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80306178 003030D8  2C 00 00 04 */	cmpwi r0, 4
/* 8030617C 003030DC  40 82 00 08 */	bne lbl_80306184
/* 80306180 003030E0  C0 63 00 30 */	lfs f3, 0x30(r3)
lbl_80306184:
/* 80306184 003030E4  E0 23 A0 1A */	psq_l f1, 26(r3), 1, qr2
/* 80306188 003030E8  C0 02 C7 7C */	lfs f0, lbl_805AE49C@sda21(r2)
/* 8030618C 003030EC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80306190 003030F0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80306194 003030F4  E0 43 A0 19 */	psq_l f2, 25(r3), 1, qr2
/* 80306198 003030F8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8030619C 003030FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803061A0 00303100  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803061A4 00303104  40 80 00 0C */	bge lbl_803061B0
/* 803061A8 00303108  38 81 00 08 */	addi r4, r1, 8
/* 803061AC 0030310C  48 00 00 08 */	b lbl_803061B4
lbl_803061B0:
/* 803061B0 00303110  38 81 00 0C */	addi r4, r1, 0xc
lbl_803061B4:
/* 803061B4 00303114  E0 23 A0 18 */	psq_l f1, 24(r3), 1, qr2
/* 803061B8 00303118  C0 02 C7 7C */	lfs f0, lbl_805AE49C@sda21(r2)
/* 803061BC 0030311C  EC 20 00 72 */	fmuls f1, f0, f1
/* 803061C0 00303120  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 803061C4 00303124  C0 04 00 00 */	lfs f0, 0(r4)
/* 803061C8 00303128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803061CC 0030312C  40 80 00 08 */	bge lbl_803061D4
/* 803061D0 00303130  48 00 00 08 */	b lbl_803061D8
lbl_803061D4:
/* 803061D4 00303134  38 81 00 10 */	addi r4, r1, 0x10
lbl_803061D8:
/* 803061D8 00303138  C0 04 00 00 */	lfs f0, 0(r4)
/* 803061DC 0030313C  EC 03 00 32 */	fmuls f0, f3, f0
/* 803061E0 00303140  D0 03 00 48 */	stfs f0, 0x48(r3)
lbl_803061E4:
/* 803061E4 00303144  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 803061E8 00303148  38 21 00 20 */	addi r1, r1, 0x20
/* 803061EC 0030314C  4E 80 00 20 */	blr

.global CalculateLightRadius__6CLightCFv
CalculateLightRadius__6CLightCFv:
/* 803061F0 00303150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803061F4 00303154  7C 08 02 A6 */	mflr r0
/* 803061F8 00303158  C0 22 C7 8C */	lfs f1, lbl_805AE4AC@sda21(r2)
/* 803061FC 0030315C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80306200 00303160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80306204 00303164  7C 7F 1B 78 */	mr r31, r3
/* 80306208 00303168  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8030620C 0030316C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80306210 00303170  40 80 00 18 */	bge lbl_80306228
/* 80306214 00303174  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80306218 00303178  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8030621C 0030317C  40 80 00 0C */	bge lbl_80306228
/* 80306220 00303180  C0 22 C7 90 */	lfs f1, lbl_805AE4B0@sda21(r2)
/* 80306224 00303184  48 00 00 9C */	b lbl_803062C0
lbl_80306228:
/* 80306228 00303188  7F E3 FB 78 */	mr r3, r31
/* 8030622C 0030318C  4B FF FF 29 */	bl GetIntensity__6CLightCFv
/* 80306230 00303190  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80306234 00303194  C0 02 C7 8C */	lfs f0, lbl_805AE4AC@sda21(r2)
/* 80306238 00303198  C0 82 C7 88 */	lfs f4, lbl_805AE4A8@sda21(r2)
/* 8030623C 0030319C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80306240 003031A0  40 81 00 44 */	ble lbl_80306284
/* 80306244 003031A4  C0 4D 9C 54 */	lfs f2, lbl_805A8814@sda21(r13)
/* 80306248 003031A8  C0 0D 9C 50 */	lfs f0, lbl_805A8810@sda21(r13)
/* 8030624C 003031AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80306250 003031B0  40 80 00 0C */	bge lbl_8030625C
/* 80306254 003031B4  38 6D 9C 54 */	addi r3, r13, lbl_805A8814@sda21
/* 80306258 003031B8  48 00 00 08 */	b lbl_80306260
lbl_8030625C:
/* 8030625C 003031BC  38 6D 9C 50 */	addi r3, r13, lbl_805A8810@sda21
lbl_80306260:
/* 80306260 003031C0  C0 02 C7 8C */	lfs f0, lbl_805AE4AC@sda21(r2)
/* 80306264 003031C4  C0 43 00 00 */	lfs f2, 0(r3)
/* 80306268 003031C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8030626C 003031CC  40 81 00 50 */	ble lbl_803062BC
/* 80306270 003031D0  EC 02 00 F2 */	fmuls f0, f2, f3
/* 80306274 003031D4  EC 21 00 24 */	fdivs f1, f1, f0
/* 80306278 003031D8  48 00 F2 89 */	bl SqrtF__5CMathFf
/* 8030627C 003031DC  FC 80 08 90 */	fmr f4, f1
/* 80306280 003031E0  48 00 00 3C */	b lbl_803062BC
lbl_80306284:
/* 80306284 003031E4  C0 4D 9C 5C */	lfs f2, lbl_805A881C@sda21(r13)
/* 80306288 003031E8  C0 0D 9C 58 */	lfs f0, lbl_805A8818@sda21(r13)
/* 8030628C 003031EC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80306290 003031F0  40 80 00 0C */	bge lbl_8030629C
/* 80306294 003031F4  38 6D 9C 5C */	addi r3, r13, lbl_805A881C@sda21
/* 80306298 003031F8  48 00 00 08 */	b lbl_803062A0
lbl_8030629C:
/* 8030629C 003031FC  38 6D 9C 58 */	addi r3, r13, lbl_805A8818@sda21
lbl_803062A0:
/* 803062A0 00303200  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 803062A4 00303204  C0 02 C7 8C */	lfs f0, lbl_805AE4AC@sda21(r2)
/* 803062A8 00303208  C0 63 00 00 */	lfs f3, 0(r3)
/* 803062AC 0030320C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803062B0 00303210  40 81 00 0C */	ble lbl_803062BC
/* 803062B4 00303214  EC 03 00 B2 */	fmuls f0, f3, f2
/* 803062B8 00303218  EC 81 00 24 */	fdivs f4, f1, f0
lbl_803062BC:
/* 803062BC 0030321C  FC 20 20 90 */	fmr f1, f4
lbl_803062C0:
/* 803062C0 00303220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803062C4 00303224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803062C8 00303228  7C 08 03 A6 */	mtlr r0
/* 803062CC 0030322C  38 21 00 10 */	addi r1, r1, 0x10
/* 803062D0 00303230  4E 80 00 20 */	blr

.global GetRadius__6CLightCFv
GetRadius__6CLightCFv:
/* 803062D4 00303234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803062D8 00303238  7C 08 02 A6 */	mflr r0
/* 803062DC 0030323C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803062E0 00303240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803062E4 00303244  7C 7F 1B 78 */	mr r31, r3
/* 803062E8 00303248  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 803062EC 0030324C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 803062F0 00303250  41 82 00 1C */	beq lbl_8030630C
/* 803062F4 00303254  4B FF FE FD */	bl CalculateLightRadius__6CLightCFv
/* 803062F8 00303258  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 803062FC 0030325C  38 60 00 00 */	li r3, 0
/* 80306300 00303260  88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 80306304 00303264  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80306308 00303268  98 1F 00 4C */	stb r0, 0x4c(r31)
lbl_8030630C:
/* 8030630C 0030326C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80306310 00303270  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80306314 00303274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80306318 00303278  7C 08 03 A6 */	mtlr r0
/* 8030631C 0030327C  38 21 00 10 */	addi r1, r1, 0x10
/* 80306320 00303280  4E 80 00 20 */	blr

.global SetDirection__6CLightFRC9CVector3f
SetDirection__6CLightFRC9CVector3f:
/* 80306324 00303284  C0 04 00 00 */	lfs f0, 0(r4)
/* 80306328 00303288  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8030632C 0030328C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80306330 00303290  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80306334 00303294  C0 04 00 08 */	lfs f0, 8(r4)
/* 80306338 00303298  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8030633C 0030329C  4E 80 00 20 */	blr

.global SetPosition__6CLightFRC9CVector3f
SetPosition__6CLightFRC9CVector3f:
/* 80306340 003032A0  C0 04 00 00 */	lfs f0, 0(r4)
/* 80306344 003032A4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80306348 003032A8  C0 04 00 04 */	lfs f0, 4(r4)
/* 8030634C 003032AC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80306350 003032B0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80306354 003032B4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80306358 003032B8  4E 80 00 20 */	blr

.global SetColor__6CLightFRC6CColor
SetColor__6CLightFRC6CColor:
/* 8030635C 003032BC  80 04 00 00 */	lwz r0, 0(r4)
/* 80306360 003032C0  38 80 00 01 */	li r4, 1
/* 80306364 003032C4  90 03 00 18 */	stw r0, 0x18(r3)
/* 80306368 003032C8  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 8030636C 003032CC  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80306370 003032D0  98 03 00 4C */	stb r0, 0x4c(r3)
/* 80306374 003032D4  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 80306378 003032D8  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8030637C 003032DC  98 03 00 4C */	stb r0, 0x4c(r3)
/* 80306380 003032E0  4E 80 00 20 */	blr

.global SetAngleAttenuation__6CLightFfff
SetAngleAttenuation__6CLightFfff:
/* 80306384 003032E4  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 80306388 003032E8  38 80 00 01 */	li r4, 1
/* 8030638C 003032EC  D0 43 00 34 */	stfs f2, 0x34(r3)
/* 80306390 003032F0  D0 63 00 38 */	stfs f3, 0x38(r3)
/* 80306394 003032F4  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 80306398 003032F8  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8030639C 003032FC  98 03 00 4C */	stb r0, 0x4c(r3)
/* 803063A0 00303300  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 803063A4 00303304  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 803063A8 00303308  98 03 00 4C */	stb r0, 0x4c(r3)
/* 803063AC 0030330C  4E 80 00 20 */	blr

.global SetAttenuation__6CLightFfff
SetAttenuation__6CLightFfff:
/* 803063B0 00303310  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 803063B4 00303314  38 80 00 01 */	li r4, 1
/* 803063B8 00303318  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 803063BC 0030331C  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 803063C0 00303320  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 803063C4 00303324  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 803063C8 00303328  98 03 00 4C */	stb r0, 0x4c(r3)
/* 803063CC 0030332C  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 803063D0 00303330  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 803063D4 00303334  98 03 00 4C */	stb r0, 0x4c(r3)
/* 803063D8 00303338  4E 80 00 20 */	blr

.global BuildCustom__6CLightFRC9CVector3fRC9CVector3fRC6CColorffffff
BuildCustom__6CLightFRC9CVector3fRC9CVector3fRC6CColorffffff:
/* 803063DC 0030333C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803063E0 00303340  7C 08 02 A6 */	mflr r0
/* 803063E4 00303344  90 01 00 14 */	stw r0, 0x14(r1)
/* 803063E8 00303348  48 00 00 F5 */	bl __ct__6CLightFRC9CVector3fRC9CVector3fRC6CColorffffff
/* 803063EC 0030334C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803063F0 00303350  7C 08 03 A6 */	mtlr r0
/* 803063F4 00303354  38 21 00 10 */	addi r1, r1, 0x10
/* 803063F8 00303358  4E 80 00 20 */	blr

.global BuildSpot__6CLightFRC9CVector3fRC9CVector3fRC6CColorf
BuildSpot__6CLightFRC9CVector3fRC9CVector3fRC6CColorf:
/* 803063FC 0030335C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80306400 00303360  7C 08 02 A6 */	mflr r0
/* 80306404 00303364  7C 88 23 78 */	mr r8, r4
/* 80306408 00303368  7C C7 33 78 */	mr r7, r6
/* 8030640C 0030336C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80306410 00303370  7C A0 2B 78 */	mr r0, r5
/* 80306414 00303374  38 80 00 00 */	li r4, 0
/* 80306418 00303378  7D 05 43 78 */	mr r5, r8
/* 8030641C 0030337C  7C 06 03 78 */	mr r6, r0
/* 80306420 00303380  48 00 01 51 */	bl __ct__6CLightF10ELightTypeRC9CVector3fRC9CVector3fRC6CColorf
/* 80306424 00303384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80306428 00303388  7C 08 03 A6 */	mtlr r0
/* 8030642C 0030338C  38 21 00 10 */	addi r1, r1, 0x10
/* 80306430 00303390  4E 80 00 20 */	blr

.global BuildPoint__6CLightFRC9CVector3fRC6CColor
BuildPoint__6CLightFRC9CVector3fRC6CColor:
/* 80306434 00303394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80306438 00303398  7C 08 02 A6 */	mflr r0
/* 8030643C 0030339C  3C C0 80 5A */	lis r6, kDefaultDirection__6CLight@ha
/* 80306440 003033A0  7C A7 2B 78 */	mr r7, r5
/* 80306444 003033A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80306448 003033A8  7C 85 23 78 */	mr r5, r4
/* 8030644C 003033AC  C0 22 C7 94 */	lfs f1, lbl_805AE4B4@sda21(r2)
/* 80306450 003033B0  38 C6 53 E0 */	addi r6, r6, kDefaultDirection__6CLight@l
/* 80306454 003033B4  38 80 00 01 */	li r4, 1
/* 80306458 003033B8  48 00 01 19 */	bl __ct__6CLightF10ELightTypeRC9CVector3fRC9CVector3fRC6CColorf
/* 8030645C 003033BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80306460 003033C0  7C 08 03 A6 */	mtlr r0
/* 80306464 003033C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80306468 003033C8  4E 80 00 20 */	blr

.global BuildDirectional__6CLightFRC9CVector3fRC6CColor
BuildDirectional__6CLightFRC9CVector3fRC6CColor:
/* 8030646C 003033CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80306470 003033D0  7C 08 02 A6 */	mflr r0
/* 80306474 003033D4  3C C0 80 5A */	lis r6, kDefaultPosition__6CLight@ha
/* 80306478 003033D8  7C A7 2B 78 */	mr r7, r5
/* 8030647C 003033DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80306480 003033E0  38 A6 53 C8 */	addi r5, r6, kDefaultPosition__6CLight@l
/* 80306484 003033E4  7C 86 23 78 */	mr r6, r4
/* 80306488 003033E8  C0 22 C7 94 */	lfs f1, lbl_805AE4B4@sda21(r2)
/* 8030648C 003033EC  38 80 00 02 */	li r4, 2
/* 80306490 003033F0  48 00 00 E1 */	bl __ct__6CLightF10ELightTypeRC9CVector3fRC9CVector3fRC6CColorf
/* 80306494 003033F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80306498 003033F8  7C 08 03 A6 */	mtlr r0
/* 8030649C 003033FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803064A0 00303400  4E 80 00 20 */	blr

.global BuildLocalAmbient__6CLightFRC9CVector3fRC6CColor
BuildLocalAmbient__6CLightFRC9CVector3fRC6CColor:
/* 803064A4 00303404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803064A8 00303408  7C 08 02 A6 */	mflr r0
/* 803064AC 0030340C  3C C0 80 5A */	lis r6, kDefaultDirection__6CLight@ha
/* 803064B0 00303410  7C A7 2B 78 */	mr r7, r5
/* 803064B4 00303414  90 01 00 14 */	stw r0, 0x14(r1)
/* 803064B8 00303418  7C 85 23 78 */	mr r5, r4
/* 803064BC 0030341C  C0 22 C7 94 */	lfs f1, lbl_805AE4B4@sda21(r2)
/* 803064C0 00303420  38 C6 53 E0 */	addi r6, r6, kDefaultDirection__6CLight@l
/* 803064C4 00303424  38 80 00 03 */	li r4, 3
/* 803064C8 00303428  48 00 00 A9 */	bl __ct__6CLightF10ELightTypeRC9CVector3fRC9CVector3fRC6CColorf
/* 803064CC 0030342C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803064D0 00303430  7C 08 03 A6 */	mtlr r0
/* 803064D4 00303434  38 21 00 10 */	addi r1, r1, 0x10
/* 803064D8 00303438  4E 80 00 20 */	blr

.global __ct__6CLightFRC9CVector3fRC9CVector3fRC6CColorffffff
__ct__6CLightFRC9CVector3fRC9CVector3fRC6CColorffffff:
/* 803064DC 0030343C  C0 E4 00 00 */	lfs f7, 0(r4)
/* 803064E0 00303440  39 00 00 04 */	li r8, 4
/* 803064E4 00303444  C0 02 C7 88 */	lfs f0, lbl_805AE4A8@sda21(r2)
/* 803064E8 00303448  38 00 00 00 */	li r0, 0
/* 803064EC 0030344C  D0 E3 00 00 */	stfs f7, 0(r3)
/* 803064F0 00303450  38 E0 00 01 */	li r7, 1
/* 803064F4 00303454  C0 E4 00 04 */	lfs f7, 4(r4)
/* 803064F8 00303458  D0 E3 00 04 */	stfs f7, 4(r3)
/* 803064FC 0030345C  C0 E4 00 08 */	lfs f7, 8(r4)
/* 80306500 00303460  D0 E3 00 08 */	stfs f7, 8(r3)
/* 80306504 00303464  C0 E5 00 00 */	lfs f7, 0(r5)
/* 80306508 00303468  D0 E3 00 0C */	stfs f7, 0xc(r3)
/* 8030650C 0030346C  C0 E5 00 04 */	lfs f7, 4(r5)
/* 80306510 00303470  D0 E3 00 10 */	stfs f7, 0x10(r3)
/* 80306514 00303474  C0 E5 00 08 */	lfs f7, 8(r5)
/* 80306518 00303478  D0 E3 00 14 */	stfs f7, 0x14(r3)
/* 8030651C 0030347C  80 86 00 00 */	lwz r4, 0(r6)
/* 80306520 00303480  90 83 00 18 */	stw r4, 0x18(r3)
/* 80306524 00303484  91 03 00 1C */	stw r8, 0x1c(r3)
/* 80306528 00303488  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8030652C 0030348C  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 80306530 00303490  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 80306534 00303494  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 80306538 00303498  D0 83 00 30 */	stfs f4, 0x30(r3)
/* 8030653C 0030349C  D0 A3 00 34 */	stfs f5, 0x34(r3)
/* 80306540 003034A0  D0 C3 00 38 */	stfs f6, 0x38(r3)
/* 80306544 003034A4  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80306548 003034A8  90 03 00 40 */	stw r0, 0x40(r3)
/* 8030654C 003034AC  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80306550 003034B0  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 80306554 003034B4  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 80306558 003034B8  50 E0 3E 30 */	rlwimi r0, r7, 7, 0x18, 0x18
/* 8030655C 003034BC  98 03 00 4C */	stb r0, 0x4c(r3)
/* 80306560 003034C0  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 80306564 003034C4  50 E0 36 72 */	rlwimi r0, r7, 6, 0x19, 0x19
/* 80306568 003034C8  98 03 00 4C */	stb r0, 0x4c(r3)
/* 8030656C 003034CC  4E 80 00 20 */	blr

.global __ct__6CLightF10ELightTypeRC9CVector3fRC9CVector3fRC6CColorf
__ct__6CLightF10ELightTypeRC9CVector3fRC9CVector3fRC6CColorf:
/* 80306570 003034D0  C0 05 00 00 */	lfs f0, 0(r5)
/* 80306574 003034D4  38 00 00 00 */	li r0, 0
/* 80306578 003034D8  C0 42 C7 88 */	lfs f2, lbl_805AE4A8@sda21(r2)
/* 8030657C 003034DC  39 00 00 01 */	li r8, 1
/* 80306580 003034E0  D0 03 00 00 */	stfs f0, 0(r3)
/* 80306584 003034E4  C0 02 C7 80 */	lfs f0, lbl_805AE4A0@sda21(r2)
/* 80306588 003034E8  C0 65 00 04 */	lfs f3, 4(r5)
/* 8030658C 003034EC  D0 63 00 04 */	stfs f3, 4(r3)
/* 80306590 003034F0  C0 65 00 08 */	lfs f3, 8(r5)
/* 80306594 003034F4  D0 63 00 08 */	stfs f3, 8(r3)
/* 80306598 003034F8  C0 66 00 00 */	lfs f3, 0(r6)
/* 8030659C 003034FC  D0 63 00 0C */	stfs f3, 0xc(r3)
/* 803065A0 00303500  C0 66 00 04 */	lfs f3, 4(r6)
/* 803065A4 00303504  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 803065A8 00303508  C0 66 00 08 */	lfs f3, 8(r6)
/* 803065AC 0030350C  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 803065B0 00303510  80 A7 00 00 */	lwz r5, 0(r7)
/* 803065B4 00303514  90 A3 00 18 */	stw r5, 0x18(r3)
/* 803065B8 00303518  90 83 00 1C */	stw r4, 0x1c(r3)
/* 803065BC 0030351C  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 803065C0 00303520  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 803065C4 00303524  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 803065C8 00303528  D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 803065CC 0030352C  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 803065D0 00303530  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 803065D4 00303534  D0 43 00 38 */	stfs f2, 0x38(r3)
/* 803065D8 00303538  90 03 00 3C */	stw r0, 0x3c(r3)
/* 803065DC 0030353C  90 03 00 40 */	stw r0, 0x40(r3)
/* 803065E0 00303540  D0 43 00 44 */	stfs f2, 0x44(r3)
/* 803065E4 00303544  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 803065E8 00303548  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 803065EC 0030354C  51 00 3E 30 */	rlwimi r0, r8, 7, 0x18, 0x18
/* 803065F0 00303550  98 03 00 4C */	stb r0, 0x4c(r3)
/* 803065F4 00303554  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 803065F8 00303558  51 00 36 72 */	rlwimi r0, r8, 6, 0x19, 0x19
/* 803065FC 0030355C  98 03 00 4C */	stb r0, 0x4c(r3)
/* 80306600 00303560  4E 80 00 20 */	blr

.global __sinit_CLight_cpp
__sinit_CLight_cpp:
/* 80306604 00303564  C0 22 C7 88 */	lfs f1, lbl_805AE4A8@sda21(r2)
/* 80306608 00303568  3C 80 80 5A */	lis r4, kDefaultPosition__6CLight@ha
/* 8030660C 0030356C  3C 60 80 5A */	lis r3, kDefaultDirection__6CLight@ha
/* 80306610 00303570  C0 02 C7 84 */	lfs f0, lbl_805AE4A4@sda21(r2)
/* 80306614 00303574  D4 24 53 C8 */	stfsu f1, kDefaultPosition__6CLight@l(r4)
/* 80306618 00303578  D4 23 53 E0 */	stfsu f1, kDefaultDirection__6CLight@l(r3)
/* 8030661C 0030357C  D0 24 00 04 */	stfs f1, 4(r4)
/* 80306620 00303580  D0 24 00 08 */	stfs f1, 8(r4)
/* 80306624 00303584  D0 03 00 04 */	stfs f0, 4(r3)
/* 80306628 00303588  D0 23 00 08 */	stfs f1, 8(r3)
/* 8030662C 0030358C  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AE498
lbl_805AE498:
	# ROM: 0x3FAD38
	.float 1.1920929E-7

.global lbl_805AE49C
lbl_805AE49C:
	# ROM: 0x3FAD3C
	.4byte 0x3B808081

.global lbl_805AE4A0
lbl_805AE4A0:
	# ROM: 0x3FAD40
	.float 1.0

.global lbl_805AE4A4
lbl_805AE4A4:
	# ROM: 0x3FAD44
	.float -1.0

.global lbl_805AE4A8
lbl_805AE4A8:
	# ROM: 0x3FAD48
	.4byte 0

.global lbl_805AE4AC
lbl_805AE4AC:
	# ROM: 0x3FAD4C
	.float 1.1920929E-7

.global lbl_805AE4B0
lbl_805AE4B0:
	# ROM: 0x3FAD50
	.4byte 0x7C1071DB

.global lbl_805AE4B4
lbl_805AE4B4:
	# ROM: 0x3FAD54
	.4byte 0x43340000

