#ifndef _DOLPHIN_GBA
#define _DOLPHIN_GBA

#ifdef __cplusplus
extern "C" {
#endif
enum EGBABootMode {
  kBM_unk2 = 2
};

enum EGBAProcessStatus {
  kPS_unk1 = 1,
  kPS_unk2 = 2,
};

void GBAInit();
int GBAJoyBootAsync(uint channel, int channel2, EGBABootMode enumValue, void* data, uint size,
                    void* statusOut, void* callbackPtr);
EGBAProcessStatus GBAGetProcessStatus(uint channel, void* statusOut);
int GBAGetStatus(uint channel, void* statusOut);
#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_GBA
