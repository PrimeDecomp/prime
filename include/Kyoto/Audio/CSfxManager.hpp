#ifndef _CSFXMANAGER
#define _CSFXMANAGER

#include "types.h"

#include "Kyoto/Audio/CSfxHandle.hpp"

class CVector3f;
class CSfxManager {
public:
  static void Update(float dt);
  static void RemoveEmitter(CSfxHandle handle);
  static void UpdateEmitter(CSfxHandle handle, const CVector3f& pos, const CVector3f& dir,
                            uchar maxVol);

  static const short kMaxPriority;           // 0xFF
  static const short kMedPriority;           // 0x7F
  static const ushort kInternalInvalidSfxId; // 0xFFFF
  static const int kAllAreas;                // 0xFFFFFFFF
  static CSfxHandle AddEmitter(ushort id, const CVector3f& pos, const CVector3f& dir,
                               bool useAcoustics, bool looped, short prio = kMedPriority,
                               int areaId = kAllAreas);
  static CSfxHandle AddEmitter(ushort id, const CVector3f& pos, const CVector3f& dir, uchar vol,
                               bool useAcoustics, bool looped, short prio = kMedPriority,
                               int areaId = kAllAreas);
  static void Shutdown();
  static ushort TranslateSFXID(ushort);

  static void PitchBend(CSfxHandle handle, int pitch);

  static CSfxHandle SfxStart(ushort id, uchar vol, uchar pan, bool useAcoustics, short prio,
                             bool looped, int areaId);
  static bool IsPlaying(const CSfxHandle& handle);
};

#endif // _CSFXMANAGER
