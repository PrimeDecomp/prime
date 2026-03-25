#ifndef _CHUDHELMETINTERFACE
#define _CHUDHELMETINTERFACE

#include "types.h"

#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CGuiFrame;

class CHudHelmetInterface {
public:
  explicit CHudHelmetInterface(CGuiFrame& helmetFrame);

  void Update(float dt);
  void SetHudLagOffset(const CVector3f& off);
  void SetHudLagRotation(const CMatrix3f& rot);
  void AddHelmetLightValue(float val);
  void UpdateCameraDebugSettings(float fov, float y, float z);
  void UpdateHelmetAlpha();
  void SetIsVisibleDebug(bool helmet, bool glow);

private:
  uchar x0_data[0x54];
};

#endif // _CHUDHELMETINTERFACE
