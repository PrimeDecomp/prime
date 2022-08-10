.include "macros.inc"

.section .text, "ax"

.global __destroy_global_chain
__destroy_global_chain:
/* 80389644 003865A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80389648 003865A8  7C 08 02 A6 */	mflr r0
/* 8038964C 003865AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80389650 003865B0  48 00 00 20 */	b lbl_80389670
lbl_80389654:
/* 80389654 003865B4  80 03 00 00 */	lwz r0, 0(r3)
/* 80389658 003865B8  38 80 FF FF */	li r4, -1
/* 8038965C 003865BC  90 0D AD F0 */	stw r0, __global_destructor_chain@sda21(r13)
/* 80389660 003865C0  81 83 00 04 */	lwz r12, 4(r3)
/* 80389664 003865C4  80 63 00 08 */	lwz r3, 8(r3)
/* 80389668 003865C8  7D 89 03 A6 */	mtctr r12
/* 8038966C 003865CC  4E 80 04 21 */	bctrl
lbl_80389670:
/* 80389670 003865D0  80 6D AD F0 */	lwz r3, __global_destructor_chain@sda21(r13)
/* 80389674 003865D4  28 03 00 00 */	cmplwi r3, 0
/* 80389678 003865D8  40 82 FF DC */	bne lbl_80389654
/* 8038967C 003865DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80389680 003865E0  7C 08 03 A6 */	mtlr r0
/* 80389684 003865E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80389688 003865E8  4E 80 00 20 */	blr

.global __register_global_object
__register_global_object:
/* 8038968C 003865EC  80 0D AD F0 */	lwz r0, __global_destructor_chain@sda21(r13)
/* 80389690 003865F0  90 05 00 00 */	stw r0, 0(r5)
/* 80389694 003865F4  90 85 00 04 */	stw r4, 4(r5)
/* 80389698 003865F8  90 65 00 08 */	stw r3, 8(r5)
/* 8038969C 003865FC  90 AD AD F0 */	stw r5, __global_destructor_chain@sda21(r13)
/* 803896A0 00386600  4E 80 00 20 */	blr

.section .dtors, "wa"  # 0x8036FF80 - 0x8036FFA0
__destroy_global_chain_reference:
	.4byte __destroy_global_chain

.section .sbss
.balign 8
__global_destructor_chain:
	.skip 0x8
