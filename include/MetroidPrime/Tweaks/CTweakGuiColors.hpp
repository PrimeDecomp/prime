#ifndef _CTWEAKGUICOLORS
#define _CTWEAKGUICOLORS

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/TOneStatic.hpp"


#include "rstl/reserved_vector.hpp"

class CTweakGuiColors;
class CTweakGuiColors : public ITweakObject, public TOneStatic< CTweakGuiColors > {
public:
  ~CTweakGuiColors() override;
  CTweakGuiColors(CInputStream& in);

  const CColor& GetPauseBlurFilterColor() const { return x4_pauseBlurFilterColor; }
  const CColor& GetRadarStuffColor() const { return x8_radarStuffColor; }
  const CColor& GetRadarPlayerPaintColor() const { return xc_radarPlayerPaintColor; }
  const CColor& GetRadarEnemyPaintColor() const { return x10_radarEnemyPaintColor; }
  const CColor& GetHudMessageFill() const { return x14_hudMessageFill; }
  const CColor& GetHudMessageOutline() const { return x18_hudMessageOutline; }
  const CColor& GetHudFrameColor() const { return x1c_hudFrameColor; }
  const CColor& GetMissileIconColorActive() const { return x28_missileIconColorActive; }
  const CColor& GetVisorBeamMenuItemActive() const { return x2c_visorBeamMenuItemActive; }
  const CColor& GetVisorBeamMenuItemInactive() const { return x30_visorBeamMenuColorInactive; }
  const CColor& GetEnergyBarFilledLowEnergy() const { return x34_energyBarFilledLowEnergy; }
  const CColor& GetEnergyBarShadowLowEnergy() const { return x38_energyBarShadowLowEnergy; }
  const CColor& GetEnergyBarEmptyLowEnergy() const { return x3c_energyBarEmptyLowEnergy; }
  const CColor& GetHudDamageLightColor() const { return x40_hudDamageLightColor; }
  const CColor& GetVisorMenuTextFont() const { return x4c_visorMenuTextFont; }
  const CColor& GetVisorMenuTextOutline() const { return x50_visorMenuTextOutline; }
  const CColor& GetBeamMenuTextFont() const { return x54_beamMenuTextFont; }
  const CColor& GetBeamMenuTextOutline() const { return x58_beamMenuTextOutline; }
  const CColor& GetEnergyWarningFont() const { return x5c_energyWarningFont; }
  const CColor& GetThreatWarningFont() const { return x60_threatWarningFont; }
  const CColor& GetMissileWarningFont() const { return x64_missileWarningFont; }
  const CColor& GetThreatBarFilled() const { return x68_threatBarFilled; }
  const CColor& GetThreatBarShadow() const { return x6c_threatBarShadow; }
  const CColor& GetThreatBarEmpty() const { return x70_threatBarEmpty; }
  const CColor& GetMissileBarFilled() const { return x74_missileBarFilled; }
  const CColor& GetMissileBarShadow() const { return x78_missileBarShadow; }
  const CColor& GetMissileBarEmpty() const { return x7c_missileBarEmpty; }
  const CColor& GetThreatIconColor() const { return x80_threatIconColor; }
  const CColor& GetTickDecoColor() const { return x88_tickDecoColor; }
  const CColor& GetHelmetLightColor() const { return x8c_helmetLightColor; }
  const CColor& GetThreatIconSafeColor() const { return x90_threatIconSafeColor; }
  const CColor& GetMissileIconColorInactive() const { return x94_missileIconColorInactive; }
  const CColor& GetMissileIconColorChargedCanAlt() const {
    return x98_missileIconColorChargedCanAlt;
  }
  const CColor& GetMissileIconColorChargedNoAlt() const { return x9c_missileIconColorChargedNoAlt; }
  const CColor& GetMissileIconColorDepleteAlt() const { return xa0_missileIconColorDepleteAlt; }
  const CColor& GetVisorBeamMenuLozColor() const { return xb0_visorBeamMenuLozColor; }
  const CColor& GetEnergyWarningOutline() const { return xb4_energyWarningOutline; }
  const CColor& GetThreatWarningOutline() const { return xb8_threatWarningOutline; }
  const CColor& GetMissileWarningOutline() const { return xbc_missileWarningOutline; }
  const CColor& GetDamageAmbientColor() const { return xc4_damageAmbientColor; }
  const CColor& GetScanFrameInactiveColor() const { return xc8_scanFrameInactiveColor; }
  const CColor& GetScanFrameActiveColor() const { return xcc_scanFrameActiveColor; }
  const CColor& GetScanFrameImpulseColor() const { return xd0_scanFrameImpulseColor; }
  const CColor& GetScanVisorHudLightMultiply() const { return xd4_scanVisorHudLightMultiply; }
  const CColor& GetScanVisorScreenDimColor() const { return xd8_scanVisorScreenDimColor; }
  const CColor& GetThermalVisorHudLightMultiply() const { return xdc_thermalVisorHudLightMultiply; }
  const CColor& GetEnergyDrainFilterColor() const { return xe0_energyDrainFilterColor; }
  const CColor& GetDamageAmbientPulseColor() const { return xe4_damageAmbientPulseColor; }
  const CColor& GetEnergyBarFlashColor() const { return xe8_energyBarFlashColor; }
  const CColor& GetXRayEnergyDecoColor() const { return x100_xrayEnergyDecoColor; }
  const CColor& GetScanDataDotColor() const { return x138_scanDataDotColor; }
  const CColor& GetPowerBombDigitAvailableFont() const { return x13c_powerBombDigitAvailableFont; }
  const CColor& GetPowerBombDigitAvailableOutline() const {
    return x140_powerBombDigitAvailableOutline;
  }
  const CColor& GetBallBombFilledColor() const { return x148_ballBombFilled; }
  const CColor& GetBallBombEmptyColor() const { return x14c_ballBombEmpty; }
  const CColor& GetPowerBombIconAvailableColor() const { return x150_powerBombIconAvailable; }
  const CColor& GetBallBombEnergyColor() const { return x158_ballEnergyDeco; }
  const CColor& GetBallBombDecoColor() const { return x15c_ballBombDeco; }
  const CColor& GetPowerBombDigitDelpetedFont() const { return x160_powerBombDigitDepletedFont; }
  const CColor& GetPowerBombDigitDelpetedOutline() const {
    return x164_powerBombDigitDepletedOutline;
  }
  const CColor& GetPowerBombIconDepletedColor() const { return x168_powerBombIconUnavailable; }
  const CColor& GetScanDisplayImagePaneColor() const { return x174_scanDisplayImagePaneColor; }
  const CColor& GetThreatIconWarningColor() const { return x17c_threatIconWarningColor; }
  const CColor& GetHudCounterFill() const { return x180_hudCounterFill; }
  const CColor& GetHudCounterOutline() const { return x184_hudCounterOutline; }
  const CColor& GetScanIconCriticalColor() const { return x188_scanIconCriticalColor; }
  const CColor& GetScanIconCriticalDimColor() const { return x18c_scanIconCriticalDimColor; }
  const CColor& GetScanIconNoncriticalColor() const { return x190_scanIconNoncriticalColor; }
  const CColor& GetScanIconNoncriticalDimColor() const { return x194_scanIconNoncriticalDimColor; }
  const CColor& GetScanReticuleColor() const { return x198_scanReticuleColor; }
  const CColor& GetThreatDigitsFont() const { return x19c_threatDigitsFont; }
  const CColor& GetThreatDigitsOutline() const { return x1a0_threatDigitsOutline; }
  const CColor& GetMissileDigitsFont() const { return x1a4_missileDigitsFont; }
  const CColor& GetMissileDigitsOutline() const { return x1a8_missileDigitsOutline; }
  const CColor& GetThermalDecoColor() const { return x1ac_thermalDecoColor; }
  const CColor& GetThermalOutlinesColor() const { return x1b0_thermalOutlinesColor; }
  const CColor& GetThermalLockColor() const { return x1b8_thermalLockColor; }
  const CColor& GetPauseItemAmberColor() const { return x1bc_pauseItemAmber; }
  const CColor& GetPauseItemBlueColor() const { return x1c0_pauseItemBlue; }

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
  struct SPerVisorColors {
    CColor x0_energyBarFilled;
    CColor x4_energyBarEmpty;
    CColor x8_energyBarShadow;
    CColor xc_energyTankFilled;
    CColor x10_energyTankEmpty;
    CColor x14_energyDigitsFont;
    CColor x18_energyDigitsOutline;

    explicit SPerVisorColors(CInputStream& in)
    : x0_energyBarFilled(in)
    , x4_energyBarEmpty(in)
    , x8_energyBarShadow(in)
    , xc_energyTankFilled(in)
    , x10_energyTankEmpty(in)
    , x14_energyDigitsFont(in)
    , x18_energyDigitsOutline(in) {}
  };
  /* Combat, Scan, XRay, Thermal, Ball */
  rstl::reserved_vector< SPerVisorColors, 5 > x1c4_perVisorColors;
};
CHECK_SIZEOF(CTweakGuiColors, 0x254)

extern CTweakGuiColors* gpTweakGuiColors;

#endif // _CTWEAKGUICOLORS
