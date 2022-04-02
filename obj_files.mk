INIT_O_FILES :=\
	$(BUILD_DIR)/src/os/__start.o\
	$(BUILD_DIR)/asm/os/__ppc_eabi_init.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/__mem.o

KYOTO_CWD :=\
	$(BUILD_DIR)/asm/Kyoto_CWD/main.o
	
MSL_PPCEABI_BARE_H :=\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/mem.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/mem_funcs.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/misc_io.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/printf.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/qsort.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/rand.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/sscanf.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/string.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/strtold.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/uart_console_io.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/widechar_io.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/e_acos.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/e_asin.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/e_atan2.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/e_exp.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/e_fmod.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/e_log.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/e_pow.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/e_rem_pio2.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/k_cos.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/k_rem_pio2.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/k_sin.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/k_tan.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_atan.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_copysign.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_cos.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_floor.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_frexp.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_ldexp.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_modf.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_nextafter.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_sin.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_tan.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_acos.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_asin.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_atan2.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_exp.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_fmod.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_log.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_pow.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/s_cosf.o\
	
MUSYX_FILES :=\
	$(BUILD_DIR)/asm/musyx/seq.o\
	$(BUILD_DIR)/asm/musyx/synth.o\
	$(BUILD_DIR)/asm/musyx/seq_api.o\
	$(BUILD_DIR)/asm/musyx/snd_synthapi.o\
	$(BUILD_DIR)/asm/musyx/stream.o\
	$(BUILD_DIR)/asm/musyx/synthdata.o\
	$(BUILD_DIR)/asm/musyx/synthmacros.o\
	$(BUILD_DIR)/asm/musyx/synthvoice.o\
	$(BUILD_DIR)/asm/musyx/synth_ac.o\
	$(BUILD_DIR)/asm/musyx/synth_adsr.o\
	$(BUILD_DIR)/asm/musyx/synth_vsamples.o\
	$(BUILD_DIR)/asm/musyx/s_data.o\
	$(BUILD_DIR)/asm/musyx/hw_dspctrl.o\
	$(BUILD_DIR)/asm/musyx/hw_volconv.o\
	$(BUILD_DIR)/asm/musyx/snd3d.o\
	$(BUILD_DIR)/asm/musyx/snd_init.o\
	$(BUILD_DIR)/asm/musyx/snd_math.o\
	$(BUILD_DIR)/asm/musyx/snd_midictrl.o\
	$(BUILD_DIR)/asm/musyx/snd_service.o\
	$(BUILD_DIR)/asm/musyx/hardware.o\
	$(BUILD_DIR)/asm/musyx/hw_aramdma.o\
	$(BUILD_DIR)/asm/musyx/hw_dolphin.o\
	$(BUILD_DIR)/asm/musyx/hw_memory.o\
	$(BUILD_DIR)/asm/musyx/creverb_fx.o\
	$(BUILD_DIR)/asm/musyx/creverb.o\
	$(BUILD_DIR)/asm/musyx/reverb_fx.o\
	$(BUILD_DIR)/asm/musyx/reverb.o\
	$(BUILD_DIR)/asm/musyx/delay_fx.o\
	$(BUILD_DIR)/asm/musyx/chorus_fx.o
	
DTK_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/dtk.o
	
CARD_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDBios.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDUnlock.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDRdwr.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDBlock.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDDir.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDCheck.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDMount.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDFormat.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDOpen.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDCreate.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDRead.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDWrite.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDDelete.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDStat.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDRename.o\
	$(BUILD_DIR)/asm/Dolphin/CARD/CARDNet.o
	
SI_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/SIBios.o\
	$(BUILD_DIR)/asm/Dolphin/SISamplingRate.o
	
EXI_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/EXIBios.o\
	$(BUILD_DIR)/asm/Dolphin/EXIUart.o

THP_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/THPDec.o\
	$(BUILD_DIR)/asm/Dolphin/THPAudio.o
	
GBA_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/GBA.o\
	$(BUILD_DIR)/asm/Dolphin/GBARead.o\
	$(BUILD_DIR)/asm/Dolphin/GBAWrite.o\
	$(BUILD_DIR)/asm/Dolphin/GBAXfer.o
	
TEXT_O_FILES :=\
	$(BUILD_DIR)/asm/text.o

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
