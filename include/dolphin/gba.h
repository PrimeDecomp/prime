#ifndef _DOLPHIN_GBA
#define _DOLPHIN_GBA

#ifdef __cplusplus
extern "C" {
#endif
enum EGBABootMode {
  kBM_unk2 = 2
};

enum EJoyReturn {
  kJR_ready = 0,
  kJR_not_ready = 1,
  kJR_busy = 2,
  kJR_unknown = 3,
};

void GBAInit();
void GBAJoyBootAsync(uint channel, int channel2, EGBABootMode enumValue, void* data, uint size,
                    uchar* statusOut, void* callbackPtr);
EJoyReturn GBAGetProcessStatus(uint channel, uchar* statusOut);
EJoyReturn GBAGetStatus(uint channel, uchar* statusOut);
EJoyReturn GBAReset(uint channel, uchar* statusOut);
EJoyReturn GBARead(uint channel, void* out, uchar* statusOut);
EJoyReturn GBAWrite(uint channel, const void* in, uchar* statusOut);
#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_GBA
