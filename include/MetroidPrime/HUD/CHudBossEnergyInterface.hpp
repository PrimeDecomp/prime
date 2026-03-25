#ifndef _CHUDBOSSENERGYINTERFACE
#define _CHUDBOSSENERGYINTERFACE

#include "types.h"

#include "rstl/string.hpp"

class CGuiFrame;

class CHudBossEnergyInterface {
public:
  explicit CHudBossEnergyInterface(CGuiFrame& selHud);

  void Update(float dt);
  void SetAlpha(float a);
  void SetBossParams(bool visible, const rstl::wstring& name, float curEnergy, float maxEnergy);
};

#endif // _CHUDBOSSENERGYINTERFACE
