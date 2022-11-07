#ifndef _CTWEAKGUICOLORS
#define _CTWEAKGUICOLORS

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/Graphics/CColor.hpp"

class CTweakGuiColors : public ITweakObject {
public:
  const CColor& GetPauseBlurFilterColor() const override { return x4_pauseBlurFilterColor; }
  const CColor& GetRadarStuffColor() const override { return x8_radarStuffColor; }
  const CColor& GetRadarPlayerPaintColor() const override { return xc_radarPlayerPaintColor; }
  const CColor& GetRadarEnemyPaintColor() const override { return x10_radarEnemyPaintColor; }
  const CColor& GetHudMessageFill() const override { return x14_hudMessageFill; }
  const CColor& GetHudMessageOutline() const override { return x18_hudMessageOutline; }
  const CColor& GetHudFrameColor() const override { return x1c_hudFrameColor; }
  const CColor& GetMissileIconColorActive() const override { return x28_missileIconColorActive; }
  const CColor& GetVisorBeamMenuItemActive() const override { return x2c_visorBeamMenuItemActive; }
  const CColor& GetVisorBeamMenuItemInactive() const override { return x30_visorBeamMenuColorInactive; }
  const CColor& GetEnergyBarFilledLowEnergy() const override { return x34_energyBarFilledLowEnergy; }
  const CColor& GetEnergyBarShadowLowEnergy() const override { return x38_energyBarShadowLowEnergy; }
  const CColor& GetEnergyBarEmptyLowEnergy() const override { return x3c_energyBarEmptyLowEnergy; }
  const CColor& GetHudDamageLightColor() const override { return x40_hudDamageLightColor; }
  const CColor& GetVisorMenuTextFont() const override { return x4c_visorMenuTextFont; }
  const CColor& GetVisorMenuTextOutline() const override { return x50_visorMenuTextOutline; }
  const CColor& GetBeamMenuTextFont() const override { return x54_beamMenuTextFont; }
  const CColor& GetBeamMenuTextOutline() const override { return x58_beamMenuTextOutline; }
  const CColor& GetEnergyWarningFont() const override { return x5c_energyWarningFont; }
  const CColor& GetThreatWarningFont() const override { return x60_threatWarningFont; }
  const CColor& GetMissileWarningFont() const override { return x64_missileWarningFont; }
  const CColor& GetThreatBarFilled() const override { return x68_threatBarFilled; }
  const CColor& GetThreatBarShadow() const override { return x6c_threatBarShadow; }
  const CColor& GetThreatBarEmpty() const override { return x70_threatBarEmpty; }
  const CColor& GetMissileBarFilled() const override { return x74_missileBarFilled; }
  const CColor& GetMissileBarShadow() const override { return x78_missileBarShadow; }
  const CColor& GetMissileBarEmpty() const override { return x7c_missileBarEmpty; }
  const CColor& GetThreatIconColor() const override { return x80_threatIconColor; }
  const CColor& GetTickDecoColor() const override { return x88_tickDecoColor; }
  const CColor& GetHelmetLightColor() const override { return x8c_helmetLightColor; }
  const CColor& GetThreatIconSafeColor() const override { return x90_threatIconSafeColor; }
  const CColor& GetMissileIconColorInactive() const override { return x94_missileIconColorInactive; }
  const CColor& GetMissileIconColorChargedCanAlt() const override { return x98_missileIconColorChargedCanAlt; }
  const CColor& GetMissileIconColorChargedNoAlt() const override { return x9c_missileIconColorChargedNoAlt; }
  const CColor& GetMissileIconColorDepleteAlt() const override { return xa0_missileIconColorDepleteAlt; }
  const CColor& GetVisorBeamMenuLozColor() const override { return xb0_visorBeamMenuLozColor; }
  const CColor& GetEnergyWarningOutline() const override { return xb4_energyWarningOutline; }
  const CColor& GetThreatWarningOutline() const override { return xb8_threatWarningOutline; }
  const CColor& GetMissileWarningOutline() const override { return xbc_missileWarningOutline; }
  const CColor& GetDamageAmbientColor() const override { return xc4_damageAmbientColor; }
  const CColor& GetScanFrameInactiveColor() const override { return xc8_scanFrameInactiveColor; }
  const CColor& GetScanFrameActiveColor() const override { return xcc_scanFrameActiveColor; }
  const CColor& GetScanFrameImpulseColor() const override { return xd0_scanFrameImpulseColor; }
  const CColor& GetScanVisorHudLightMultiply() const override { return xd4_scanVisorHudLightMultiply; }
  const CColor& GetScanVisorScreenDimColor() const override { return xd8_scanVisorScreenDimColor; }
  const CColor& GetThermalVisorHudLightMultiply() const override { return xdc_thermalVisorHudLightMultiply; }
  const CColor& GetEnergyDrainFilterColor() const override { return xe0_energyDrainFilterColor; }
  const CColor& GetDamageAmbientPulseColor() const override { return xe4_damageAmbientPulseColor; }
  const CColor& GetEnergyBarFlashColor() const override { return xe8_energyBarFlashColor; }
  const CColor& GetXRayEnergyDecoColor() const override { return x100_xrayEnergyDecoColor; }
  const CColor& GetScanDataDotColor() const override { return x138_scanDataDotColor; }
  const CColor& GetPowerBombDigitAvailableFont() const override { return x13c_powerBombDigitAvailableFont; }
  const CColor& GetPowerBombDigitAvailableOutline() const override { return x140_powerBombDigitAvailableOutline; }
  const CColor& GetBallBombFilledColor() const override { return x148_ballBombFilled; }
  const CColor& GetBallBombEmptyColor() const override { return x14c_ballBombEmpty; }
  const CColor& GetPowerBombIconAvailableColor() const override { return x150_powerBombIconAvailable; }
  const CColor& GetBallBombEnergyColor() const override { return x158_ballEnergyDeco; }
  const CColor& GetBallBombDecoColor() const override { return x15c_ballBombDeco; }
  const CColor& GetPowerBombDigitDelpetedFont() const override { return x160_powerBombDigitDepletedFont; }
  const CColor& GetPowerBombDigitDelpetedOutline() const override { return x164_powerBombDigitDepletedOutline; }
  const CColor& GetPowerBombIconDepletedColor() const override { return x168_powerBombIconUnavailable; }
  const CColor& GetScanDisplayImagePaneColor() const override { return x174_scanDisplayImagePaneColor; }
  const CColor& GetThreatIconWarningColor() const override { return x17c_threatIconWarningColor; }
  const CColor& GetHudCounterFill() const override { return x180_hudCounterFill; }
  const CColor& GetHudCounterOutline() const override { return x184_hudCounterOutline; }
  const CColor& GetScanIconCriticalColor() const override { return x188_scanIconCriticalColor; }
  const CColor& GetScanIconCriticalDimColor() const override { return x18c_scanIconCriticalDimColor; }
  const CColor& GetScanIconNoncriticalColor() const override { return x190_scanIconNoncriticalColor; }
  const CColor& GetScanIconNoncriticalDimColor() const override { return x194_scanIconNoncriticalDimColor; }
  const CColor& GetScanReticuleColor() const override { return x198_scanReticuleColor; }
  const CColor& GetThreatDigitsFont() const override { return x19c_threatDigitsFont; }
  const CColor& GetThreatDigitsOutline() const override { return x1a0_threatDigitsOutline; }
  const CColor& GetMissileDigitsFont() const override { return x1a4_missileDigitsFont; }
  const CColor& GetMissileDigitsOutline() const override { return x1a8_missileDigitsOutline; }
  const CColor& GetThermalDecoColor() const override { return x1ac_thermalDecoColor; }
  const CColor& GetThermalOutlinesColor() const override { return x1b0_thermalOutlinesColor; }
  const CColor& GetThermalLockColor() const override { return x1b8_thermalLockColor; }
  const CColor& GetPauseItemAmberColor() const override { return x1bc_pauseItemAmber; }
  const CColor& GetPauseItemBlueColor() const override { return x1c0_pauseItemBlue; }

private:
  CColor x4_pauseBlurFilterColor;
  CColor x8_radarStuffColor;
  CColor xc_radarPlayerPaintColor;
  CColor x10_radarEnemyPaintColor;
  CColor x14_hudMessageFill;
  CColor x18_hudMessageOutline;
  CColor x1c_hudFrameColor;
  CColor x20_;
  CColor x24_;
  CColor x28_missileIconColorActive;
  CColor x2c_visorBeamMenuItemActive;
  CColor x30_visorBeamMenuColorInactive;
  CColor x34_energyBarFilledLowEnergy;
  CColor x38_energyBarShadowLowEnergy;
  CColor x3c_energyBarEmptyLowEnergy;
  CColor x40_hudDamageLightColor;
  CColor x44_;
  CColor x48_;
  CColor x4c_visorMenuTextFont;
  CColor x50_visorMenuTextOutline;
  CColor x54_beamMenuTextFont;
  CColor x58_beamMenuTextOutline;
  CColor x5c_energyWarningFont;
  CColor x60_threatWarningFont;
  CColor x64_missileWarningFont;
  CColor x68_threatBarFilled;
  CColor x6c_threatBarShadow;
  CColor x70_threatBarEmpty;
  CColor x74_missileBarFilled;
  CColor x78_missileBarShadow;
  CColor x7c_missileBarEmpty;
  CColor x80_threatIconColor;
  CColor x84_;
  CColor x88_tickDecoColor;
  CColor x8c_helmetLightColor;
  CColor x90_threatIconSafeColor;
  CColor x94_missileIconColorInactive;
  CColor x98_missileIconColorChargedCanAlt;
  CColor x9c_missileIconColorChargedNoAlt;
  CColor xa0_missileIconColorDepleteAlt;
  CColor xa4_;
  CColor xa8_;
  CColor xac_;
  CColor xb0_visorBeamMenuLozColor;
  CColor xb4_energyWarningOutline;
  CColor xb8_threatWarningOutline;
  CColor xbc_missileWarningOutline;
  CColor xc0_;
  CColor xc4_damageAmbientColor;
  CColor xc8_scanFrameInactiveColor;
  CColor xcc_scanFrameActiveColor;
  CColor xd0_scanFrameImpulseColor;
  CColor xd4_scanVisorHudLightMultiply;
  CColor xd8_scanVisorScreenDimColor;
  CColor xdc_thermalVisorHudLightMultiply;
  CColor xe0_energyDrainFilterColor;
  CColor xe4_damageAmbientPulseColor;
  CColor xe8_energyBarFlashColor;
  CColor xec_;
  CColor xf0_;
  CColor xf4_;
  CColor xf8_;
  CColor xfc_;
  CColor x100_xrayEnergyDecoColor;
  CColor x104_;
  CColor x108_;
  CColor x10c_;
  CColor x110_;
  CColor x114_;
  CColor x118_;
  CColor x11c_;
  CColor x120_;
  CColor x124_;
  CColor x128_;
  CColor x12c_;
  CColor x130_;
  CColor x134_;
  CColor x138_scanDataDotColor;
  CColor x13c_powerBombDigitAvailableFont;
  CColor x140_powerBombDigitAvailableOutline;
  CColor x144_;
  CColor x148_ballBombFilled;
  CColor x14c_ballBombEmpty;
  CColor x150_powerBombIconAvailable;
  CColor x154_;
  CColor x158_ballEnergyDeco;
  CColor x15c_ballBombDeco;
  CColor x160_powerBombDigitDepletedFont;
  CColor x164_powerBombDigitDepletedOutline;
  CColor x168_powerBombIconUnavailable;
  CColor x16c_;
  CColor x170_;
  CColor x174_scanDisplayImagePaneColor;
  CColor x178_;
  CColor x17c_threatIconWarningColor;
  CColor x180_hudCounterFill;
  CColor x184_hudCounterOutline;
  CColor x188_scanIconCriticalColor;
  CColor x18c_scanIconCriticalDimColor;
  CColor x190_scanIconNoncriticalColor;
  CColor x194_scanIconNoncriticalDimColor;
  CColor x198_scanReticuleColor;
  CColor x19c_threatDigitsFont;
  CColor x1a0_threatDigitsOutline;
  CColor x1a4_missileDigitsFont;
  CColor x1a8_missileDigitsOutline;
  CColor x1ac_thermalDecoColor;
  CColor x1b0_thermalOutlinesColor;
  CColor x1b4_;
  CColor x1b8_thermalLockColor;
  CColor x1bc_pauseItemAmber;
  CColor x1c0_pauseItemBlue;
};

extern CTweakGuiColors* gpTweakGuiColors;

#endif // _CTWEAKGUICOLORS
