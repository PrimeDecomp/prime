INIT_O_FILES :=\
	$(BUILD_DIR)/src/os/__start.o\
	$(BUILD_DIR)/asm/os/__ppc_eabi_init.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/__mem.o

KYOTO_CWD :=\
	$(BUILD_DIR)/asm/Kyoto_CWD/main.o

TEXT_O_FILES :=\
	$(BUILD_DIR)/asm/text.o\
	$(BUILD_DIR)/asm/Dolphin/THPDec.o\
	$(BUILD_DIR)/asm/Dolphin/THPAudio.o\
	$(BUILD_DIR)/asm/Dolphin/GBA.o\
	$(BUILD_DIR)/asm/Dolphin/GBARead.o\
	$(BUILD_DIR)/asm/Dolphin/GBAWrite.o\
	$(BUILD_DIR)/asm/Dolphin/GBAXfer.o

EXTAB_O_FILES :=\
	$(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=\
	$(BUILD_DIR)/asm/extabindex.o

CTORS_O_FILES :=\
	$(BUILD_DIR)/asm/ctors.o

DTORS_O_FILES :=\
	$(BUILD_DIR)/asm/dtors.o

RODATA_O_FILES :=\
	$(BUILD_DIR)/asm/rodata.o

DATA_O_FILES :=\
	$(BUILD_DIR)/asm/data.o

BSS_O_FILES :=\
	$(BUILD_DIR)/asm/bss.o

SDATA_O_FILES :=\
	$(BUILD_DIR)/asm/sdata.o

SBSS_O_FILES :=\
	$(BUILD_DIR)/asm/sbss.o

SDATA2_O_FILES :=\
	$(BUILD_DIR)/asm/sdata2.o

SBSS2_O_FILES :=\
	$(BUILD_DIR)/asm/sbss2.o
