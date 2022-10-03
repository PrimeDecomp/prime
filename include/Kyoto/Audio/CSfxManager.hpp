#ifndef _CSFXMANAGER_HPP
#define _CSFXMANAGER_HPP

#include "types.h"

#include "Kyoto/Audio/CSfxHandle.hpp"

class CSfxManager {
public:
  static void Update(f32 dt);
  static void RemoveEmitter(CSfxHandle handle);
  static void UpdateEmitter(CSfxHandle handle, const CVector3f& pos, const CVector3f& dir,
                            uchar maxVol);
  static CSfxHandle AddEmitter(u16 id, const CVector3f& pos, const CVector3f& dir,
                               bool useAcoustics, bool looped, s16 prio, int areaId);
  static CSfxHandle AddEmitter(u16 id, const CVector3f& pos, const CVector3f& dir, uchar vol,
                               bool useAcoustics, bool looped, s16 prio, int areaId);
  static void Shutdown();
  static u16 TranslateSFXID(u16);

  static void PitchBend(CSfxHandle handle, int pitch);

  static s16 kMaxPriority;  // 0xff
  static s16 kMedPriority;  // 0x7f
  static int kAllAreas;
};

#endif
