#ifndef _CHUDENERGYINTERFACE
#define _CHUDENERGYINTERFACE

#include "types.h"

class CGuiFrame;

class CHudEnergyInterface {
public:
  CHudEnergyInterface(CGuiFrame& selHud, float tankEnergy, int totalEnergyTanks,
                      int numTanksFilled, bool energyLow, int hudType);

  void Update(float dt, float energyLowPulse);
  void SetEnergyLow(bool energyLow);
  void SetFlashMagnitude(float mag);
  void SetNumFilledEnergyTanks(int numTanksFilled);
  void SetNumTotalEnergyTanks(int totalEnergyTanks);
  void SetCurrEnergy(float tankEnergy, bool energyDepletion);
};

#endif // _CHUDENERGYINTERFACE
