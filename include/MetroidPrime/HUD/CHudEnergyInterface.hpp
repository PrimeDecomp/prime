#ifndef _CHUDENERGYINTERFACE
#define _CHUDENERGYINTERFACE

#include "MetroidPrime/HUD/CHudInterface.hpp"
#include "types.h"

class CGuiFrame;
class CGuiWidget;
class CGuiModel;
class CGuiTextPane;
class CGuiCamera;
class CAuiEnergyBarT01;
class CAuiMeter;
class CStateManager;

class CHudEnergyInterface {
public:
  CHudEnergyInterface(CGuiFrame& hud, float energy, int totalTanks, int filledTanks, bool energyLow,
                      EHudType type);
  void Update(float dt, float energyLowPulse);
  void SetEnergyLow(bool low);
  void SetFlashMagnitude(float mag);
  void SetNumFilledEnergyTanks(int tanks);
  void SetNumTotalEnergyTanks(int tanks);
  void SetCurrEnergy(float energy, bool wrapped);

private:
  EHudType x0_hudType;
  float x4_energyLowFader;
  float x8_flashMag;
  float xc_tankEnergy;
  int x10_totalEnergyTanks;
  int x14_numTanksFilled;
  float x18_cachedBarEnergy;
  bool x1c_24_ : 1;
  bool x1c_25_ : 1;
  bool x1c_26_barDirty : 1;
  bool x1c_27_energyLow : 1;
  CGuiTextPane* x20_textpane_energydigits;
  CAuiMeter* x24_meter_energytanks;
  CGuiTextPane* x28_textpane_energywarning;
  CAuiEnergyBarT01* x2c_energybart01_energybar;
};
CHECK_SIZEOF(CHudEnergyInterface, 0x30)

#endif // _CHUDENERGYINTERFACE
