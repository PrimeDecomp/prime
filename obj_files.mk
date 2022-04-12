INIT_O_FILES :=\
	$(BUILD_DIR)/src/os/__start.o\
	$(BUILD_DIR)/src/os/__ppc_eabi_init.o\
	$(BUILD_DIR)/asm/Runtime/__mem.o

METROTRK_FILES :=\
	$(BUILD_DIR)/src/MetroTRK/mslsupp.o
	
KYOTO_CWD :=\
	$(BUILD_DIR)/asm/Kyoto_CWD/main.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/text_80008894_80009144.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CCameraManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CControlMapper.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CFirstPersonCamera.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CObjectList.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CPlayer.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CAxisAngle.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CEulerAngles.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CFrontEndUI.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CInputGenerator.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMainFlow.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMFGameLoader.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMFGame.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CAutoSave.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CCredits.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CPlayMovie.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CSplashScreen.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CInstruction.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CAnimData.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CCharacterFactory.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CAssetFactory.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CTweakPlayer.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CTweaks.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CTweakGame.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CGameProjectile.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CPlayerGun.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CStateManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CWeaponMgr.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CScriptPickup.o\
	
AI_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/ai.o
	
AR_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/ar/ar.o\
	$(BUILD_DIR)/asm/Dolphin/ar/arq.o
	
BASE_FILES :=\
	$(BUILD_DIR)/src/Dolphin/PPCArch.o
	
DB_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/db.o
	
DSP_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/dsp/dsp.o\
	$(BUILD_DIR)/asm/Dolphin/dsp/dsp_debug.o\
	$(BUILD_DIR)/asm/Dolphin/dsp/dsp_task.o
	
DVD_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdlow.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdfs.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvd.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdqueue.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvderror.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdidutils.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdfatal.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/fstload.o
	
GX_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/gx/GXInit.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXFifo.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXAttr.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXMisc.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXGeometry.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXFrameBuf.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXLight.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXTexture.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXBump.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXTev.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXPixel.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXStubs.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXDisplayList.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXTransform.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXPerf.o
	
MTX_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/mtx/mtx.o\
	$(BUILD_DIR)/asm/Dolphin/mtx/mtx44vec.o\
	$(BUILD_DIR)/asm/Dolphin/mtx/mtx44.o\
	$(BUILD_DIR)/asm/Dolphin/mtx/vec.o\
	$(BUILD_DIR)/asm/Dolphin/mtx/psmtx.o
	
# TODO: Move __ppc_eabi_init_text into the same source files as __ppc_eabi_init
OS_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/os/OS.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSAlarm.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSArena.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSAudioSystem.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSCache.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSContext.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSError.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSFatal.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSFont.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSInterrupt.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSLink.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSMemory.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSMutex.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSReboot.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSReset.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSResetSW.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSRtc.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSSync.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSThread.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSTime.o\
	$(BUILD_DIR)/asm/os/__ppc_eabi_init_text.o
	
	
PAD_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/pad/PadClamp.o\
	$(BUILD_DIR)/asm/Dolphin/pad/pad.o
	
VI_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/vi.o
	
MSL_PPCEABI_BARE_H :=\
	$(BUILD_DIR)/asm/Runtime/sdata.o\
	$(BUILD_DIR)/asm/Runtime/sdata2.o\
	$(BUILD_DIR)/asm/Runtime/__va_arg.o\
	$(BUILD_DIR)/asm/Runtime/global_destructor_chain.o\
	$(BUILD_DIR)/asm/Runtime/CPlusLibPPC.o\
	$(BUILD_DIR)/asm/Runtime/NMWException.o\
	$(BUILD_DIR)/asm/Runtime/ptmf.o\
	$(BUILD_DIR)/asm/Runtime/runtime.o\
	$(BUILD_DIR)/asm/Runtime/__init_cpp_exceptions.o\
	$(BUILD_DIR)/asm/Runtime/Gecko_ExceptionPPC.o\
	$(BUILD_DIR)/asm/Runtime/abort_exit.o\
	$(BUILD_DIR)/asm/Runtime/alloc.o\
	$(BUILD_DIR)/asm/Runtime/ansi_files.o\
	$(BUILD_DIR)/asm/Runtime/ansi_fp.o\
	$(BUILD_DIR)/asm/Runtime/arith.o\
	$(BUILD_DIR)/asm/Runtime/buffer_io.o\
	$(BUILD_DIR)/asm/Runtime/ctype.o\
	$(BUILD_DIR)/asm/Runtime/direct_io.o\
	$(BUILD_DIR)/asm/Runtime/file_io.o\
	$(BUILD_DIR)/asm/Runtime/FILE_POS.o\
	$(BUILD_DIR)/asm/Runtime/mbstring.o\
	$(BUILD_DIR)/asm/Runtime/mem.o\
	$(BUILD_DIR)/asm/Runtime/mem_funcs.o\
	$(BUILD_DIR)/asm/Runtime/misc_io.o\
	$(BUILD_DIR)/asm/Runtime/printf.o\
	$(BUILD_DIR)/asm/Runtime/qsort.o\
	$(BUILD_DIR)/asm/Runtime/rand.o\
	$(BUILD_DIR)/asm/Runtime/sscanf.o\
	$(BUILD_DIR)/asm/Runtime/string.o\
	$(BUILD_DIR)/asm/Runtime/strtold.o\
	$(BUILD_DIR)/asm/Runtime/uart_console_io.o\
	$(BUILD_DIR)/asm/Runtime/widechar_io.o\
	$(BUILD_DIR)/asm/Runtime/e_acos.o\
	$(BUILD_DIR)/asm/Runtime/e_asin.o\
	$(BUILD_DIR)/asm/Runtime/e_atan2.o\
	$(BUILD_DIR)/asm/Runtime/e_exp.o\
	$(BUILD_DIR)/asm/Runtime/e_fmod.o\
	$(BUILD_DIR)/asm/Runtime/e_log.o\
	$(BUILD_DIR)/asm/Runtime/e_pow.o\
	$(BUILD_DIR)/asm/Runtime/e_rem_pio2.o\
	$(BUILD_DIR)/asm/Runtime/k_cos.o\
	$(BUILD_DIR)/asm/Runtime/k_rem_pio2.o\
	$(BUILD_DIR)/asm/Runtime/k_sin.o\
	$(BUILD_DIR)/asm/Runtime/k_tan.o\
	$(BUILD_DIR)/asm/Runtime/s_atan.o\
	$(BUILD_DIR)/asm/Runtime/s_copysign.o\
	$(BUILD_DIR)/asm/Runtime/s_cos.o\
	$(BUILD_DIR)/asm/Runtime/s_floor.o\
	$(BUILD_DIR)/asm/Runtime/s_frexp.o\
	$(BUILD_DIR)/asm/Runtime/s_ldexp.o\
	$(BUILD_DIR)/asm/Runtime/s_modf.o\
	$(BUILD_DIR)/asm/Runtime/s_nextafter.o\
	$(BUILD_DIR)/asm/Runtime/s_sin.o\
	$(BUILD_DIR)/asm/Runtime/s_tan.o\
	$(BUILD_DIR)/asm/Runtime/s_acos.o\
	$(BUILD_DIR)/asm/Runtime/s_asin.o\
	$(BUILD_DIR)/asm/Runtime/s_atan2.o\
	$(BUILD_DIR)/asm/Runtime/s_exp.o\
	$(BUILD_DIR)/asm/Runtime/s_fmod.o\
	$(BUILD_DIR)/asm/Runtime/s_log.o\
	$(BUILD_DIR)/asm/Runtime/s_pow.o\
	$(BUILD_DIR)/asm/Runtime/s_cosf.o\
	
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
	$(BUILD_DIR)/src/musyx/synth_dbtab.o\
	$(BUILD_DIR)/asm/musyx/s_data.o\
	$(BUILD_DIR)/asm/musyx/hw_dspctrl.o\
	$(BUILD_DIR)/asm/musyx/hw_volconv.o\
	$(BUILD_DIR)/asm/musyx/snd3d.o\
	$(BUILD_DIR)/src/musyx/snd_init.o\
	$(BUILD_DIR)/asm/musyx/snd_math.o\
	$(BUILD_DIR)/asm/musyx/snd_midictrl.o\
	$(BUILD_DIR)/asm/musyx/snd_service.o\
	$(BUILD_DIR)/asm/musyx/hardware.o\
	$(BUILD_DIR)/asm/musyx/hw_aramdma.o\
	$(BUILD_DIR)/src/musyx/dsp_import.o\
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
	$(BUILD_DIR)/asm/Dolphin/card/CARDBios.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDUnlock.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDRdwr.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDBlock.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDDir.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDCheck.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDMount.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDFormat.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDOpen.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDCreate.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDRead.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDWrite.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDDelete.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDStat.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDRename.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDNet.o
	
SI_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/si/SIBios.o\
	$(BUILD_DIR)/asm/Dolphin/si/SISamplingRate.o
	
EXI_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/exi/EXIBios.o\
	$(BUILD_DIR)/asm/Dolphin/exi/EXIUart.o

THP_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/thp/THPDec.o\
	$(BUILD_DIR)/asm/Dolphin/thp/THPAudio.o
	
GBA_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBA.o\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBARead.o\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBAWrite.o\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBAXfer.o\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBAKey.o
	
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
