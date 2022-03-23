.include "macros.inc"

.section .init, "ax"  # 0x80003100 - 0x80005620

.global __init_hardware
__init_hardware:
/* 80003354 00000354  7C 00 00 A6 */	mfmsr r0
/* 80003358 00000358  60 00 20 00 */	ori r0, r0, 0x2000
/* 8000335C 0000035C  7C 00 01 24 */	mtmsr r0
/* 80003360 00000360  7F E8 02 A6 */	mflr r31
/* 80003364 00000364  48 0B 19 49 */	bl __OSPSInit
/* 80003368 00000368  48 0B 32 8D */	bl __OSCacheInit
/* 8000336C 0000036C  7F E8 03 A6 */	mtlr r31
/* 80003370 00000370  4E 80 00 20 */	blr 

.global __flush_cache
__flush_cache:
/* 80003374 00000374  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 80003378 00000378  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 8000337C 0000037C  7C A5 18 38 */	and r5, r5, r3
/* 80003380 00000380  7C 65 18 50 */	subf r3, r5, r3
/* 80003384 00000384  7C 84 1A 14 */	add r4, r4, r3
lbl_80003388:
/* 80003388 00000388  7C 00 28 6C */	dcbst 0, r5
/* 8000338C 0000038C  7C 00 04 AC */	sync 0
/* 80003390 00000390  7C 00 2F AC */	icbi 0, r5
/* 80003394 00000394  30 A5 00 08 */	addic r5, r5, 8
/* 80003398 00000398  34 84 FF F8 */	addic. r4, r4, -8
/* 8000339C 0000039C  40 80 FF EC */	bge lbl_80003388
/* 800033A0 000003A0  4C 00 01 2C */	isync 
/* 800033A4 000003A4  4E 80 00 20 */	blr 
