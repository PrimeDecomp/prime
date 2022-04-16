.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__28CAnimTreeAnimReaderContainerFv
__dt__28CAnimTreeAnimReaderContainerFv:
/* 802F1838 002EE798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F183C 002EE79C  7C 08 02 A6 */	mflr r0
/* 802F1840 002EE7A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1844 002EE7A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F1848 002EE7A8  7C 9F 23 78 */	mr r31, r4
/* 802F184C 002EE7AC  93 C1 00 08 */	stw r30, 8(r1)
/* 802F1850 002EE7B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802F1854 002EE7B4  41 82 00 90 */	beq lbl_802F18E4
/* 802F1858 002EE7B8  3C 80 80 3F */	lis r4, lbl_803ED068@ha
/* 802F185C 002EE7BC  38 60 00 08 */	li r3, 8
/* 802F1860 002EE7C0  38 04 D0 68 */	addi r0, r4, lbl_803ED068@l
/* 802F1864 002EE7C4  38 80 00 02 */	li r4, 2
/* 802F1868 002EE7C8  90 1E 00 00 */	stw r0, 0(r30)
/* 802F186C 002EE7CC  48 00 63 3D */	bl SubtractFromTotalSize__22CCharAnimMemoryMetricsFUiQ222CCharAnimMemoryMetrics14EAnimSubSystem
/* 802F1870 002EE7D0  34 1E 00 14 */	addic. r0, r30, 0x14
/* 802F1874 002EE7D4  41 82 00 24 */	beq lbl_802F1898
/* 802F1878 002EE7D8  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 802F187C 002EE7DC  28 03 00 00 */	cmplwi r3, 0
/* 802F1880 002EE7E0  41 82 00 18 */	beq lbl_802F1898
/* 802F1884 002EE7E4  81 83 00 00 */	lwz r12, 0(r3)
/* 802F1888 002EE7E8  38 80 00 01 */	li r4, 1
/* 802F188C 002EE7EC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F1890 002EE7F0  7D 89 03 A6 */	mtctr r12
/* 802F1894 002EE7F4  4E 80 04 21 */	bctrl 
lbl_802F1898:
/* 802F1898 002EE7F8  28 1E 00 00 */	cmplwi r30, 0
/* 802F189C 002EE7FC  41 82 00 38 */	beq lbl_802F18D4
/* 802F18A0 002EE800  3C 60 80 3F */	lis r3, lbl_803ED1D0@ha
/* 802F18A4 002EE804  38 80 00 02 */	li r4, 2
/* 802F18A8 002EE808  38 03 D1 D0 */	addi r0, r3, lbl_803ED1D0@l
/* 802F18AC 002EE80C  90 1E 00 00 */	stw r0, 0(r30)
/* 802F18B0 002EE810  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802F18B4 002EE814  48 00 62 F5 */	bl SubtractFromTotalSize__22CCharAnimMemoryMetricsFUiQ222CCharAnimMemoryMetrics14EAnimSubSystem
/* 802F18B8 002EE818  34 1E 00 04 */	addic. r0, r30, 4
/* 802F18BC 002EE81C  41 82 00 0C */	beq lbl_802F18C8
/* 802F18C0 002EE820  38 7E 00 04 */	addi r3, r30, 4
/* 802F18C4 002EE824  48 04 C2 1D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F18C8:
/* 802F18C8 002EE828  7F C3 F3 78 */	mr r3, r30
/* 802F18CC 002EE82C  38 80 00 00 */	li r4, 0
/* 802F18D0 002EE830  48 00 C6 05 */	bl __dt__11IAnimReaderFv
lbl_802F18D4:
/* 802F18D4 002EE834  7F E0 07 35 */	extsh. r0, r31
/* 802F18D8 002EE838  40 81 00 0C */	ble lbl_802F18E4
/* 802F18DC 002EE83C  7F C3 F3 78 */	mr r3, r30
/* 802F18E0 002EE840  48 02 40 51 */	bl Free__7CMemoryFPCv
lbl_802F18E4:
/* 802F18E4 002EE844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F18E8 002EE848  7F C3 F3 78 */	mr r3, r30
/* 802F18EC 002EE84C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F18F0 002EE850  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F18F4 002EE854  7C 08 03 A6 */	mtlr r0
/* 802F18F8 002EE858  38 21 00 10 */	addi r1, r1, 0x10
/* 802F18FC 002EE85C  4E 80 00 20 */	blr 

.global Depth__28CAnimTreeAnimReaderContainerCFv
Depth__28CAnimTreeAnimReaderContainerCFv:
/* 802F1900 002EE860  38 60 00 01 */	li r3, 1
/* 802F1904 002EE864  4E 80 00 20 */	blr 

.global VGetNumChildren__28CAnimTreeAnimReaderContainerCFv
VGetNumChildren__28CAnimTreeAnimReaderContainerCFv:
/* 802F1908 002EE868  38 60 00 00 */	li r3, 0
/* 802F190C 002EE86C  4E 80 00 20 */	blr 

.global "VGetWeightedReaders__28CAnimTreeAnimReaderContainerFfRQ24rstl48reserved_vector<Q24rstl22pair<f,P11IAnimReader>>"
"VGetWeightedReaders__28CAnimTreeAnimReaderContainerFfRQ24rstl48reserved_vector<Q24rstl22pair<f,P11IAnimReader>>":
/* 802F1910 002EE870  80 04 00 00 */	lwz r0, 0(r4)
/* 802F1914 002EE874  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 802F1918 002EE878  54 00 18 38 */	slwi r0, r0, 3
/* 802F191C 002EE87C  7C 64 02 14 */	add r3, r4, r0
/* 802F1920 002EE880  34 63 00 04 */	addic. r3, r3, 4
/* 802F1924 002EE884  41 82 00 0C */	beq lbl_802F1930
/* 802F1928 002EE888  D0 23 00 00 */	stfs f1, 0(r3)
/* 802F192C 002EE88C  90 A3 00 04 */	stw r5, 4(r3)
lbl_802F1930:
/* 802F1930 002EE890  80 64 00 00 */	lwz r3, 0(r4)
/* 802F1934 002EE894  38 03 00 01 */	addi r0, r3, 1
/* 802F1938 002EE898  90 04 00 00 */	stw r0, 0(r4)
/* 802F193C 002EE89C  4E 80 00 20 */	blr 

.global VGetBestUnblendedChild__28CAnimTreeAnimReaderContainerCFv
VGetBestUnblendedChild__28CAnimTreeAnimReaderContainerCFv:
/* 802F1940 002EE8A0  38 0D A9 28 */	addi r0, r13, lbl_805A94E8@sda21
/* 802F1944 002EE8A4  90 03 00 00 */	stw r0, 0(r3)
/* 802F1948 002EE8A8  80 83 00 00 */	lwz r4, 0(r3)
/* 802F194C 002EE8AC  80 64 00 04 */	lwz r3, 4(r4)
/* 802F1950 002EE8B0  38 03 00 01 */	addi r0, r3, 1
/* 802F1954 002EE8B4  90 04 00 04 */	stw r0, 4(r4)
/* 802F1958 002EE8B8  4E 80 00 20 */	blr 

.global VGetAdvancementResults__28CAnimTreeAnimReaderContainerCFRC13CCharAnimTimeRC13CCharAnimTime
VGetAdvancementResults__28CAnimTreeAnimReaderContainerCFRC13CCharAnimTimeRC13CCharAnimTime:
/* 802F195C 002EE8BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1960 002EE8C0  7C 08 02 A6 */	mflr r0
/* 802F1964 002EE8C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1968 002EE8C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F196C 002EE8CC  7C 7F 1B 78 */	mr r31, r3
/* 802F1970 002EE8D0  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802F1974 002EE8D4  81 84 00 00 */	lwz r12, 0(r4)
/* 802F1978 002EE8D8  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 802F197C 002EE8DC  7D 89 03 A6 */	mtctr r12
/* 802F1980 002EE8E0  4E 80 04 21 */	bctrl 
/* 802F1984 002EE8E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1988 002EE8E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F198C 002EE8EC  7C 08 03 A6 */	mtlr r0
/* 802F1990 002EE8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1994 002EE8F4  4E 80 00 20 */	blr 

.global VSetPhase__28CAnimTreeAnimReaderContainerFf
VSetPhase__28CAnimTreeAnimReaderContainerFf:
/* 802F1998 002EE8F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F199C 002EE8FC  7C 08 02 A6 */	mflr r0
/* 802F19A0 002EE900  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F19A4 002EE904  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F19A8 002EE908  81 83 00 00 */	lwz r12, 0(r3)
/* 802F19AC 002EE90C  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 802F19B0 002EE910  7D 89 03 A6 */	mtctr r12
/* 802F19B4 002EE914  4E 80 04 21 */	bctrl 
/* 802F19B8 002EE918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F19BC 002EE91C  7C 08 03 A6 */	mtlr r0
/* 802F19C0 002EE920  38 21 00 10 */	addi r1, r1, 0x10
/* 802F19C4 002EE924  4E 80 00 20 */	blr 

.global VSimplified__28CAnimTreeAnimReaderContainerFv
VSimplified__28CAnimTreeAnimReaderContainerFv:
/* 802F19C8 002EE928  38 00 00 00 */	li r0, 0
/* 802F19CC 002EE92C  98 03 00 08 */	stb r0, 8(r3)
/* 802F19D0 002EE930  4E 80 00 20 */	blr 

.global VGetContributionOfHighestInfluence__28CAnimTreeAnimReaderContainerCFv
VGetContributionOfHighestInfluence__28CAnimTreeAnimReaderContainerCFv:
/* 802F19D4 002EE934  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802F19D8 002EE938  7C 08 02 A6 */	mflr r0
/* 802F19DC 002EE93C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802F19E0 002EE940  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802F19E4 002EE944  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802F19E8 002EE948  7C 9E 23 78 */	mr r30, r4
/* 802F19EC 002EE94C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802F19F0 002EE950  7C 7D 1B 78 */	mr r29, r3
/* 802F19F4 002EE954  38 61 00 08 */	addi r3, r1, 8
/* 802F19F8 002EE958  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802F19FC 002EE95C  83 FE 00 1C */	lwz r31, 0x1c(r30)
/* 802F1A00 002EE960  81 84 00 00 */	lwz r12, 0(r4)
/* 802F1A04 002EE964  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802F1A08 002EE968  7D 89 03 A6 */	mtctr r12
/* 802F1A0C 002EE96C  4E 80 04 21 */	bctrl 
/* 802F1A10 002EE970  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 802F1A14 002EE974  38 61 00 10 */	addi r3, r1, 0x10
/* 802F1A18 002EE978  81 84 00 00 */	lwz r12, 0(r4)
/* 802F1A1C 002EE97C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802F1A20 002EE980  7D 89 03 A6 */	mtctr r12
/* 802F1A24 002EE984  4E 80 04 21 */	bctrl 
/* 802F1A28 002EE988  C0 02 C6 80 */	lfs f0, lbl_805AE3A0@sda21(r2)
/* 802F1A2C 002EE98C  38 7D 00 04 */	addi r3, r29, 4
/* 802F1A30 002EE990  38 9E 00 04 */	addi r4, r30, 4
/* 802F1A34 002EE994  D0 1D 00 00 */	stfs f0, 0(r29)
/* 802F1A38 002EE998  48 04 C7 29 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F1A3C 002EE99C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802F1A40 002EE9A0  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 802F1A44 002EE9A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1A48 002EE9A8  90 1D 00 18 */	stw r0, 0x18(r29)
/* 802F1A4C 002EE9AC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802F1A50 002EE9B0  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 802F1A54 002EE9B4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802F1A58 002EE9B8  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 802F1A5C 002EE9BC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802F1A60 002EE9C0  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 802F1A64 002EE9C4  88 01 00 24 */	lbz r0, 0x24(r1)
/* 802F1A68 002EE9C8  98 1D 00 28 */	stb r0, 0x28(r29)
/* 802F1A6C 002EE9CC  C0 01 00 08 */	lfs f0, 8(r1)
/* 802F1A70 002EE9D0  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 802F1A74 002EE9D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802F1A78 002EE9D8  90 1D 00 30 */	stw r0, 0x30(r29)
/* 802F1A7C 002EE9DC  93 FD 00 34 */	stw r31, 0x34(r29)
/* 802F1A80 002EE9E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802F1A84 002EE9E4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802F1A88 002EE9E8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802F1A8C 002EE9EC  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 802F1A90 002EE9F0  7C 08 03 A6 */	mtlr r0
/* 802F1A94 002EE9F4  38 21 00 40 */	addi r1, r1, 0x40
/* 802F1A98 002EE9F8  4E 80 00 20 */	blr 

.global VClone__28CAnimTreeAnimReaderContainerCFv
VClone__28CAnimTreeAnimReaderContainerCFv:
/* 802F1A9C 002EE9FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F1AA0 002EEA00  7C 08 02 A6 */	mflr r0
/* 802F1AA4 002EEA04  3C A0 80 3D */	lis r5, lbl_803D6DF0@ha
/* 802F1AA8 002EEA08  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F1AAC 002EEA0C  38 05 6D F0 */	addi r0, r5, lbl_803D6DF0@l
/* 802F1AB0 002EEA10  38 A0 00 00 */	li r5, 0
/* 802F1AB4 002EEA14  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 802F1AB8 002EEA18  7C 7C 1B 78 */	mr r28, r3
/* 802F1ABC 002EEA1C  7C 9D 23 78 */	mr r29, r4
/* 802F1AC0 002EEA20  7C 04 03 78 */	mr r4, r0
/* 802F1AC4 002EEA24  3B 60 00 00 */	li r27, 0
/* 802F1AC8 002EEA28  38 60 00 20 */	li r3, 0x20
/* 802F1ACC 002EEA2C  48 02 3D A1 */	bl __nw__FUlPCcPCc
/* 802F1AD0 002EEA30  7C 7F 1B 79 */	or. r31, r3, r3
/* 802F1AD4 002EEA34  41 82 00 50 */	beq lbl_802F1B24
/* 802F1AD8 002EEA38  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 802F1ADC 002EEA3C  38 61 00 08 */	addi r3, r1, 8
/* 802F1AE0 002EEA40  4B F9 10 01 */	bl Clone__11IAnimReaderCFv
/* 802F1AE4 002EEA44  83 DD 00 1C */	lwz r30, 0x1c(r29)
/* 802F1AE8 002EEA48  7F E3 FB 78 */	mr r3, r31
/* 802F1AEC 002EEA4C  38 9D 00 04 */	addi r4, r29, 4
/* 802F1AF0 002EEA50  3B 60 00 01 */	li r27, 1
/* 802F1AF4 002EEA54  48 00 21 DD */	bl "__ct__13CAnimTreeNodeFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F1AF8 002EEA58  3C 60 80 3F */	lis r3, lbl_803ED068@ha
/* 802F1AFC 002EEA5C  38 00 00 00 */	li r0, 0
/* 802F1B00 002EEA60  38 83 D0 68 */	addi r4, r3, lbl_803ED068@l
/* 802F1B04 002EEA64  38 60 00 08 */	li r3, 8
/* 802F1B08 002EEA68  90 9F 00 00 */	stw r4, 0(r31)
/* 802F1B0C 002EEA6C  38 80 00 02 */	li r4, 2
/* 802F1B10 002EEA70  98 01 00 08 */	stb r0, 8(r1)
/* 802F1B14 002EEA74  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802F1B18 002EEA78  90 1F 00 14 */	stw r0, 0x14(r31)
/* 802F1B1C 002EEA7C  93 DF 00 1C */	stw r30, 0x1c(r31)
/* 802F1B20 002EEA80  48 00 60 99 */	bl AddToTotalSize__22CCharAnimMemoryMetricsFUiQ222CCharAnimMemoryMetrics14EAnimSubSystem
lbl_802F1B24:
/* 802F1B24 002EEA84  7C 7F 00 D0 */	neg r3, r31
/* 802F1B28 002EEA88  7F 60 07 75 */	extsb. r0, r27
/* 802F1B2C 002EEA8C  7C 60 FB 78 */	or r0, r3, r31
/* 802F1B30 002EEA90  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802F1B34 002EEA94  98 1C 00 00 */	stb r0, 0(r28)
/* 802F1B38 002EEA98  93 FC 00 04 */	stw r31, 4(r28)
/* 802F1B3C 002EEA9C  41 82 00 30 */	beq lbl_802F1B6C
/* 802F1B40 002EEAA0  88 01 00 08 */	lbz r0, 8(r1)
/* 802F1B44 002EEAA4  28 00 00 00 */	cmplwi r0, 0
/* 802F1B48 002EEAA8  41 82 00 24 */	beq lbl_802F1B6C
/* 802F1B4C 002EEAAC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802F1B50 002EEAB0  28 03 00 00 */	cmplwi r3, 0
/* 802F1B54 002EEAB4  41 82 00 18 */	beq lbl_802F1B6C
/* 802F1B58 002EEAB8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F1B5C 002EEABC  38 80 00 01 */	li r4, 1
/* 802F1B60 002EEAC0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F1B64 002EEAC4  7D 89 03 A6 */	mtctr r12
/* 802F1B68 002EEAC8  4E 80 04 21 */	bctrl 
lbl_802F1B6C:
/* 802F1B6C 002EEACC  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 802F1B70 002EEAD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F1B74 002EEAD4  7C 08 03 A6 */	mtlr r0
/* 802F1B78 002EEAD8  38 21 00 30 */	addi r1, r1, 0x30
/* 802F1B7C 002EEADC  4E 80 00 20 */	blr 

.global VGetSegStatementSet__28CAnimTreeAnimReaderContainerCFRC10CSegIdListR16CSegStatementSetRC13CCharAnimTime
VGetSegStatementSet__28CAnimTreeAnimReaderContainerCFRC10CSegIdListR16CSegStatementSetRC13CCharAnimTime:
/* 802F1B80 002EEAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1B84 002EEAE4  7C 08 02 A6 */	mflr r0
/* 802F1B88 002EEAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1B8C 002EEAEC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F1B90 002EEAF0  81 83 00 00 */	lwz r12, 0(r3)
/* 802F1B94 002EEAF4  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802F1B98 002EEAF8  7D 89 03 A6 */	mtctr r12
/* 802F1B9C 002EEAFC  4E 80 04 21 */	bctrl 
/* 802F1BA0 002EEB00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1BA4 002EEB04  7C 08 03 A6 */	mtlr r0
/* 802F1BA8 002EEB08  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1BAC 002EEB0C  4E 80 00 20 */	blr 

.global VGetSegStatementSet__28CAnimTreeAnimReaderContainerCFRC10CSegIdListR16CSegStatementSet
VGetSegStatementSet__28CAnimTreeAnimReaderContainerCFRC10CSegIdListR16CSegStatementSet:
/* 802F1BB0 002EEB10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1BB4 002EEB14  7C 08 02 A6 */	mflr r0
/* 802F1BB8 002EEB18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1BBC 002EEB1C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F1BC0 002EEB20  81 83 00 00 */	lwz r12, 0(r3)
/* 802F1BC4 002EEB24  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802F1BC8 002EEB28  7D 89 03 A6 */	mtctr r12
/* 802F1BCC 002EEB2C  4E 80 04 21 */	bctrl 
/* 802F1BD0 002EEB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1BD4 002EEB34  7C 08 03 A6 */	mtlr r0
/* 802F1BD8 002EEB38  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1BDC 002EEB3C  4E 80 00 20 */	blr 

.global VGetParticlePOIState__28CAnimTreeAnimReaderContainerCFPCc
VGetParticlePOIState__28CAnimTreeAnimReaderContainerCFPCc:
/* 802F1BE0 002EEB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1BE4 002EEB44  7C 08 02 A6 */	mflr r0
/* 802F1BE8 002EEB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1BEC 002EEB4C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F1BF0 002EEB50  81 83 00 00 */	lwz r12, 0(r3)
/* 802F1BF4 002EEB54  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802F1BF8 002EEB58  7D 89 03 A6 */	mtctr r12
/* 802F1BFC 002EEB5C  4E 80 04 21 */	bctrl 
/* 802F1C00 002EEB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1C04 002EEB64  7C 08 03 A6 */	mtlr r0
/* 802F1C08 002EEB68  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1C0C 002EEB6C  4E 80 00 20 */	blr 

.global VGetInt32POIState__28CAnimTreeAnimReaderContainerCFPCc
VGetInt32POIState__28CAnimTreeAnimReaderContainerCFPCc:
/* 802F1C10 002EEB70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1C14 002EEB74  7C 08 02 A6 */	mflr r0
/* 802F1C18 002EEB78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1C1C 002EEB7C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F1C20 002EEB80  81 83 00 00 */	lwz r12, 0(r3)
/* 802F1C24 002EEB84  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802F1C28 002EEB88  7D 89 03 A6 */	mtctr r12
/* 802F1C2C 002EEB8C  4E 80 04 21 */	bctrl 
/* 802F1C30 002EEB90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1C34 002EEB94  7C 08 03 A6 */	mtlr r0
/* 802F1C38 002EEB98  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1C3C 002EEB9C  4E 80 00 20 */	blr 

.global VGetBoolPOIState__28CAnimTreeAnimReaderContainerCFPCc
VGetBoolPOIState__28CAnimTreeAnimReaderContainerCFPCc:
/* 802F1C40 002EEBA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1C44 002EEBA4  7C 08 02 A6 */	mflr r0
/* 802F1C48 002EEBA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1C4C 002EEBAC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F1C50 002EEBB0  81 83 00 00 */	lwz r12, 0(r3)
/* 802F1C54 002EEBB4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802F1C58 002EEBB8  7D 89 03 A6 */	mtctr r12
/* 802F1C5C 002EEBBC  4E 80 04 21 */	bctrl 
/* 802F1C60 002EEBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1C64 002EEBC4  7C 08 03 A6 */	mtlr r0
/* 802F1C68 002EEBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1C6C 002EEBCC  4E 80 00 20 */	blr 

.global VGetSoundPOIList__28CAnimTreeAnimReaderContainerCFRC13CCharAnimTimeP13CSoundPOINodeUiUii
VGetSoundPOIList__28CAnimTreeAnimReaderContainerCFRC13CCharAnimTimeP13CSoundPOINodeUiUii:
/* 802F1C70 002EEBD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1C74 002EEBD4  7C 08 02 A6 */	mflr r0
/* 802F1C78 002EEBD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1C7C 002EEBDC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F1C80 002EEBE0  48 00 C0 05 */	bl GetSoundPOIList__11IAnimReaderCFRC13CCharAnimTimeP13CSoundPOINodeUiUii
/* 802F1C84 002EEBE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1C88 002EEBE8  7C 08 03 A6 */	mtlr r0
/* 802F1C8C 002EEBEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1C90 002EEBF0  4E 80 00 20 */	blr 

.global VGetParticlePOIList__28CAnimTreeAnimReaderContainerCFRC13CCharAnimTimeP16CParticlePOINodeUiUii
VGetParticlePOIList__28CAnimTreeAnimReaderContainerCFRC13CCharAnimTimeP16CParticlePOINodeUiUii:
/* 802F1C94 002EEBF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1C98 002EEBF8  7C 08 02 A6 */	mflr r0
/* 802F1C9C 002EEBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1CA0 002EEC00  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F1CA4 002EEC04  48 00 C0 5D */	bl GetParticlePOIList__11IAnimReaderCFRC13CCharAnimTimeP16CParticlePOINodeUiUii
/* 802F1CA8 002EEC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1CAC 002EEC0C  7C 08 03 A6 */	mtlr r0
/* 802F1CB0 002EEC10  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1CB4 002EEC14  4E 80 00 20 */	blr 

.global VGetInt32POIList__28CAnimTreeAnimReaderContainerCFRC13CCharAnimTimeP13CInt32POINodeUiUii
VGetInt32POIList__28CAnimTreeAnimReaderContainerCFRC13CCharAnimTimeP13CInt32POINodeUiUii:
/* 802F1CB8 002EEC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1CBC 002EEC1C  7C 08 02 A6 */	mflr r0
/* 802F1CC0 002EEC20  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1CC4 002EEC24  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F1CC8 002EEC28  48 00 C0 B5 */	bl GetInt32POIList__11IAnimReaderCFRC13CCharAnimTimeP13CInt32POINodeUiUii
/* 802F1CCC 002EEC2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1CD0 002EEC30  7C 08 03 A6 */	mtlr r0
/* 802F1CD4 002EEC34  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1CD8 002EEC38  4E 80 00 20 */	blr 

.global VGetBoolPOIList__28CAnimTreeAnimReaderContainerCFRC13CCharAnimTimeP12CBoolPOINodeUiUii
VGetBoolPOIList__28CAnimTreeAnimReaderContainerCFRC13CCharAnimTimeP12CBoolPOINodeUiUii:
/* 802F1CDC 002EEC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1CE0 002EEC40  7C 08 02 A6 */	mflr r0
/* 802F1CE4 002EEC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1CE8 002EEC48  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F1CEC 002EEC4C  48 00 C1 0D */	bl GetBoolPOIList__11IAnimReaderCFRC13CCharAnimTimeP12CBoolPOINodeUiUii
/* 802F1CF0 002EEC50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1CF4 002EEC54  7C 08 03 A6 */	mtlr r0
/* 802F1CF8 002EEC58  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1CFC 002EEC5C  4E 80 00 20 */	blr 

.global VGetRotation__28CAnimTreeAnimReaderContainerCFRC6CSegId
VGetRotation__28CAnimTreeAnimReaderContainerCFRC6CSegId:
/* 802F1D00 002EEC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1D04 002EEC64  7C 08 02 A6 */	mflr r0
/* 802F1D08 002EEC68  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1D0C 002EEC6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F1D10 002EEC70  7C 7F 1B 78 */	mr r31, r3
/* 802F1D14 002EEC74  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802F1D18 002EEC78  81 84 00 00 */	lwz r12, 0(r4)
/* 802F1D1C 002EEC7C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802F1D20 002EEC80  7D 89 03 A6 */	mtctr r12
/* 802F1D24 002EEC84  4E 80 04 21 */	bctrl 
/* 802F1D28 002EEC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1D2C 002EEC8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F1D30 002EEC90  7C 08 03 A6 */	mtlr r0
/* 802F1D34 002EEC94  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1D38 002EEC98  4E 80 00 20 */	blr 

.global VGetOffset__28CAnimTreeAnimReaderContainerCFRC6CSegId
VGetOffset__28CAnimTreeAnimReaderContainerCFRC6CSegId:
/* 802F1D3C 002EEC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1D40 002EECA0  7C 08 02 A6 */	mflr r0
/* 802F1D44 002EECA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1D48 002EECA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F1D4C 002EECAC  7C 7F 1B 78 */	mr r31, r3
/* 802F1D50 002EECB0  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802F1D54 002EECB4  81 84 00 00 */	lwz r12, 0(r4)
/* 802F1D58 002EECB8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802F1D5C 002EECBC  7D 89 03 A6 */	mtctr r12
/* 802F1D60 002EECC0  4E 80 04 21 */	bctrl 
/* 802F1D64 002EECC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1D68 002EECC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F1D6C 002EECCC  7C 08 03 A6 */	mtlr r0
/* 802F1D70 002EECD0  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1D74 002EECD4  4E 80 00 20 */	blr 

.global VHasOffset__28CAnimTreeAnimReaderContainerCFRC6CSegId
VHasOffset__28CAnimTreeAnimReaderContainerCFRC6CSegId:
/* 802F1D78 002EECD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1D7C 002EECDC  7C 08 02 A6 */	mflr r0
/* 802F1D80 002EECE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1D84 002EECE4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F1D88 002EECE8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F1D8C 002EECEC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F1D90 002EECF0  7D 89 03 A6 */	mtctr r12
/* 802F1D94 002EECF4  4E 80 04 21 */	bctrl 
/* 802F1D98 002EECF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1D9C 002EECFC  7C 08 03 A6 */	mtlr r0
/* 802F1DA0 002EED00  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1DA4 002EED04  4E 80 00 20 */	blr 

.global VGetSteadyStateAnimInfo__28CAnimTreeAnimReaderContainerCFv
VGetSteadyStateAnimInfo__28CAnimTreeAnimReaderContainerCFv:
/* 802F1DA8 002EED08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1DAC 002EED0C  7C 08 02 A6 */	mflr r0
/* 802F1DB0 002EED10  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1DB4 002EED14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F1DB8 002EED18  7C 7F 1B 78 */	mr r31, r3
/* 802F1DBC 002EED1C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802F1DC0 002EED20  81 84 00 00 */	lwz r12, 0(r4)
/* 802F1DC4 002EED24  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802F1DC8 002EED28  7D 89 03 A6 */	mtctr r12
/* 802F1DCC 002EED2C  4E 80 04 21 */	bctrl 
/* 802F1DD0 002EED30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1DD4 002EED34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F1DD8 002EED38  7C 08 03 A6 */	mtlr r0
/* 802F1DDC 002EED3C  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1DE0 002EED40  4E 80 00 20 */	blr 

.global VGetTimeRemaining__28CAnimTreeAnimReaderContainerCFv
VGetTimeRemaining__28CAnimTreeAnimReaderContainerCFv:
/* 802F1DE4 002EED44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1DE8 002EED48  7C 08 02 A6 */	mflr r0
/* 802F1DEC 002EED4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1DF0 002EED50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F1DF4 002EED54  7C 7F 1B 78 */	mr r31, r3
/* 802F1DF8 002EED58  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802F1DFC 002EED5C  81 84 00 00 */	lwz r12, 0(r4)
/* 802F1E00 002EED60  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802F1E04 002EED64  7D 89 03 A6 */	mtctr r12
/* 802F1E08 002EED68  4E 80 04 21 */	bctrl 
/* 802F1E0C 002EED6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1E10 002EED70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F1E14 002EED74  7C 08 03 A6 */	mtlr r0
/* 802F1E18 002EED78  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1E1C 002EED7C  4E 80 00 20 */	blr 

.global VAdvanceView__28CAnimTreeAnimReaderContainerFRC13CCharAnimTime
VAdvanceView__28CAnimTreeAnimReaderContainerFRC13CCharAnimTime:
/* 802F1E20 002EED80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1E24 002EED84  7C 08 02 A6 */	mflr r0
/* 802F1E28 002EED88  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1E2C 002EED8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F1E30 002EED90  7C 7F 1B 78 */	mr r31, r3
/* 802F1E34 002EED94  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802F1E38 002EED98  81 84 00 00 */	lwz r12, 0(r4)
/* 802F1E3C 002EED9C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802F1E40 002EEDA0  7D 89 03 A6 */	mtctr r12
/* 802F1E44 002EEDA4  4E 80 04 21 */	bctrl 
/* 802F1E48 002EEDA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1E4C 002EEDAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F1E50 002EEDB0  7C 08 03 A6 */	mtlr r0
/* 802F1E54 002EEDB4  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1E58 002EEDB8  4E 80 00 20 */	blr
