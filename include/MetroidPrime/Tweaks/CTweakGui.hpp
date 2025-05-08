#ifndef _CTWEAKGUI
#define _CTWEAKGUI

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/TOneStatic.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/reserved_vector.hpp"
#include "rstl/string.hpp"

class CTweakGui : public ITweakObject, public TOneStatic< CTweakGui > {
public:
  enum EHudVisMode {
    kHud_Zero,
    kHud_One,
    kHud_Two,
    kHud_Three,
  };

  enum EHelmetVisMode {
    kHelmet_ReducedUpdate,
    kHelmet_NotVisible,
    kHelmet_Deco,
    kHelmet_HelmetDeco,
    kHelmet_GlowHelmetDeco,
    kHelmet_HelmetOnly
  };

  CTweakGui(CInputStream& in);

  float GetMapAlphaInterpolant() const { return x8_mapAlphaInterp; }
  float GetPauseBlurFactor() const { return xc_pauseBlurFactor; }
  float GetRadarXYRadius() const { return x10_radarXYRadius; }
  float GetRadarZRadius() const { return x24_radarZRadius; }
  float GetRadarZCloseRadius() const { return x28_radarZCloseRadius; }
  float GetEnergyBarFilledSpeed() const { return x34_energyBarFilledSpeed; }
  float GetEnergyBarShadowSpeed() const { return x38_energyBarShadowSpeed; }
  float GetEnergyBarDrainDelay() const { return x3c_energyBarDrainDelay; }
  bool GetEnergyBarAlwaysResetDelay() const { return x40_energyBarAlwaysResetDelay; }
  float GetHudDamagePracticalsGainConstant() const { return x44_hudDamagePracticalsGainConstant; }
  float GetHudDamagePracticalsGainLinear() const { return x48_hudDamagePracticalsGainLinear; }
  float GetHudDamagePracticalsInitConstant() const { return x4c_hudDamagePracticalsInitConstant; }
  float GetHudDamagePracticalsInitLinear() const { return x50_hudDamagePracticalsInitLinear; }
  float GetHudDamageLightSpotAngle() const { return x54_hudDamageLightSpotAngle; }
  float GetDamageLightAngleC() const { return x58_damageLightAngleC; }
  float GetDamageLightAngleL() const { return x5c_damageLightAngleL; }
  float GetDamageLightAngleQ() const { return x60_damageLightAngleQ; }
  CVector3f GetDamageLightPreTranslate() const { return x64_damageLightPreTranslate; }
  CVector3f GetDamageLightCenterTranslate() const { return x70_damageLightCenterTranslate; }
  float GetDamageLightXfXAngle() const { return x7c_damageLightXfXAngle; }
  float GetDamageLightXfZAngle() const { return x80_damageLightXfZAngle; }
  float GetHudDecoShakeTranslateVelConstant() const { return x84_hudDecoShakeTranslateVelConstant; }
  float GetHudDecoShakeTranslateVelLinear() const { return x88_hudDecoShakeTranslateVelLinear; }
  float GetMaxDecoDamageShakeTranslate() const { return x8c_maxDecoDamageShakeTranslate; }
  float GetDecoDamageShakeDeceleration() const { return x90_decoDamageShakeDeceleration; }
  float GetDecoShakeGainConstant() const { return x94_decoShakeGainConstant; }
  float GetDecoShakeGainLinear() const { return x98_decoShakeGainLinear; }
  float GetDecoShakeInitConstant() const { return x9c_decoShakeInitConstant; }
  float GetDecoShakeInitLinear() const { return xa0_decoShakeInitLinear; }
  float GetMaxDecoDamageShakeRotate() const { return xa4_maxDecoDamageShakeRotate; }
  uint GetHudCamFovTweak() const { return xa8_hudCamFovTweak; }
  uint GetHudCamYTweak() const { return xac_hudCamYTweak; }
  uint GetHudCamZTweak() const { return xb0_hudCamZTweak; }
  float GetBeamVisorMenuAnimTime() const { return xc0_beamVisorMenuAnimTime; }
  float GetVisorBeamMenuItemActiveScale() const { return xc4_visorBeamMenuItemActiveScale; }
  float GetVisorBeamMenuItemInactiveScale() const { return xc8_visorBeamMenuItemInactiveScale; }
  float GetVisorBeamMenuItemTranslate() const { return xcc_visorBeamMenuItemTranslate; }
  float GetThreatRange() const { return xe4_threatRange; }
  float GetRadarScopeCoordRadius() const { return xe8_radarScopeCoordRadius; }
  float GetRadarPlayerPaintRadius() const { return xec_radarPlayerPaintRadius; }
  float GetRadarEnemyPaintRadius() const { return xf0_radarEnemyPaintRadius; }
  float GetMissileArrowVisTime() const { return xf4_missileArrowVisTime; }
  EHudVisMode GetHudVisMode() const { return xf8_hudVisMode; }
  EHelmetVisMode GetHelmetVisMode() const { return xfc_helmetVisMode; }
  uint GetEnableAutoMapper() const { return x100_enableAutoMapper; }
  uint GetEnableTargetingManager() const { return x108_enableTargetingManager; }
  uint GetEnablePlayerVisor() const { return x10c_enablePlayerVisor; }
  float GetThreatWarningFraction() const { return x110_threatWarningFraction; }
  float GetMissileWarningFraction() const { return x114_missileWarningFraction; }
  float GetFreeLookFadeTime() const { return x118_freeLookFadeTime; }
  float GetFreeLookSfxPitchScale() const { return x12c_freeLookSfxPitchScale; }
  bool GetNoAbsoluteFreeLookSfxPitch() const { return x130_noAbsoluteFreeLookSfxPitch; }
  float GetFaceReflectionOrthoWidth() const { return x13c_faceReflectionOrthoWidth; }
  float GetFaceReflectionOrthoHeight() const { return x140_faceReflectionOrthoHeight; }
  float GetFaceReflectionDistance() const { return x144_faceReflectionDistance; }
  float GetFaceReflectionHeight() const { return x148_faceReflectionHeight; }
  float GetFaceReflectionAspect() const { return x14c_faceReflectionAspect; }
  float GetMissileWarningPulseTime() const { return x1a0_missileWarningPulseTime; }
  float GetExplosionLightFalloffMultConstant() const {
    return x1a4_explosionLightFalloffMultConstant;
  }
  float GetExplosionLightFalloffMultLinear() const { return x1a8_explosionLightFalloffMultLinear; }
  float GetExplosionLightFalloffMultQuadratic() const {
    return x1ac_explosionLightFalloffMultQuadratic;
  }
  float GetHudDamagePeakFactor() const { return x1b4_hudDamagePeakFactor; }
  float GetHudDamageFilterGainConstant() const { return x1b8_hudDamageFilterGainConstant; }
  float GetHudDamageFilterGainLinear() const { return x1bc_hudDamageFilterGainLinear; }
  float GetHudDamageFilterInitConstant() const { return x1c0_hudDamageFilterInitConstant; }
  float GetHudDamageFilterInitLinear() const { return x1c4_hudDamageFilterInitLinear; }
  float GetEnergyDrainModPeriod() const { return x1c8_energyDrainModPeriod; }
  bool GetEnergyDrainSinusoidalPulse() const { return x1cc_energyDrainSinusoidalPulse; }
  bool GetEnergyDrainFilterAdditive() const { return x1cd_energyDrainFilterAdditive; }
  float GetHudDamagePulseDuration() const { return x1d0_hudDamagePulseDuration; }
  float GetHudDamageColorGain() const { return x1d4_hudDamageColorGain; }
  float GetHudDecoShakeTranslateGain() const { return x1d8_hudDecoShakeTranslateGain; }
  float GetHudLagOffsetScale() const { return x1dc_hudLagOffsetScale; }
  float GetXrayBlurScaleLinear() const { return x204_xrayBlurScaleLinear; }
  float GetXrayBlurScaleQuadratic() const { return x208_xrayBlurScaleQuadratic; }
  float GetScanSidesAngle() const { return x210_scanSidesAngle; }
  float GetScanSidesXScale() const { return x214_scanSidesXScale; }
  float GetScanSidesPositionEnd() const { return x218_scanSidesPositionEnd; }
  float GetScanSidesDuration() const { return x220_scanSidesDuration; }
  float GetScanSidesStartTime() const { return x224_scanSidesStartTime; }
  float GetScanSidesEndTime() const { return x228_scanSidesEndTime; }
  float GetScanDataDotRadius() const { return x22c_scanDataDotRadius; }
  float GetScanDataDotPosRandMagnitude() const { return x230_scanDataDotPosRandMag; }
  float GetScanDataDotSeekDurationMin() const { return x234_scanDataDotSeekDurationMin; }
  float GetScanDataDotSeekDurationMax() const { return x238_scanDataDotSeekDurationMax; }
  float GetScanDataDotHoldDurationMin() const { return x23c_scanDataDotHoldDurationMin; }
  float GetScanDataDotHoldDurationMax() const { return x240_scanDataDotHoldDurationMax; }
  float GetScanAppearanceDuration() const { return x244_scanAppearanceDuration; }
  float GetScanPaneFlashFactor() const { return x248_scanPaneFlashFactor; }
  float GetScanPaneFadeInTime() const { return x24c_scanPaneFadeInTime; }
  float GetScanPaneFadeOutTime() const { return x250_scanPaneFadeOutTime; }
  float GetBallViewportYReduction() const { return x254_ballViewportYReduction; }
  float GetScanWindowIdleWidth() const { return x258_scanWindowIdleW; }
  float GetScanWindowIdleHeight() const { return x25c_scanWindowIdleH; }
  float GetScanWindowActiveWidth() const { return x260_scanWindowActiveW; }
  float GetScanWindowActiveHeight() const { return x264_scanWindowActiveH; }
  float GetScanWindowMagnification() const { return x268_scanWindowMagnification; }
  float GetScanWindowScanningAspect() const { return x26c_scanWindowScanningAspect; }
  float GetScanSidesPositionStart() const { return x270_scanSidesPositionStart; }
  bool GetShowAutomapperInMorphball() const { return x274_showAutomapperInMorphball; }
  bool GetLatchArticleText() const { return x275_latchArticleText; }
  float GetWorldTransManagerCharsPerSfx() const { return x278_wtMgrCharsPerSfx; }
  uint GetXRayFogMode() const { return x27c_xrayFogMode; }
  float GetXRayFogNearZ() const { return x280_xrayFogNearZ; }
  float GetXRayFogFarZ() const { return x284_xrayFogFarZ; }
  const CColor& GetXRayFogColor() const { return x288_xrayFogColor; }
  float GetThermalVisorLevel() const { return x28c_thermalVisorLevel; }
  const CColor& GetThermalVisorColor() const { return x290_thermalVisorColor; }
  const CColor& GetVisorHudLightAdd(int v) const { return x294_hudLightAddPerVisor[v]; }
  const CColor& GetVisorHudLightMultiply(int v) const { return x2a4_hudLightMultiplyPerVisor[v]; }
  const CColor& GetHudReflectivityLightColor() const { return x2b4_hudReflectivityLightColor; }
  float GetHudLightAttMulConstant() const { return x2b8_hudLightAttMulConstant; }
  float GetHudLightAttMulLinear() const { return x2bc_hudLightAttMulLinear; }
  float GetHudLightAttMulQuadratic() const { return x2c0_hudLightAttMulQuadratic; }
  float GetScanSpeed(uint speed) const {
    return x2c4_scanSpeeds[speed];
  }
  const rstl::string& GetCreditsTable() const { return x2d0_creditsTable; }
  const rstl::string& GetCreditsFont() const { return x2e0_creditsFont; }
  const rstl::string& GetJapaneseCreditsFont() const { return x2f0_japaneseCreditsFont; }
  const CColor& GetCreditsTextFontColor() const { return x300_; }
  const CColor& GetCreditsTextBorderColor() const { return x304_; }
  float GetCredits_x30c() const { return x30c_; }
  float GetCredits_x310() const { return x310_; }
  
  static float FaceReflectionDistanceDebugValueToActualValue(float v);
  static float FaceReflectionHeightDebugValueToActualValue(float v);
  static float FaceReflectionAspectDebugValueToActualValue(float v);
  static float FaceReflectionOrthoWidthDebugValueToActualValue(float v);
  static float FaceReflectionOrthoHeightDebugValueToActualValue(float v);

private:
  bool x4_;
  float x8_mapAlphaInterp;
  float xc_pauseBlurFactor;
  float x10_radarXYRadius;
  float x14_;
  float x18_;
  float x1c_;
  float x20_;
  float x24_radarZRadius;
  float x28_radarZCloseRadius;
  uint x2c_;
  float x30_;
  float x34_energyBarFilledSpeed;
  float x38_energyBarShadowSpeed;
  float x3c_energyBarDrainDelay;
  bool x40_energyBarAlwaysResetDelay;
  float x44_hudDamagePracticalsGainConstant;
  float x48_hudDamagePracticalsGainLinear;
  float x4c_hudDamagePracticalsInitConstant;
  float x50_hudDamagePracticalsInitLinear;
  float x54_hudDamageLightSpotAngle;
  float x58_damageLightAngleC;
  float x5c_damageLightAngleL;
  float x60_damageLightAngleQ;
  CVector3f x64_damageLightPreTranslate;
  CVector3f x70_damageLightCenterTranslate;
  float x7c_damageLightXfXAngle;
  float x80_damageLightXfZAngle;
  float x84_hudDecoShakeTranslateVelConstant;
  float x88_hudDecoShakeTranslateVelLinear;
  float x8c_maxDecoDamageShakeTranslate;
  float x90_decoDamageShakeDeceleration;
  float x94_decoShakeGainConstant;
  float x98_decoShakeGainLinear;
  float x9c_decoShakeInitConstant;
  float xa0_decoShakeInitLinear;
  float xa4_maxDecoDamageShakeRotate;
  uint xa8_hudCamFovTweak;
  uint xac_hudCamYTweak;
  uint xb0_hudCamZTweak;
  float xb4_;
  float xb8_;
  float xbc_;
  float xc0_beamVisorMenuAnimTime;
  float xc4_visorBeamMenuItemActiveScale;
  float xc8_visorBeamMenuItemInactiveScale;
  float xcc_visorBeamMenuItemTranslate;
  float xd0_;
  uint xd4_;
  float xd8_;
  float xdc_;
  float xe0_;
  float xe4_threatRange;
  float xe8_radarScopeCoordRadius;
  float xec_radarPlayerPaintRadius;
  float xf0_radarEnemyPaintRadius;
  float xf4_missileArrowVisTime;
  EHudVisMode xf8_hudVisMode;
  EHelmetVisMode xfc_helmetVisMode;
  uint x100_enableAutoMapper;
  uint x104_;
  uint x108_enableTargetingManager;
  uint x10c_enablePlayerVisor;
  float x110_threatWarningFraction;
  float x114_missileWarningFraction;
  float x118_freeLookFadeTime;
  float x11c_;
  float x120_;
  float x124_;
  float x128_;
  float x12c_freeLookSfxPitchScale;
  bool x130_noAbsoluteFreeLookSfxPitch;
  float x134_;
  float x138_;
  float x13c_faceReflectionOrthoWidth;
  float x140_faceReflectionOrthoHeight;
  float x144_faceReflectionDistance;
  float x148_faceReflectionHeight;
  float x14c_faceReflectionAspect;
  rstl::string x150_;
  rstl::string x160_;
  rstl::string x170_;
  rstl::string x180_;
  rstl::string x190_;
  float x1a0_missileWarningPulseTime;
  float x1a4_explosionLightFalloffMultConstant;
  float x1a8_explosionLightFalloffMultLinear;
  float x1ac_explosionLightFalloffMultQuadratic;
  float x1b0_;
  float x1b4_hudDamagePeakFactor;
  float x1b8_hudDamageFilterGainConstant;
  float x1bc_hudDamageFilterGainLinear;
  float x1c0_hudDamageFilterInitConstant;
  float x1c4_hudDamageFilterInitLinear;
  float x1c8_energyDrainModPeriod;
  bool x1cc_energyDrainSinusoidalPulse;
  bool x1cd_energyDrainFilterAdditive;
  float x1d0_hudDamagePulseDuration;
  float x1d4_hudDamageColorGain;
  float x1d8_hudDecoShakeTranslateGain;
  float x1dc_hudLagOffsetScale;
  float x1e0_;
  float x1e4_;
  float x1e8_;
  float x1ec_;
  float x1f0_;
  float x1f4_;
  float x1f8_;
  float x1fc_;
  CColor x200_;
  float x204_xrayBlurScaleLinear;
  float x208_xrayBlurScaleQuadratic;
  float x20c_;
  float x210_scanSidesAngle;
  float x214_scanSidesXScale;
  float x218_scanSidesPositionEnd;
  float x21c_;
  float x220_scanSidesDuration;
  float x224_scanSidesStartTime;
  float x228_scanSidesEndTime;
  float x22c_scanDataDotRadius;
  float x230_scanDataDotPosRandMag;
  float x234_scanDataDotSeekDurationMin;
  float x238_scanDataDotSeekDurationMax;
  float x23c_scanDataDotHoldDurationMin;
  float x240_scanDataDotHoldDurationMax;
  float x244_scanAppearanceDuration;
  float x248_scanPaneFlashFactor;
  float x24c_scanPaneFadeInTime;
  float x250_scanPaneFadeOutTime;
  float x254_ballViewportYReduction;
  float x258_scanWindowIdleW;
  float x25c_scanWindowIdleH;
  float x260_scanWindowActiveW;
  float x264_scanWindowActiveH;
  float x268_scanWindowMagnification;
  float x26c_scanWindowScanningAspect;
  float x270_scanSidesPositionStart;
  bool x274_showAutomapperInMorphball;
  bool x275_latchArticleText;
  float x278_wtMgrCharsPerSfx;
  uint x27c_xrayFogMode;
  float x280_xrayFogNearZ;
  float x284_xrayFogFarZ;
  CColor x288_xrayFogColor;
  float x28c_thermalVisorLevel;
  CColor x290_thermalVisorColor;
  CColor x294_hudLightAddPerVisor[4];
  CColor x2a4_hudLightMultiplyPerVisor[4];
  CColor x2b4_hudReflectivityLightColor;
  float x2b8_hudLightAttMulConstant;
  float x2bc_hudLightAttMulLinear;
  float x2c0_hudLightAttMulQuadratic;
  rstl::reserved_vector< float, 2 > x2c4_scanSpeeds;
  rstl::string x2d0_creditsTable;
  rstl::string x2e0_creditsFont;
  rstl::string x2f0_japaneseCreditsFont;
  CColor x300_;
  CColor x304_;
  float x308_;
  float x30c_;
  float x310_;
  rstl::string x314_;
  rstl::string x324_;
  rstl::string x334_;
  CColor x344_;
  CColor x348_;
  CColor x34c_;
  CColor x350_;
  CColor x354_;
  CColor x358_;
  float x35c_;
  float x360_;
  float x364_;
};

extern CTweakGui* gpTweakGui;

#endif // _CTWEAKGUI
