.include "macros.inc"

.section .data
.balign 8

.global __vt__22CAnimationDatabaseGame
__vt__22CAnimationDatabaseGame:
	# ROM: 0x3D7320
	.4byte 0
	.4byte 0
	.4byte GetMetaAnim__22CAnimationDatabaseGameCFUi
	.4byte GetNumMetaAnims__22CAnimationDatabaseGameCFv
	.4byte GetMetaAnimName__22CAnimationDatabaseGameCFUi
	.4byte "GetAllUniquePrimitives__22CAnimationDatabaseGameCFRQ24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>"
	.4byte "GetUniquePrimitivesFromMetaAnim__22CAnimationDatabaseGameCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
	.4byte 0

.section .text, "ax"

.global "GetUniquePrimitivesFromMetaAnim__22CAnimationDatabaseGameCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"GetUniquePrimitivesFromMetaAnim__22CAnimationDatabaseGameCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 8006D80C 0006A76C  4E 80 00 20 */	blr

.global "GetAllUniquePrimitives__22CAnimationDatabaseGameCFRQ24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>"
"GetAllUniquePrimitives__22CAnimationDatabaseGameCFRQ24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>":
/* 8006D810 0006A770  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8006D814 0006A774  7C 08 02 A6 */	mflr r0
/* 8006D818 0006A778  90 01 00 74 */	stw r0, 0x74(r1)
/* 8006D81C 0006A77C  88 A1 00 08 */	lbz r5, 8(r1)
/* 8006D820 0006A780  BF 41 00 58 */	stmw r26, 0x58(r1)
/* 8006D824 0006A784  3B E0 00 00 */	li r31, 0
/* 8006D828 0006A788  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8006D82C 0006A78C  7C 7A 1B 78 */	mr r26, r3
/* 8006D830 0006A790  7C 9B 23 78 */	mr r27, r4
/* 8006D834 0006A794  3B C1 00 40 */	addi r30, r1, 0x40
/* 8006D838 0006A798  3B 80 00 00 */	li r28, 0
/* 8006D83C 0006A79C  98 A1 00 38 */	stb r5, 0x38(r1)
/* 8006D840 0006A7A0  83 A3 00 14 */	lwz r29, 0x14(r3)
/* 8006D844 0006A7A4  98 01 00 39 */	stb r0, 0x39(r1)
/* 8006D848 0006A7A8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8006D84C 0006A7AC  93 E1 00 40 */	stw r31, 0x40(r1)
/* 8006D850 0006A7B0  93 E1 00 44 */	stw r31, 0x44(r1)
/* 8006D854 0006A7B4  93 E1 00 48 */	stw r31, 0x48(r1)
/* 8006D858 0006A7B8  48 00 00 2C */	b lbl_8006D884
lbl_8006D85C:
/* 8006D85C 0006A7BC  80 7A 00 1C */	lwz r3, 0x1c(r26)
/* 8006D860 0006A7C0  38 81 00 38 */	addi r4, r1, 0x38
/* 8006D864 0006A7C4  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8006D868 0006A7C8  80 63 00 00 */	lwz r3, 0(r3)
/* 8006D86C 0006A7CC  81 83 00 00 */	lwz r12, 0(r3)
/* 8006D870 0006A7D0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8006D874 0006A7D4  7D 89 03 A6 */	mtctr r12
/* 8006D878 0006A7D8  4E 80 04 21 */	bctrl
/* 8006D87C 0006A7DC  3B 9C 00 01 */	addi r28, r28, 1
/* 8006D880 0006A7E0  3B FF 00 04 */	addi r31, r31, 4
lbl_8006D884:
/* 8006D884 0006A7E4  7C 1C E8 40 */	cmplw r28, r29
/* 8006D888 0006A7E8  41 80 FF D4 */	blt lbl_8006D85C
/* 8006D88C 0006A7EC  80 9B 00 04 */	lwz r4, 4(r27)
/* 8006D890 0006A7F0  7F 63 DB 78 */	mr r3, r27
/* 8006D894 0006A7F4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8006D898 0006A7F8  7C 84 02 14 */	add r4, r4, r0
/* 8006D89C 0006A7FC  48 00 06 99 */	bl "reserve__Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>Fi"
/* 8006D8A0 0006A800  81 01 00 40 */	lwz r8, 0x40(r1)
/* 8006D8A4 0006A804  39 20 00 00 */	li r9, 0
/* 8006D8A8 0006A808  91 21 00 20 */	stw r9, 0x20(r1)
/* 8006D8AC 0006A80C  7F 63 DB 78 */	mr r3, r27
/* 8006D8B0 0006A810  38 81 00 14 */	addi r4, r1, 0x14
/* 8006D8B4 0006A814  38 A1 00 30 */	addi r5, r1, 0x30
/* 8006D8B8 0006A818  93 C1 00 24 */	stw r30, 0x24(r1)
/* 8006D8BC 0006A81C  38 C1 00 20 */	addi r6, r1, 0x20
/* 8006D8C0 0006A820  91 01 00 30 */	stw r8, 0x30(r1)
/* 8006D8C4 0006A824  93 C1 00 34 */	stw r30, 0x34(r1)
/* 8006D8C8 0006A828  80 1B 00 04 */	lwz r0, 4(r27)
/* 8006D8CC 0006A82C  80 FB 00 0C */	lwz r7, 0xc(r27)
/* 8006D8D0 0006A830  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8006D8D4 0006A834  91 21 00 18 */	stw r9, 0x18(r1)
/* 8006D8D8 0006A838  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 8006D8DC 0006A83C  7C 07 02 14 */	add r0, r7, r0
/* 8006D8E0 0006A840  91 01 00 28 */	stw r8, 0x28(r1)
/* 8006D8E4 0006A844  93 C1 00 2C */	stw r30, 0x2c(r1)
/* 8006D8E8 0006A848  90 01 00 10 */	stw r0, 0x10(r1)
/* 8006D8EC 0006A84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006D8F0 0006A850  48 00 00 41 */	bl "insert<Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator>__Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>FQ24rstl114pointer_iterator<10CPrimitive,Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iteratorQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator"
/* 8006D8F4 0006A854  80 81 00 48 */	lwz r4, 0x48(r1)
/* 8006D8F8 0006A858  28 04 00 00 */	cmplwi r4, 0
/* 8006D8FC 0006A85C  41 82 00 0C */	beq lbl_8006D908
/* 8006D900 0006A860  38 61 00 38 */	addi r3, r1, 0x38
/* 8006D904 0006A864  4B FC 39 A5 */	bl sub_800312a8
lbl_8006D908:
/* 8006D908 0006A868  38 00 00 00 */	li r0, 0
/* 8006D90C 0006A86C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8006D910 0006A870  90 01 00 40 */	stw r0, 0x40(r1)
/* 8006D914 0006A874  90 01 00 44 */	stw r0, 0x44(r1)
/* 8006D918 0006A878  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8006D91C 0006A87C  BB 41 00 58 */	lmw r26, 0x58(r1)
/* 8006D920 0006A880  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8006D924 0006A884  7C 08 03 A6 */	mtlr r0
/* 8006D928 0006A888  38 21 00 70 */	addi r1, r1, 0x70
/* 8006D92C 0006A88C  4E 80 00 20 */	blr

.global "insert<Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator>__Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>FQ24rstl114pointer_iterator<10CPrimitive,Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iteratorQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator"
"insert<Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator>__Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>FQ24rstl114pointer_iterator<10CPrimitive,Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iteratorQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator":
/* 8006D930 0006A890  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8006D934 0006A894  7C 08 02 A6 */	mflr r0
/* 8006D938 0006A898  90 01 00 34 */	stw r0, 0x34(r1)
/* 8006D93C 0006A89C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8006D940 0006A8A0  7C 7F 1B 78 */	mr r31, r3
/* 8006D944 0006A8A4  38 61 00 1C */	addi r3, r1, 0x1c
/* 8006D948 0006A8A8  81 25 00 00 */	lwz r9, 0(r5)
/* 8006D94C 0006A8AC  81 05 00 04 */	lwz r8, 4(r5)
/* 8006D950 0006A8B0  80 04 00 00 */	lwz r0, 0(r4)
/* 8006D954 0006A8B4  38 81 00 14 */	addi r4, r1, 0x14
/* 8006D958 0006A8B8  80 E6 00 00 */	lwz r7, 0(r6)
/* 8006D95C 0006A8BC  80 A6 00 04 */	lwz r5, 4(r6)
/* 8006D960 0006A8C0  91 21 00 0C */	stw r9, 0xc(r1)
/* 8006D964 0006A8C4  91 01 00 10 */	stw r8, 0x10(r1)
/* 8006D968 0006A8C8  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8006D96C 0006A8CC  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8006D970 0006A8D0  91 21 00 1C */	stw r9, 0x1c(r1)
/* 8006D974 0006A8D4  91 01 00 20 */	stw r8, 0x20(r1)
/* 8006D978 0006A8D8  90 01 00 08 */	stw r0, 8(r1)
/* 8006D97C 0006A8DC  48 00 04 DD */	bl "distance<Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator>__4rstlFQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iteratorQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator"
/* 8006D980 0006A8E0  7C 65 1B 78 */	mr r5, r3
/* 8006D984 0006A8E4  7F E3 FB 78 */	mr r3, r31
/* 8006D988 0006A8E8  38 81 00 08 */	addi r4, r1, 8
/* 8006D98C 0006A8EC  38 C1 00 0C */	addi r6, r1, 0xc
/* 8006D990 0006A8F0  48 00 00 19 */	bl "insert_into<Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator>__Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>FQ24rstl114pointer_iterator<10CPrimitive,Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator"
/* 8006D994 0006A8F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8006D998 0006A8F8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8006D99C 0006A8FC  7C 08 03 A6 */	mtlr r0
/* 8006D9A0 0006A900  38 21 00 30 */	addi r1, r1, 0x30
/* 8006D9A4 0006A904  4E 80 00 20 */	blr

.global "insert_into<Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator>__Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>FQ24rstl114pointer_iterator<10CPrimitive,Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator"
"insert_into<Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator>__Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>FQ24rstl114pointer_iterator<10CPrimitive,Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator":
/* 8006D9A8 0006A908  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8006D9AC 0006A90C  7C 08 02 A6 */	mflr r0
/* 8006D9B0 0006A910  90 01 00 44 */	stw r0, 0x44(r1)
/* 8006D9B4 0006A914  BE 81 00 10 */	stmw r20, 0x10(r1)
/* 8006D9B8 0006A918  7C BF 2B 78 */	mr r31, r5
/* 8006D9BC 0006A91C  7C 7E 1B 78 */	mr r30, r3
/* 8006D9C0 0006A920  7C 94 23 78 */	mr r20, r4
/* 8006D9C4 0006A924  80 A3 00 04 */	lwz r5, 4(r3)
/* 8006D9C8 0006A928  80 63 00 08 */	lwz r3, 8(r3)
/* 8006D9CC 0006A92C  7C E5 FA 14 */	add r7, r5, r31
/* 8006D9D0 0006A930  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8006D9D4 0006A934  7C 07 18 00 */	cmpw r7, r3
/* 8006D9D8 0006A938  83 66 00 00 */	lwz r27, 0(r6)
/* 8006D9DC 0006A93C  83 46 00 04 */	lwz r26, 4(r6)
/* 8006D9E0 0006A940  7C 97 23 78 */	mr r23, r4
/* 8006D9E4 0006A944  41 81 01 08 */	bgt lbl_8006DAEC
/* 8006D9E8 0006A948  80 14 00 00 */	lwz r0, 0(r20)
/* 8006D9EC 0006A94C  3C 60 2A AB */	lis r3, 0x2AAAAAAB@ha
/* 8006D9F0 0006A950  38 63 AA AB */	addi r3, r3, 0x2AAAAAAB@l
/* 8006D9F4 0006A954  7C 04 00 50 */	subf r0, r4, r0
/* 8006D9F8 0006A958  7C 03 00 96 */	mulhw r0, r3, r0
/* 8006D9FC 0006A95C  7C 00 16 70 */	srawi r0, r0, 2
/* 8006DA00 0006A960  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8006DA04 0006A964  7E 80 1A 14 */	add r20, r0, r3
/* 8006DA08 0006A968  7C 74 28 50 */	subf r3, r20, r5
/* 8006DA0C 0006A96C  3A E3 FF FF */	addi r23, r3, -1
/* 8006DA10 0006A970  1C 74 00 18 */	mulli r3, r20, 0x18
/* 8006DA14 0006A974  1C 1F 00 18 */	mulli r0, r31, 0x18
/* 8006DA18 0006A978  7F 04 1A 14 */	add r24, r4, r3
/* 8006DA1C 0006A97C  1C 77 00 18 */	mulli r3, r23, 0x18
/* 8006DA20 0006A980  7E A0 1A 14 */	add r21, r0, r3
/* 8006DA24 0006A984  7E B8 AA 14 */	add r21, r24, r21
/* 8006DA28 0006A988  7E D8 1A 14 */	add r22, r24, r3
/* 8006DA2C 0006A98C  48 00 00 5C */	b lbl_8006DA88
lbl_8006DA30:
/* 8006DA30 0006A990  7C 14 BA 14 */	add r0, r20, r23
/* 8006DA34 0006A994  28 15 00 00 */	cmplwi r21, 0
/* 8006DA38 0006A998  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8006DA3C 0006A99C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8006DA40 0006A9A0  7C A3 02 14 */	add r5, r3, r0
/* 8006DA44 0006A9A4  41 82 00 20 */	beq lbl_8006DA64
/* 8006DA48 0006A9A8  80 05 00 00 */	lwz r0, 0(r5)
/* 8006DA4C 0006A9AC  38 75 00 08 */	addi r3, r21, 8
/* 8006DA50 0006A9B0  38 85 00 08 */	addi r4, r5, 8
/* 8006DA54 0006A9B4  90 15 00 00 */	stw r0, 0(r21)
/* 8006DA58 0006A9B8  80 05 00 04 */	lwz r0, 4(r5)
/* 8006DA5C 0006A9BC  90 15 00 04 */	stw r0, 4(r21)
/* 8006DA60 0006A9C0  48 2D 07 01 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_8006DA64:
/* 8006DA64 0006A9C4  28 16 00 00 */	cmplwi r22, 0
/* 8006DA68 0006A9C8  41 82 00 14 */	beq lbl_8006DA7C
/* 8006DA6C 0006A9CC  34 16 00 08 */	addic. r0, r22, 8
/* 8006DA70 0006A9D0  41 82 00 0C */	beq lbl_8006DA7C
/* 8006DA74 0006A9D4  38 76 00 08 */	addi r3, r22, 8
/* 8006DA78 0006A9D8  48 2D 00 69 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8006DA7C:
/* 8006DA7C 0006A9DC  3A B5 FF E8 */	addi r21, r21, -24
/* 8006DA80 0006A9E0  3A D6 FF E8 */	addi r22, r22, -24
/* 8006DA84 0006A9E4  3A F7 FF FF */	addi r23, r23, -1
lbl_8006DA88:
/* 8006DA88 0006A9E8  2C 17 00 00 */	cmpwi r23, 0
/* 8006DA8C 0006A9EC  40 80 FF A4 */	bge lbl_8006DA30
/* 8006DA90 0006A9F0  3A 80 00 00 */	li r20, 0
/* 8006DA94 0006A9F4  48 00 00 40 */	b lbl_8006DAD4
lbl_8006DA98:
/* 8006DA98 0006A9F8  28 18 00 00 */	cmplwi r24, 0
/* 8006DA9C 0006A9FC  41 82 00 20 */	beq lbl_8006DABC
/* 8006DAA0 0006AA00  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8006DAA4 0006AA04  38 78 00 08 */	addi r3, r24, 8
/* 8006DAA8 0006AA08  38 9B 00 18 */	addi r4, r27, 0x18
/* 8006DAAC 0006AA0C  90 18 00 00 */	stw r0, 0(r24)
/* 8006DAB0 0006AA10  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8006DAB4 0006AA14  90 18 00 04 */	stw r0, 4(r24)
/* 8006DAB8 0006AA18  48 2D 06 A9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_8006DABC:
/* 8006DABC 0006AA1C  7F 43 D3 78 */	mr r3, r26
/* 8006DAC0 0006AA20  7F 64 DB 78 */	mr r4, r27
/* 8006DAC4 0006AA24  48 2C EB 1D */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 8006DAC8 0006AA28  7C 7B 1B 78 */	mr r27, r3
/* 8006DACC 0006AA2C  3A 94 00 01 */	addi r20, r20, 1
/* 8006DAD0 0006AA30  3B 18 00 18 */	addi r24, r24, 0x18
lbl_8006DAD4:
/* 8006DAD4 0006AA34  7C 14 F8 00 */	cmpw r20, r31
/* 8006DAD8 0006AA38  41 80 FF C0 */	blt lbl_8006DA98
/* 8006DADC 0006AA3C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8006DAE0 0006AA40  7C 00 FA 14 */	add r0, r0, r31
/* 8006DAE4 0006AA44  90 1E 00 04 */	stw r0, 4(r30)
/* 8006DAE8 0006AA48  48 00 01 D4 */	b lbl_8006DCBC
lbl_8006DAEC:
/* 8006DAEC 0006AA4C  2C 03 00 00 */	cmpwi r3, 0
/* 8006DAF0 0006AA50  38 00 00 04 */	li r0, 4
/* 8006DAF4 0006AA54  41 82 00 08 */	beq lbl_8006DAFC
/* 8006DAF8 0006AA58  54 60 08 3C */	slwi r0, r3, 1
lbl_8006DAFC:
/* 8006DAFC 0006AA5C  7C 16 03 78 */	mr r22, r0
/* 8006DB00 0006AA60  48 00 00 08 */	b lbl_8006DB08
lbl_8006DB04:
/* 8006DB04 0006AA64  56 D6 08 3C */	slwi r22, r22, 1
lbl_8006DB08:
/* 8006DB08 0006AA68  7C 16 38 00 */	cmpw r22, r7
/* 8006DB0C 0006AA6C  41 80 FF F8 */	blt lbl_8006DB04
/* 8006DB10 0006AA70  1C 76 00 18 */	mulli r3, r22, 0x18
/* 8006DB14 0006AA74  2C 03 00 00 */	cmpwi r3, 0
/* 8006DB18 0006AA78  40 82 00 0C */	bne lbl_8006DB24
/* 8006DB1C 0006AA7C  3B A0 00 00 */	li r29, 0
/* 8006DB20 0006AA80  48 00 00 18 */	b lbl_8006DB38
lbl_8006DB24:
/* 8006DB24 0006AA84  3C 80 80 3D */	lis r4, lbl_803CD250@ha
/* 8006DB28 0006AA88  38 A0 00 00 */	li r5, 0
/* 8006DB2C 0006AA8C  38 84 D2 50 */	addi r4, r4, lbl_803CD250@l
/* 8006DB30 0006AA90  48 2A 7C E9 */	bl __nwa__FUlPCcPCc
/* 8006DB34 0006AA94  7C 7D 1B 78 */	mr r29, r3
lbl_8006DB38:
/* 8006DB38 0006AA98  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8006DB3C 0006AA9C  3C 60 2A AB */	lis r3, 0x2AAAAAAB@ha
/* 8006DB40 0006AAA0  80 14 00 00 */	lwz r0, 0(r20)
/* 8006DB44 0006AAA4  38 63 AA AB */	addi r3, r3, 0x2AAAAAAB@l
/* 8006DB48 0006AAA8  7F B8 EB 78 */	mr r24, r29
/* 8006DB4C 0006AAAC  3A A0 00 00 */	li r21, 0
/* 8006DB50 0006AAB0  7C 04 00 50 */	subf r0, r4, r0
/* 8006DB54 0006AAB4  3A 80 00 00 */	li r20, 0
/* 8006DB58 0006AAB8  7C 03 00 96 */	mulhw r0, r3, r0
/* 8006DB5C 0006AABC  3B 20 00 00 */	li r25, 0
/* 8006DB60 0006AAC0  7C 00 16 70 */	srawi r0, r0, 2
/* 8006DB64 0006AAC4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8006DB68 0006AAC8  7F 80 1A 14 */	add r28, r0, r3
/* 8006DB6C 0006AACC  48 00 00 40 */	b lbl_8006DBAC
lbl_8006DB70:
/* 8006DB70 0006AAD0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8006DB74 0006AAD4  28 18 00 00 */	cmplwi r24, 0
/* 8006DB78 0006AAD8  7C A0 CA 14 */	add r5, r0, r25
/* 8006DB7C 0006AADC  41 82 00 20 */	beq lbl_8006DB9C
/* 8006DB80 0006AAE0  80 05 00 00 */	lwz r0, 0(r5)
/* 8006DB84 0006AAE4  38 78 00 08 */	addi r3, r24, 8
/* 8006DB88 0006AAE8  38 85 00 08 */	addi r4, r5, 8
/* 8006DB8C 0006AAEC  90 18 00 00 */	stw r0, 0(r24)
/* 8006DB90 0006AAF0  80 05 00 04 */	lwz r0, 4(r5)
/* 8006DB94 0006AAF4  90 18 00 04 */	stw r0, 4(r24)
/* 8006DB98 0006AAF8  48 2D 05 C9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_8006DB9C:
/* 8006DB9C 0006AAFC  3B 18 00 18 */	addi r24, r24, 0x18
/* 8006DBA0 0006AB00  3A B5 00 01 */	addi r21, r21, 1
/* 8006DBA4 0006AB04  3B 39 00 18 */	addi r25, r25, 0x18
/* 8006DBA8 0006AB08  3A 94 00 01 */	addi r20, r20, 1
lbl_8006DBAC:
/* 8006DBAC 0006AB0C  7C 14 E0 00 */	cmpw r20, r28
/* 8006DBB0 0006AB10  41 80 FF C0 */	blt lbl_8006DB70
/* 8006DBB4 0006AB14  1C 15 00 18 */	mulli r0, r21, 0x18
/* 8006DBB8 0006AB18  3B 00 00 00 */	li r24, 0
/* 8006DBBC 0006AB1C  7E 9D 02 14 */	add r20, r29, r0
/* 8006DBC0 0006AB20  48 00 00 44 */	b lbl_8006DC04
lbl_8006DBC4:
/* 8006DBC4 0006AB24  28 14 00 00 */	cmplwi r20, 0
/* 8006DBC8 0006AB28  41 82 00 20 */	beq lbl_8006DBE8
/* 8006DBCC 0006AB2C  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8006DBD0 0006AB30  38 74 00 08 */	addi r3, r20, 8
/* 8006DBD4 0006AB34  38 9B 00 18 */	addi r4, r27, 0x18
/* 8006DBD8 0006AB38  90 14 00 00 */	stw r0, 0(r20)
/* 8006DBDC 0006AB3C  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8006DBE0 0006AB40  90 14 00 04 */	stw r0, 4(r20)
/* 8006DBE4 0006AB44  48 2D 05 7D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_8006DBE8:
/* 8006DBE8 0006AB48  7F 43 D3 78 */	mr r3, r26
/* 8006DBEC 0006AB4C  7F 64 DB 78 */	mr r4, r27
/* 8006DBF0 0006AB50  48 2C E9 F1 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 8006DBF4 0006AB54  7C 7B 1B 78 */	mr r27, r3
/* 8006DBF8 0006AB58  3A B5 00 01 */	addi r21, r21, 1
/* 8006DBFC 0006AB5C  3B 18 00 01 */	addi r24, r24, 1
/* 8006DC00 0006AB60  3A 94 00 18 */	addi r20, r20, 0x18
lbl_8006DC04:
/* 8006DC04 0006AB64  7C 18 F8 00 */	cmpw r24, r31
/* 8006DC08 0006AB68  41 80 FF BC */	blt lbl_8006DBC4
/* 8006DC0C 0006AB6C  1C 15 00 18 */	mulli r0, r21, 0x18
/* 8006DC10 0006AB70  7F 98 E3 78 */	mr r24, r28
/* 8006DC14 0006AB74  1E 9C 00 18 */	mulli r20, r28, 0x18
/* 8006DC18 0006AB78  7E BD 02 14 */	add r21, r29, r0
/* 8006DC1C 0006AB7C  48 00 00 3C */	b lbl_8006DC58
lbl_8006DC20:
/* 8006DC20 0006AB80  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8006DC24 0006AB84  28 15 00 00 */	cmplwi r21, 0
/* 8006DC28 0006AB88  7C A0 A2 14 */	add r5, r0, r20
/* 8006DC2C 0006AB8C  41 82 00 20 */	beq lbl_8006DC4C
/* 8006DC30 0006AB90  80 05 00 00 */	lwz r0, 0(r5)
/* 8006DC34 0006AB94  38 75 00 08 */	addi r3, r21, 8
/* 8006DC38 0006AB98  38 85 00 08 */	addi r4, r5, 8
/* 8006DC3C 0006AB9C  90 15 00 00 */	stw r0, 0(r21)
/* 8006DC40 0006ABA0  80 05 00 04 */	lwz r0, 4(r5)
/* 8006DC44 0006ABA4  90 15 00 04 */	stw r0, 4(r21)
/* 8006DC48 0006ABA8  48 2D 05 19 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_8006DC4C:
/* 8006DC4C 0006ABAC  3A B5 00 18 */	addi r21, r21, 0x18
/* 8006DC50 0006ABB0  3A 94 00 18 */	addi r20, r20, 0x18
/* 8006DC54 0006ABB4  3B 18 00 01 */	addi r24, r24, 1
lbl_8006DC58:
/* 8006DC58 0006ABB8  80 1E 00 04 */	lwz r0, 4(r30)
/* 8006DC5C 0006ABBC  7C 18 00 00 */	cmpw r24, r0
/* 8006DC60 0006ABC0  41 80 FF C0 */	blt lbl_8006DC20
/* 8006DC64 0006ABC4  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8006DC68 0006ABC8  7E F4 BB 78 */	mr r20, r23
/* 8006DC6C 0006ABCC  7E B7 02 14 */	add r21, r23, r0
/* 8006DC70 0006ABD0  48 00 00 20 */	b lbl_8006DC90
lbl_8006DC74:
/* 8006DC74 0006ABD4  28 14 00 00 */	cmplwi r20, 0
/* 8006DC78 0006ABD8  41 82 00 14 */	beq lbl_8006DC8C
/* 8006DC7C 0006ABDC  34 14 00 08 */	addic. r0, r20, 8
/* 8006DC80 0006ABE0  41 82 00 0C */	beq lbl_8006DC8C
/* 8006DC84 0006ABE4  38 74 00 08 */	addi r3, r20, 8
/* 8006DC88 0006ABE8  48 2C FE 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8006DC8C:
/* 8006DC8C 0006ABEC  3A 94 00 18 */	addi r20, r20, 0x18
lbl_8006DC90:
/* 8006DC90 0006ABF0  7C 14 A8 40 */	cmplw r20, r21
/* 8006DC94 0006ABF4  40 82 FF E0 */	bne lbl_8006DC74
/* 8006DC98 0006ABF8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8006DC9C 0006ABFC  28 03 00 00 */	cmplwi r3, 0
/* 8006DCA0 0006AC00  41 82 00 08 */	beq lbl_8006DCA8
/* 8006DCA4 0006AC04  48 2A 7C 8D */	bl Free__7CMemoryFPCv
lbl_8006DCA8:
/* 8006DCA8 0006AC08  93 BE 00 0C */	stw r29, 0xc(r30)
/* 8006DCAC 0006AC0C  92 DE 00 08 */	stw r22, 8(r30)
/* 8006DCB0 0006AC10  80 1E 00 04 */	lwz r0, 4(r30)
/* 8006DCB4 0006AC14  7C 00 FA 14 */	add r0, r0, r31
/* 8006DCB8 0006AC18  90 1E 00 04 */	stw r0, 4(r30)
lbl_8006DCBC:
/* 8006DCBC 0006AC1C  BA 81 00 10 */	lmw r20, 0x10(r1)
/* 8006DCC0 0006AC20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8006DCC4 0006AC24  7C 08 03 A6 */	mtlr r0
/* 8006DCC8 0006AC28  38 21 00 40 */	addi r1, r1, 0x40
/* 8006DCCC 0006AC2C  4E 80 00 20 */	blr

.global GetMetaAnim__22CAnimationDatabaseGameCFUi
GetMetaAnim__22CAnimationDatabaseGameCFUi:
/* 8006DCD0 0006AC30  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8006DCD4 0006AC34  54 80 10 3A */	slwi r0, r4, 2
/* 8006DCD8 0006AC38  7C 63 02 14 */	add r3, r3, r0
/* 8006DCDC 0006AC3C  4E 80 00 20 */	blr

.global GetNumMetaAnims__22CAnimationDatabaseGameCFv
GetNumMetaAnims__22CAnimationDatabaseGameCFv:
/* 8006DCE0 0006AC40  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8006DCE4 0006AC44  4E 80 00 20 */	blr

.global GetMetaAnimName__22CAnimationDatabaseGameCFUi
GetMetaAnimName__22CAnimationDatabaseGameCFUi:
/* 8006DCE8 0006AC48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006DCEC 0006AC4C  7C 08 02 A6 */	mflr r0
/* 8006DCF0 0006AC50  3C 80 80 3D */	lis r4, lbl_803CD250@ha
/* 8006DCF4 0006AC54  38 A0 FF FF */	li r5, -1
/* 8006DCF8 0006AC58  38 84 D2 50 */	addi r4, r4, lbl_803CD250@l
/* 8006DCFC 0006AC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006DD00 0006AC60  38 C1 00 08 */	addi r6, r1, 8
/* 8006DD04 0006AC64  38 84 00 07 */	addi r4, r4, 7
/* 8006DD08 0006AC68  48 2D 04 8D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 8006DD0C 0006AC6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006DD10 0006AC70  7C 08 03 A6 */	mtlr r0
/* 8006DD14 0006AC74  38 21 00 10 */	addi r1, r1, 0x10
/* 8006DD18 0006AC78  4E 80 00 20 */	blr

.global "__ct__22CAnimationDatabaseGameFRCQ24rstl47vector<10CAnimation,Q24rstl17rmemory_allocator>"
"__ct__22CAnimationDatabaseGameFRCQ24rstl47vector<10CAnimation,Q24rstl17rmemory_allocator>":
/* 8006DD1C 0006AC7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8006DD20 0006AC80  7C 08 02 A6 */	mflr r0
/* 8006DD24 0006AC84  3C A0 80 3E */	lis r5, __vt__18CAnimationDatabase@ha
/* 8006DD28 0006AC88  90 01 00 34 */	stw r0, 0x34(r1)
/* 8006DD2C 0006AC8C  38 00 00 00 */	li r0, 0
/* 8006DD30 0006AC90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8006DD34 0006AC94  7C 7F 1B 78 */	mr r31, r3
/* 8006DD38 0006AC98  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8006DD3C 0006AC9C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8006DD40 0006ACA0  7C 9D 23 78 */	mr r29, r4
/* 8006DD44 0006ACA4  98 01 00 10 */	stb r0, 0x10(r1)
/* 8006DD48 0006ACA8  38 05 9B E0 */	addi r0, r5, __vt__18CAnimationDatabase@l
/* 8006DD4C 0006ACAC  90 03 00 00 */	stw r0, 0(r3)
/* 8006DD50 0006ACB0  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8006DD54 0006ACB4  98 03 00 0C */	stb r0, 0xc(r3)
/* 8006DD58 0006ACB8  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8006DD5C 0006ACBC  28 00 00 00 */	cmplwi r0, 0
/* 8006DD60 0006ACC0  41 82 00 14 */	beq lbl_8006DD74
/* 8006DD64 0006ACC4  34 7F 00 04 */	addic. r3, r31, 4
/* 8006DD68 0006ACC8  38 81 00 08 */	addi r4, r1, 8
/* 8006DD6C 0006ACCC  41 82 00 08 */	beq lbl_8006DD74
/* 8006DD70 0006ACD0  48 2D 31 39 */	bl __ct__6CTokenFRC6CToken
lbl_8006DD74:
/* 8006DD74 0006ACD4  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8006DD78 0006ACD8  28 00 00 00 */	cmplwi r0, 0
/* 8006DD7C 0006ACDC  41 82 00 14 */	beq lbl_8006DD90
/* 8006DD80 0006ACE0  34 61 00 08 */	addic. r3, r1, 8
/* 8006DD84 0006ACE4  41 82 00 0C */	beq lbl_8006DD90
/* 8006DD88 0006ACE8  38 80 00 00 */	li r4, 0
/* 8006DD8C 0006ACEC  48 2D 30 B5 */	bl __dt__6CTokenFv
lbl_8006DD90:
/* 8006DD90 0006ACF0  38 80 00 00 */	li r4, 0
/* 8006DD94 0006ACF4  3C 60 80 3E */	lis r3, __vt__22CAnimationDatabaseGame@ha
/* 8006DD98 0006ACF8  98 81 00 10 */	stb r4, 0x10(r1)
/* 8006DD9C 0006ACFC  38 03 A3 20 */	addi r0, r3, __vt__22CAnimationDatabaseGame@l
/* 8006DDA0 0006AD00  38 7F 00 10 */	addi r3, r31, 0x10
/* 8006DDA4 0006AD04  90 1F 00 00 */	stw r0, 0(r31)
/* 8006DDA8 0006AD08  90 9F 00 14 */	stw r4, 0x14(r31)
/* 8006DDAC 0006AD0C  90 9F 00 18 */	stw r4, 0x18(r31)
/* 8006DDB0 0006AD10  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 8006DDB4 0006AD14  80 9D 00 04 */	lwz r4, 4(r29)
/* 8006DDB8 0006AD18  83 BD 00 0C */	lwz r29, 0xc(r29)
/* 8006DDBC 0006AD1C  1C 04 00 14 */	mulli r0, r4, 0x14
/* 8006DDC0 0006AD20  7F DD 02 14 */	add r30, r29, r0
/* 8006DDC4 0006AD24  48 00 02 7D */	bl "reserve__Q24rstl62vector<Q24rstl18rc_ptr<9IMetaAnim>,Q24rstl17rmemory_allocator>Fi"
/* 8006DDC8 0006AD28  48 00 00 68 */	b lbl_8006DE30
lbl_8006DDCC:
/* 8006DDCC 0006AD2C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8006DDD0 0006AD30  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8006DDD4 0006AD34  7C 00 28 00 */	cmpw r0, r5
/* 8006DDD8 0006AD38  41 80 00 1C */	blt lbl_8006DDF4
/* 8006DDDC 0006AD3C  2C 05 00 00 */	cmpwi r5, 0
/* 8006DDE0 0006AD40  38 7F 00 10 */	addi r3, r31, 0x10
/* 8006DDE4 0006AD44  38 80 00 04 */	li r4, 4
/* 8006DDE8 0006AD48  41 82 00 08 */	beq lbl_8006DDF0
/* 8006DDEC 0006AD4C  54 A4 08 3C */	slwi r4, r5, 1
lbl_8006DDF0:
/* 8006DDF0 0006AD50  48 00 02 51 */	bl "reserve__Q24rstl62vector<Q24rstl18rc_ptr<9IMetaAnim>,Q24rstl17rmemory_allocator>Fi"
lbl_8006DDF4:
/* 8006DDF4 0006AD54  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8006DDF8 0006AD58  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8006DDFC 0006AD5C  54 00 10 3A */	slwi r0, r0, 2
/* 8006DE00 0006AD60  7C 63 02 15 */	add. r3, r3, r0
/* 8006DE04 0006AD64  41 82 00 1C */	beq lbl_8006DE20
/* 8006DE08 0006AD68  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8006DE0C 0006AD6C  90 03 00 00 */	stw r0, 0(r3)
/* 8006DE10 0006AD70  80 83 00 00 */	lwz r4, 0(r3)
/* 8006DE14 0006AD74  80 64 00 04 */	lwz r3, 4(r4)
/* 8006DE18 0006AD78  38 03 00 01 */	addi r0, r3, 1
/* 8006DE1C 0006AD7C  90 04 00 04 */	stw r0, 4(r4)
lbl_8006DE20:
/* 8006DE20 0006AD80  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8006DE24 0006AD84  3B BD 00 14 */	addi r29, r29, 0x14
/* 8006DE28 0006AD88  38 03 00 01 */	addi r0, r3, 1
/* 8006DE2C 0006AD8C  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_8006DE30:
/* 8006DE30 0006AD90  7C 1D F0 40 */	cmplw r29, r30
/* 8006DE34 0006AD94  40 82 FF 98 */	bne lbl_8006DDCC
/* 8006DE38 0006AD98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8006DE3C 0006AD9C  7F E3 FB 78 */	mr r3, r31
/* 8006DE40 0006ADA0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8006DE44 0006ADA4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8006DE48 0006ADA8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8006DE4C 0006ADAC  7C 08 03 A6 */	mtlr r0
/* 8006DE50 0006ADB0  38 21 00 30 */	addi r1, r1, 0x30
/* 8006DE54 0006ADB4  4E 80 00 20 */	blr

.global "distance<Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator>__4rstlFQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iteratorQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator"
"distance<Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator>__4rstlFQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iteratorQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator":
/* 8006DE58 0006ADB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8006DE5C 0006ADBC  7C 08 02 A6 */	mflr r0
/* 8006DE60 0006ADC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006DE64 0006ADC4  38 A1 00 0C */	addi r5, r1, 0xc
/* 8006DE68 0006ADC8  89 21 00 08 */	lbz r9, 8(r1)
/* 8006DE6C 0006ADCC  81 04 00 00 */	lwz r8, 0(r4)
/* 8006DE70 0006ADD0  80 E4 00 04 */	lwz r7, 4(r4)
/* 8006DE74 0006ADD4  38 81 00 10 */	addi r4, r1, 0x10
/* 8006DE78 0006ADD8  80 C3 00 00 */	lwz r6, 0(r3)
/* 8006DE7C 0006ADDC  80 03 00 04 */	lwz r0, 4(r3)
/* 8006DE80 0006ADE0  38 61 00 18 */	addi r3, r1, 0x18
/* 8006DE84 0006ADE4  99 21 00 0C */	stb r9, 0xc(r1)
/* 8006DE88 0006ADE8  91 01 00 10 */	stw r8, 0x10(r1)
/* 8006DE8C 0006ADEC  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8006DE90 0006ADF0  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8006DE94 0006ADF4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8006DE98 0006ADF8  48 00 00 15 */	bl "__distance<Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator>__4rstlFQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iteratorQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iteratorQ24rstl20forward_iterator_tag"
/* 8006DE9C 0006ADFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006DEA0 0006AE00  7C 08 03 A6 */	mtlr r0
/* 8006DEA4 0006AE04  38 21 00 20 */	addi r1, r1, 0x20
/* 8006DEA8 0006AE08  4E 80 00 20 */	blr

.global "__distance<Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator>__4rstlFQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iteratorQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iteratorQ24rstl20forward_iterator_tag"
"__distance<Q34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iterator>__4rstlFQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iteratorQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>8iteratorQ24rstl20forward_iterator_tag":
/* 8006DEAC 0006AE0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8006DEB0 0006AE10  7C 08 02 A6 */	mflr r0
/* 8006DEB4 0006AE14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006DEB8 0006AE18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8006DEBC 0006AE1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8006DEC0 0006AE20  3B C0 00 00 */	li r30, 0
/* 8006DEC4 0006AE24  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8006DEC8 0006AE28  7C 9D 23 78 */	mr r29, r4
/* 8006DECC 0006AE2C  80 A3 00 00 */	lwz r5, 0(r3)
/* 8006DED0 0006AE30  83 E3 00 04 */	lwz r31, 4(r3)
/* 8006DED4 0006AE34  48 00 00 18 */	b lbl_8006DEEC
lbl_8006DED8:
/* 8006DED8 0006AE38  7F E3 FB 78 */	mr r3, r31
/* 8006DEDC 0006AE3C  7C A4 2B 78 */	mr r4, r5
/* 8006DEE0 0006AE40  3B DE 00 01 */	addi r30, r30, 1
/* 8006DEE4 0006AE44  48 2C E6 FD */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 8006DEE8 0006AE48  7C 65 1B 78 */	mr r5, r3
lbl_8006DEEC:
/* 8006DEEC 0006AE4C  80 1D 00 00 */	lwz r0, 0(r29)
/* 8006DEF0 0006AE50  38 60 00 00 */	li r3, 0
/* 8006DEF4 0006AE54  7C 05 00 40 */	cmplw r5, r0
/* 8006DEF8 0006AE58  40 82 00 10 */	bne lbl_8006DF08
/* 8006DEFC 0006AE5C  80 1D 00 04 */	lwz r0, 4(r29)
/* 8006DF00 0006AE60  7C 1F 00 40 */	cmplw r31, r0
/* 8006DF04 0006AE64  41 82 00 08 */	beq lbl_8006DF0C
lbl_8006DF08:
/* 8006DF08 0006AE68  38 60 00 01 */	li r3, 1
lbl_8006DF0C:
/* 8006DF0C 0006AE6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8006DF10 0006AE70  40 82 FF C8 */	bne lbl_8006DED8
/* 8006DF14 0006AE74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006DF18 0006AE78  7F C3 F3 78 */	mr r3, r30
/* 8006DF1C 0006AE7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8006DF20 0006AE80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8006DF24 0006AE84  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8006DF28 0006AE88  7C 08 03 A6 */	mtlr r0
/* 8006DF2C 0006AE8C  38 21 00 20 */	addi r1, r1, 0x20
/* 8006DF30 0006AE90  4E 80 00 20 */	blr

.global "reserve__Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl47vector<10CPrimitive,Q24rstl17rmemory_allocator>Fi":
/* 8006DF34 0006AE94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8006DF38 0006AE98  7C 08 02 A6 */	mflr r0
/* 8006DF3C 0006AE9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8006DF40 0006AEA0  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8006DF44 0006AEA4  7C 9F 23 78 */	mr r31, r4
/* 8006DF48 0006AEA8  7C 7E 1B 78 */	mr r30, r3
/* 8006DF4C 0006AEAC  80 03 00 08 */	lwz r0, 8(r3)
/* 8006DF50 0006AEB0  7C 1F 00 00 */	cmpw r31, r0
/* 8006DF54 0006AEB4  40 81 00 D8 */	ble lbl_8006E02C
/* 8006DF58 0006AEB8  1C 7F 00 18 */	mulli r3, r31, 0x18
/* 8006DF5C 0006AEBC  2C 03 00 00 */	cmpwi r3, 0
/* 8006DF60 0006AEC0  40 82 00 0C */	bne lbl_8006DF6C
/* 8006DF64 0006AEC4  3B 80 00 00 */	li r28, 0
/* 8006DF68 0006AEC8  48 00 00 18 */	b lbl_8006DF80
lbl_8006DF6C:
/* 8006DF6C 0006AECC  3C 80 80 3D */	lis r4, lbl_803CD250@ha
/* 8006DF70 0006AED0  38 A0 00 00 */	li r5, 0
/* 8006DF74 0006AED4  38 84 D2 50 */	addi r4, r4, lbl_803CD250@l
/* 8006DF78 0006AED8  48 2A 78 A1 */	bl __nwa__FUlPCcPCc
/* 8006DF7C 0006AEDC  7C 7C 1B 78 */	mr r28, r3
lbl_8006DF80:
/* 8006DF80 0006AEE0  80 1E 00 04 */	lwz r0, 4(r30)
/* 8006DF84 0006AEE4  7F 9B E3 78 */	mr r27, r28
/* 8006DF88 0006AEE8  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 8006DF8C 0006AEEC  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8006DF90 0006AEF0  93 41 00 10 */	stw r26, 0x10(r1)
/* 8006DF94 0006AEF4  7F BA 02 14 */	add r29, r26, r0
/* 8006DF98 0006AEF8  93 41 00 14 */	stw r26, 0x14(r1)
/* 8006DF9C 0006AEFC  93 A1 00 08 */	stw r29, 8(r1)
/* 8006DFA0 0006AF00  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8006DFA4 0006AF04  48 00 00 30 */	b lbl_8006DFD4
lbl_8006DFA8:
/* 8006DFA8 0006AF08  28 1B 00 00 */	cmplwi r27, 0
/* 8006DFAC 0006AF0C  41 82 00 20 */	beq lbl_8006DFCC
/* 8006DFB0 0006AF10  80 1A 00 00 */	lwz r0, 0(r26)
/* 8006DFB4 0006AF14  38 7B 00 08 */	addi r3, r27, 8
/* 8006DFB8 0006AF18  38 9A 00 08 */	addi r4, r26, 8
/* 8006DFBC 0006AF1C  90 1B 00 00 */	stw r0, 0(r27)
/* 8006DFC0 0006AF20  80 1A 00 04 */	lwz r0, 4(r26)
/* 8006DFC4 0006AF24  90 1B 00 04 */	stw r0, 4(r27)
/* 8006DFC8 0006AF28  48 2D 01 99 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_8006DFCC:
/* 8006DFCC 0006AF2C  3B 7B 00 18 */	addi r27, r27, 0x18
/* 8006DFD0 0006AF30  3B 5A 00 18 */	addi r26, r26, 0x18
lbl_8006DFD4:
/* 8006DFD4 0006AF34  7C 1A E8 40 */	cmplw r26, r29
/* 8006DFD8 0006AF38  40 82 FF D0 */	bne lbl_8006DFA8
/* 8006DFDC 0006AF3C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8006DFE0 0006AF40  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 8006DFE4 0006AF44  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8006DFE8 0006AF48  7F 7A 02 14 */	add r27, r26, r0
/* 8006DFEC 0006AF4C  48 00 00 20 */	b lbl_8006E00C
lbl_8006DFF0:
/* 8006DFF0 0006AF50  28 1A 00 00 */	cmplwi r26, 0
/* 8006DFF4 0006AF54  41 82 00 14 */	beq lbl_8006E008
/* 8006DFF8 0006AF58  34 1A 00 08 */	addic. r0, r26, 8
/* 8006DFFC 0006AF5C  41 82 00 0C */	beq lbl_8006E008
/* 8006E000 0006AF60  38 7A 00 08 */	addi r3, r26, 8
/* 8006E004 0006AF64  48 2C FA DD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8006E008:
/* 8006E008 0006AF68  3B 5A 00 18 */	addi r26, r26, 0x18
lbl_8006E00C:
/* 8006E00C 0006AF6C  7C 1A D8 40 */	cmplw r26, r27
/* 8006E010 0006AF70  40 82 FF E0 */	bne lbl_8006DFF0
/* 8006E014 0006AF74  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8006E018 0006AF78  28 03 00 00 */	cmplwi r3, 0
/* 8006E01C 0006AF7C  41 82 00 08 */	beq lbl_8006E024
/* 8006E020 0006AF80  48 2A 79 11 */	bl Free__7CMemoryFPCv
lbl_8006E024:
/* 8006E024 0006AF84  93 9E 00 0C */	stw r28, 0xc(r30)
/* 8006E028 0006AF88  93 FE 00 08 */	stw r31, 8(r30)
lbl_8006E02C:
/* 8006E02C 0006AF8C  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8006E030 0006AF90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8006E034 0006AF94  7C 08 03 A6 */	mtlr r0
/* 8006E038 0006AF98  38 21 00 30 */	addi r1, r1, 0x30
/* 8006E03C 0006AF9C  4E 80 00 20 */	blr

.global "reserve__Q24rstl62vector<Q24rstl18rc_ptr<9IMetaAnim>,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl62vector<Q24rstl18rc_ptr<9IMetaAnim>,Q24rstl17rmemory_allocator>Fi":
/* 8006E040 0006AFA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8006E044 0006AFA4  7C 08 02 A6 */	mflr r0
/* 8006E048 0006AFA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8006E04C 0006AFAC  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 8006E050 0006AFB0  7C 9F 23 78 */	mr r31, r4
/* 8006E054 0006AFB4  7C 7E 1B 78 */	mr r30, r3
/* 8006E058 0006AFB8  80 03 00 08 */	lwz r0, 8(r3)
/* 8006E05C 0006AFBC  7C 1F 00 00 */	cmpw r31, r0
/* 8006E060 0006AFC0  40 81 00 C8 */	ble lbl_8006E128
/* 8006E064 0006AFC4  57 E3 10 3B */	rlwinm. r3, r31, 2, 0, 0x1d
/* 8006E068 0006AFC8  40 82 00 0C */	bne lbl_8006E074
/* 8006E06C 0006AFCC  3B A0 00 00 */	li r29, 0
/* 8006E070 0006AFD0  48 00 00 18 */	b lbl_8006E088
lbl_8006E074:
/* 8006E074 0006AFD4  3C 80 80 3D */	lis r4, lbl_803CD250@ha
/* 8006E078 0006AFD8  38 A0 00 00 */	li r5, 0
/* 8006E07C 0006AFDC  38 84 D2 50 */	addi r4, r4, lbl_803CD250@l
/* 8006E080 0006AFE0  48 2A 77 99 */	bl __nwa__FUlPCcPCc
/* 8006E084 0006AFE4  7C 7D 1B 78 */	mr r29, r3
lbl_8006E088:
/* 8006E088 0006AFE8  80 1E 00 04 */	lwz r0, 4(r30)
/* 8006E08C 0006AFEC  7F A6 EB 78 */	mr r6, r29
/* 8006E090 0006AFF0  80 FE 00 0C */	lwz r7, 0xc(r30)
/* 8006E094 0006AFF4  54 00 10 3A */	slwi r0, r0, 2
/* 8006E098 0006AFF8  7C A7 02 14 */	add r5, r7, r0
/* 8006E09C 0006AFFC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8006E0A0 0006B000  90 A1 00 08 */	stw r5, 8(r1)
/* 8006E0A4 0006B004  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8006E0A8 0006B008  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8006E0AC 0006B00C  48 00 00 2C */	b lbl_8006E0D8
lbl_8006E0B0:
/* 8006E0B0 0006B010  28 06 00 00 */	cmplwi r6, 0
/* 8006E0B4 0006B014  41 82 00 1C */	beq lbl_8006E0D0
/* 8006E0B8 0006B018  80 07 00 00 */	lwz r0, 0(r7)
/* 8006E0BC 0006B01C  90 06 00 00 */	stw r0, 0(r6)
/* 8006E0C0 0006B020  80 86 00 00 */	lwz r4, 0(r6)
/* 8006E0C4 0006B024  80 64 00 04 */	lwz r3, 4(r4)
/* 8006E0C8 0006B028  38 03 00 01 */	addi r0, r3, 1
/* 8006E0CC 0006B02C  90 04 00 04 */	stw r0, 4(r4)
lbl_8006E0D0:
/* 8006E0D0 0006B030  38 C6 00 04 */	addi r6, r6, 4
/* 8006E0D4 0006B034  38 E7 00 04 */	addi r7, r7, 4
lbl_8006E0D8:
/* 8006E0D8 0006B038  7C 07 28 40 */	cmplw r7, r5
/* 8006E0DC 0006B03C  40 82 FF D4 */	bne lbl_8006E0B0
/* 8006E0E0 0006B040  80 1E 00 04 */	lwz r0, 4(r30)
/* 8006E0E4 0006B044  83 7E 00 0C */	lwz r27, 0xc(r30)
/* 8006E0E8 0006B048  54 00 10 3A */	slwi r0, r0, 2
/* 8006E0EC 0006B04C  7F 9B 02 14 */	add r28, r27, r0
/* 8006E0F0 0006B050  48 00 00 18 */	b lbl_8006E108
lbl_8006E0F4:
/* 8006E0F4 0006B054  28 1B 00 00 */	cmplwi r27, 0
/* 8006E0F8 0006B058  41 82 00 0C */	beq lbl_8006E104
/* 8006E0FC 0006B05C  7F 63 DB 78 */	mr r3, r27
/* 8006E100 0006B060  4B FC 2E 31 */	bl "ReleaseData__Q24rstl18rc_ptr<9IMetaAnim>Fv"
lbl_8006E104:
/* 8006E104 0006B064  3B 7B 00 04 */	addi r27, r27, 4
lbl_8006E108:
/* 8006E108 0006B068  7C 1B E0 40 */	cmplw r27, r28
/* 8006E10C 0006B06C  40 82 FF E8 */	bne lbl_8006E0F4
/* 8006E110 0006B070  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8006E114 0006B074  28 03 00 00 */	cmplwi r3, 0
/* 8006E118 0006B078  41 82 00 08 */	beq lbl_8006E120
/* 8006E11C 0006B07C  48 2A 78 15 */	bl Free__7CMemoryFPCv
lbl_8006E120:
/* 8006E120 0006B080  93 BE 00 0C */	stw r29, 0xc(r30)
/* 8006E124 0006B084  93 FE 00 08 */	stw r31, 8(r30)
lbl_8006E128:
/* 8006E128 0006B088  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 8006E12C 0006B08C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8006E130 0006B090  7C 08 03 A6 */	mtlr r0
/* 8006E134 0006B094  38 21 00 30 */	addi r1, r1, 0x30
/* 8006E138 0006B098  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803CD250
lbl_803CD250:
	# ROM: 0x3CA250
	.asciz "??(??)"
	.byte 0x4D
	.asciz "eta-animation name unavailable in Release mode."
