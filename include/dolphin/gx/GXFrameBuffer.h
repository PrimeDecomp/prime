#ifndef _DOLPHIN_GXFRAMEBUFFER
#define _DOLPHIN_GXFRAMEBUFFER

#include <dolphin/gx/GXEnum.h>
#include <dolphin/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

// extern GXRenderModeObj GXNtsc240Ds;
// extern GXRenderModeObj GXNtsc240DsAa;
// extern GXRenderModeObj GXNtsc240Int;
// extern GXRenderModeObj GXNtsc240IntAa;
extern GXRenderModeObj GXNtsc480IntDf;
// extern GXRenderModeObj GXNtsc480Int;
// extern GXRenderModeObj GXNtsc480IntAa;
// extern GXRenderModeObj GXNtsc480Prog;
// extern GXRenderModeObj GXNtsc480ProgSoft;
// extern GXRenderModeObj GXNtsc480ProgAa;
// extern GXRenderModeObj GXMpal240Ds;
// extern GXRenderModeObj GXMpal240DsAa;
// extern GXRenderModeObj GXMpal240Int;
// extern GXRenderModeObj GXMpal240IntAa;
extern GXRenderModeObj GXMpal480IntDf;
// extern GXRenderModeObj GXMpal480Int;
// extern GXRenderModeObj GXMpal480IntAa;
// extern GXRenderModeObj GXPal264Ds;
// extern GXRenderModeObj GXPal264DsAa;
// extern GXRenderModeObj GXPal264Int;
// extern GXRenderModeObj GXPal264IntAa;
extern GXRenderModeObj GXPal528IntDf;
// extern GXRenderModeObj GXPal528Int;
// extern GXRenderModeObj GXPal524IntAa;
// extern GXRenderModeObj GXEurgb60Hz240Ds;
// extern GXRenderModeObj GXEurgb60Hz240DsAa;
// extern GXRenderModeObj GXEurgb60Hz240Int;
// extern GXRenderModeObj GXEurgb60Hz240IntAa;
extern GXRenderModeObj GXEurgb60Hz480IntDf;
// extern GXRenderModeObj GXEurgb60Hz480Int;
// extern GXRenderModeObj GXEurgb60Hz480IntAa;

#define GX_MAX_Z24 0x00FFFFFF

void GXSetCopyClear(GXColor clear_clr, u32 clear_z);
void GXAdjustForOverscan(GXRenderModeObj* rmin, GXRenderModeObj* rmout, u16 hor, u16 ver);
void GXCopyDisp(void* dest, GXBool clear);
void GXSetDispCopyGamma(GXGamma gamma);
void GXSetDispCopySrc(u16 left, u16 top, u16 wd, u16 ht);
void GXSetDispCopyDst(u16 wd, u16 ht);
u32 GXSetDispCopyYScale(f32 vscale);
void GXSetCopyFilter(GXBool aa, u8 sample_pattern[12][2], GXBool vf, u8 vfilter[7]);
void GXSetPixelFmt(GXPixelFmt pix_fmt, GXZFmt16 z_fmt);
void GXSetTexCopySrc(u16 left, u16 top, u16 wd, u16 ht);
void GXSetTexCopyDst(u16 wd, u16 ht, GXTexFmt fmt, GXBool mipmap);
void GXCopyTex(void* dest, GXBool clear);

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_GXFRAMEBUFFER
