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

enum EGBASuccessFailure {
  kGSF_success = 0,
  kGSF_failure = 1,
};

void GBAInit();
int GBAJoyBootAsync(uint channel, int channel2, EGBABootMode enumValue, void* data, uint size,
                    uchar* statusOut, void* callbackPtr);
EGBAProcessStatus GBAGetProcessStatus(uint channel, uchar* statusOut);
EGBASuccessFailure GBAGetStatus(uint channel, uchar* statusOut);
EGBASuccessFailure GBAReset(uint channel, uchar* statusOut);
EGBASuccessFailure GBARead(uint channel, void* out, uchar* statusOut);
EGBASuccessFailure GBAWrite(uint channel, const void* in, uchar* statusOut);
#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_GBA
