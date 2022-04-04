INIT_O_FILES :=\
	$(BUILD_DIR)/src/os/__start.o\
	$(BUILD_DIR)/src/os/__ppc_eabi_init.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/__mem.o

KYOTO_CWD :=\
	$(BUILD_DIR)/asm/Kyoto_CWD/main.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/text_80008894_80009144.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CCameraManager.o

AI_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/ai.o
	
AR_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/AR/ar.o\
	$(BUILD_DIR)/asm/Dolphin/AR/arq.o
	
BASE_FILES :=\
	$(BUILD_DIR)/src/Dolphin/PPCArch.o
	
DB_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/db.o
	
DSP_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/DSP/dsp.o\
	$(BUILD_DIR)/asm/Dolphin/DSP/dsp_debug.o\
	$(BUILD_DIR)/asm/Dolphin/DSP/dsp_task.o
	
DVD_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/DVD/dvdlow.o\
	$(BUILD_DIR)/asm/Dolphin/DVD/dvdfs.o\
	$(BUILD_DIR)/asm/Dolphin/DVD/dvd.o\
	$(BUILD_DIR)/asm/Dolphin/DVD/dvdqueue.o\
	$(BUILD_DIR)/asm/Dolphin/DVD/dvderror.o\
	$(BUILD_DIR)/asm/Dolphin/DVD/dvdidutils.o\
	$(BUILD_DIR)/asm/Dolphin/DVD/dvdfatal.o\
	$(BUILD_DIR)/asm/Dolphin/DVD/fstload.o
	
GX_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/GX/GXInit.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXFifo.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXAttr.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXMisc.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXGeometry.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXFrameBuf.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXLight.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXTexture.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXBump.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXTev.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXPixel.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXStubs.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXDisplayList.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXTransform.o\
	$(BUILD_DIR)/asm/Dolphin/GX/GXPerf.o
	
MTX_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/mtx/mtx.o\
	$(BUILD_DIR)/asm/Dolphin/mtx/mtx44vec.o\
	$(BUILD_DIR)/asm/Dolphin/mtx/mtx44.o\
	$(BUILD_DIR)/asm/Dolphin/mtx/vec.o\
	$(BUILD_DIR)/asm/Dolphin/mtx/psmtx.o
	
# TODO: Move __ppc_eabi_init_text into the same source files as __ppc_eabi_init
OS_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/OS/OS.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSAlarm.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSArena.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSAudioSystem.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSCache.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSContext.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSError.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSFatal.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSFont.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSInterrupt.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSLink.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSMemory.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSMutex.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSReboot.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSReset.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSResetSW.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSRtc.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSSync.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSThread.o\
	$(BUILD_DIR)/asm/Dolphin/OS/OSTime.o\
	$(BUILD_DIR)/asm/os/__ppc_eabi_init_text.o
	
	
PAD_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/PAD/PadClamp.o\
	$(BUILD_DIR)/asm/Dolphin/PAD/pad.o
	
VI_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/vi.o
	
MSL_PPCEABI_BARE_H :=\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/sbss.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/__va_arg.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/global_destructor_chain.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/CPlusLibPPC.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/NMWException.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/ptmf.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/runtime.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/__init_cpp_exceptions.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/Gecko_ExceptionPPC.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/abort_exit.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/alloc.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/ansi_files.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/ansi_fp.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/arith.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/buffer_io.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/ctype.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/direct_io.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/file_io.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/FILE_POS.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/mbstring.o\
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
	$(BUILD_DIR)/asm/musyx/sbss.o\
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
	$(BUILD_DIR)/asm/musyx/iram_image.o\
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
	$(BUILD_DIR)/asm/Dolphin/SI/SIBios.o\
	$(BUILD_DIR)/asm/Dolphin/SI/SISamplingRate.o
	
EXI_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/EXI/EXIBios.o\
	$(BUILD_DIR)/asm/Dolphin/EXI/EXIUart.o

THP_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/THP/THPDec.o\
	$(BUILD_DIR)/asm/Dolphin/THP/THPAudio.o
	
GBA_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBA.o\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBARead.o\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBAWrite.o\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBAXfer.o
	
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
