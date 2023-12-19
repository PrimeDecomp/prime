#ifndef SAL_H
#define SAL_H

#include "musyx/dspvoice.h"
#include "musyx/musyx.h"
typedef void (*SND_SOME_CALLBACK)();

#define CLAMP(value, min, max) ((value) > (max) ? (max) : (value) < (min) ? (min) : (value))
// TODO matching hack
#define CLAMP_INV(value, min, max) ((value) < (min) ? (min) : (value) > (max) ? (max) : (value))

#ifdef __cplusplus
extern "C" {
#endif
typedef struct SAL_VOLINFO {
  // total size: 0x24
  f32 volL;     // offset 0x0, size 0x4
  f32 volR;     // offset 0x4, size 0x4
  f32 volS;     // offset 0x8, size 0x4
  f32 volAuxAL; // offset 0xC, size 0x4
  f32 volAuxAR; // offset 0x10, size 0x4
  f32 volAuxAS; // offset 0x14, size 0x4
  f32 volAuxBL; // offset 0x18, size 0x4
  f32 volAuxBR; // offset 0x1C, size 0x4
  f32 volAuxBS; // offset 0x20, size 0x4
} SAL_VOLINFO;

typedef struct SAL_PANINFO {
  // total size: 0x30
  u32 pan_i;   // offset 0x0, size 0x4
  u32 pan_im;  // offset 0x4, size 0x4
  u32 span_i;  // offset 0x8, size 0x4
  u32 span_im; // offset 0xC, size 0x4
  u32 rpan_i;  // offset 0x10, size 0x4
  u32 rpan_im; // offset 0x14, size 0x4
  f32 pan_f;   // offset 0x18, size 0x4
  f32 pan_fm;  // offset 0x1C, size 0x4
  f32 span_f;  // offset 0x20, size 0x4
  f32 span_fm; // offset 0x24, size 0x4
  f32 rpan_f;  // offset 0x28, size 0x4
  f32 rpan_fm; // offset 0x2C, size 0x4
} SAL_PANINFO;

bool salInitAi(SND_SOME_CALLBACK, u32, u32*);
bool salInitDsp(u32);
bool salInitDspCtrl(u8 numVoices, u8 numStudios, u32 defaultStudioDPL2);
bool salExitDsp();
bool salExitDspCtrl();
bool salExitAi();
bool salStartAi();
void* salAiGetDest();

void salInitHRTFBuffer();
void salActivateVoice(DSPvoice* dsp_vptr, u8 studio);
void salDeactivateVoice(DSPvoice* dsp_vptr);
void salActivateStudio(u8 studio, u32 isMaster, SND_STUDIO_TYPE type);
void salDeactivateStudio(u8 studio);
bool salAddStudioInput(DSPstudioinfo* stp, SND_STUDIO_INPUT* desc);
bool salRemoveStudioInput(DSPstudioinfo* stp, SND_STUDIO_INPUT* desc);
void salActivateVoice(DSPvoice* dsp_vptr, u8 studio);
void salCalcVolume(u8 voltab_index, SAL_VOLINFO* vi, f32 vol, u32 pan, u32 span, f32 auxa, f32 auxb,
                   u32 itd, u32 dpl2);
void salReconnectVoice(DSPvoice* dsp_vptr, u8 studio);
void* salMalloc(u32 len);
void salFree(void* addr);
void salBuildCommandList(signed short* dest, unsigned long nsDelay);
void salStartDsp(s16* cmdList);
void salCtrlDsp(s16* dest);
void salHandleAuxProcessing();

#define SAL_MAX_STUDIONUM 8
extern u8 salMaxStudioNum;
extern u8 salNumVoices;

void salApplyMatrix(const SND_FMATRIX* a, const SND_FVECTOR* b, SND_FVECTOR* out);
f32 salNormalizeVector(SND_FVECTOR* vec);
void salCrossProduct(SND_FVECTOR* out, const SND_FVECTOR* a, const SND_FVECTOR* b);

#define SAL_CROSS_PRODUCT(out, a, b)                                                               \
  do {                                                                                             \
    out.x = (a.y * b.z) - (a.z * b.y);                                                             \
    out.y = (a.z * b.x) - (a.x * b.z);                                                             \
    out.z = (a.x * b.y) - (a.y * b.x);                                                             \
  } while (0)

void salInvertMatrix(SND_FMATRIX* out, const SND_FMATRIX* in);

#ifdef __cplusplus
}
#endif

#endif
