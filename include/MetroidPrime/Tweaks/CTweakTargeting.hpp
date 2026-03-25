#ifndef _CTWEAKTARGETING
#define _CTWEAKTARGETING

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "rstl/vector.hpp"

class CTweakTargeting : public ITweakObject, public TOneStatic<CTweakTargeting> {
public:
  CTweakTargeting(CInputStream& in);

  int GetTargetRadiusMode() const { return x4_targetRadiusMode; }
  float GetCurrLockOnExitDuration() const { return x8_currLockOnExitDuration; }
  float GetCurrLockOnEnterDuration() const { return xc_currLockOnEnterDuration; }
  float GetCurrLockOnSwitchDuration() const { return x10_currLockOnSwitchDuration; }
  float GetLockConfirmScale() const { return x14_lockConfirmScale; }
  float GetNextLockOnEnterDuration() const { return x18_nextLockOnEnterDuration; }
  float GetNextLockOnExitDuration() const { return x1c_nextLockOnExitDuration; }
  float GetNextLockOnSwitchDuration() const { return x20_nextLockOnSwitchDuration; }
  float GetSeekerScale() const { return x24_seekerScale; }
  float GetSeekerAngleSpeed() const { return x28_seekerAngleSpeed; }
  float GetXRayRetAngleSpeed() const { return x2c_xrayRetAngleSpeed; }
  float GetOrbitPointZOffset() const { return x50_orbitPointZOffset; }
  float GetOrbitPointInTime() const { return x54_orbitPointInTime; }
  float GetOrbitPointOutTime() const { return x58_orbitPointOutTime; }
  const CColor& GetThermalReticuleColor() const { return xb0_thermalReticuleColor; }
  float GetTargetFlowerScale() const { return xb4_targetFlowerScale; }
  const CColor& GetTargetFlowerColor() const { return xb8_targetFlowerColor; }
  const float& GetMissileBracketDuration() const { return xbc_missileBracketDuration; }
  float GetMissileBracketScaleStart() const { return xc0_missileBracketScaleStart; }
  float GetMissileBracketScaleEnd() const { return xc4_missileBracketScaleEnd; }
  float GetMissileBracketScaleDuration() const { return xc8_missileBracketScaleDuration; }
  const CColor& GetMissileBracketColor() const { return xcc_missileBracketColor; }
  const float& GetLockonDuration() const { return xd0_lockonDuration; }
  float GetInnerBeamScale() const { return xd4_innerBeamScale; }
  const CColor& GetInnerBeamColorPower() const { return xd8_innerBeamColorPower; }
  const CColor& GetInnerBeamColorIce() const { return xdc_innerBeamColorIce; }
  const CColor& GetInnerBeamColorWave() const { return xe0_innerBeamColorWave; }
  const CColor& GetInnerBeamColorPlasma() const { return xe4_innerBeamColorPlasma; }
  float GetChargeGaugeOvershootOffset() const { return xe8_chargeGaugeOvershootOffset; }
  float GetChargeGaugeOvershootDuration() const { return xec_chargeGaugeOvershootDuration; }
  float GetOuterBeamSquaresScale() const { return xf0_outerBeamSquaresScale; }
  const CColor& GetOuterBeamSquareColor() const { return xf4_outerBeamSquareColor; }
  const rstl::vector< float >& GetOuterBeamSquareAngles(int beam) const {
    return xf8_outerBeamSquareAngles[beam];
  }
  float GetChargeGaugeAngle(int beam) const { return x108_chargeGaugeAngles[beam]; }
  float GetChargeGaugeScale() const { return x118_chargeGaugeScale; }
  const CColor& GetChargeGaugeNonFullColor() const { return x11c_chargeGaugeNonFullColor; }
  int GetChargeTickCount() const { return x120_chargeTickCount; }
  float GetChargeTickAnglePitch() const { return x124_chargeTickAnglePitch; }
  float GetLockFireScale() const { return x128_lockFireScale; }
  float GetLockFireDuration() const { return x12c_lockFireDuration; }
  const CColor& GetLockFireColor() const { return x130_lockFireColor; }
  float GetLockDaggerScaleStart() const { return x134_lockDaggerScaleStart; }
  float GetLockDaggerScaleEnd() const { return x138_lockDaggerScaleEnd; }
  const CColor& GetLockDaggerColor() const { return x13c_lockDaggerColor; }
  float GetLockDaggerAngle0() const { return x140_lockDaggerAngle0; }
  float GetLockDaggerAngle1() const { return x144_lockDaggerAngle1; }
  float GetLockDaggerAngle2() const { return x148_lockDaggerAngle2; }
  const CColor& GetLockConfirmColor() const { return x14c_lockConfirmColor; }
  const CColor& GetSeekerColor() const { return x150_seekerColor; }
  float GetLockConfirmClampMin() const { return x154_lockConfirmClampMin; }
  float GetLockConfirmClampMax() const { return x158_lockConfirmClampMax; }
  float GetTargetFlowerClampMin() const { return x15c_targetFlowerClampMin; }
  float GetTargetFlowerClampMax() const { return x160_targetFlowerClampMax; }
  float GetSeekerClampMin() const { return x164_seekerClampMin; }
  float GetSeekerClampMax() const { return x168_seekerClampMax; }
  float GetMissileBracketClampMin() const { return x16c_missileBracketClampMin; }
  float GetMissileBracketClampMax() const { return x170_missileBracketClampMax; }
  float GetInnerBeamClampMin() const { return x174_innerBeamClampMin; }
  float GetInnerBeamClampMax() const { return x178_innerBeamClampMax; }
  float GetChargeGaugeClampMin() const { return x17c_chargeGaugeClampMin; }
  float GetChargeGaugeClampMax() const { return x180_chargeGaugeClampMax; }
  float GetLockFireClampMin() const { return x184_lockFireClampMin; }
  float GetLockFireClampMax() const { return x188_lockFireClampMax; }
  float GetLockDaggerClampMin() const { return x18c_lockDaggerClampMin; }
  float GetLockDaggerClampMax() const { return x190_lockDaggerClampMax; }
  float GetGrappleSelectScale() const { return x194_grappleSelectScale; }
  float GetGrappleScale() const { return x198_grappleScale; }
  float GetGrappleClampMin() const { return x19c_grappleClampMin; }
  float GetGrappleClampMax() const { return x1a0_grappleClampMax; }
  const CColor& GetGrapplePointSelectColor() const { return x1a4_grapplePointSelectColor; }
  const CColor& GetGrapplePointColor() const { return x1a8_grapplePointColor; }
  const CColor& GetLockedGrapplePointSelectColor() const { return x1ac_lockedGrapplePointSelectColor; }
  float GetGrappleMinClampScale() const { return x1b0_grappleMinClampScale; }
  const CColor& GetChargeGaugePulseColorHigh() const { return x1b4_chargeGaugePulseColorHigh; }
  const float& GetFullChargeFadeDuration() const { return x1b8_fullChargeFadeDuration; }
  const CColor& GetOrbitPointColor() const { return x1bc_orbitPointColor; }
  const CColor& GetCrosshairsColor() const { return x1c0_crosshairsColor; }
  float GetCrosshairsScaleDuration() const { return x1c4_crosshairsScaleDur; }
  bool GetDrawOrbitPoint() const { return x1c8_drawOrbitPoint; }
  const CColor& GetChargeGaugePulseColorLow() const { return x1cc_chargeGaugePulseColorLow; }
  float GetChargeGaugePulsePeriod() const { return x1d0_chargeGaugePulsePeriod; }
  float GetReticuleClampMin() const { return x20c_reticuleClampMin; }
  float GetReticuleClampMax() const { return x210_reticuleClampMax; }
  const CColor& GetXRayRetRingColor() const { return x214_xrayRetRingColor; }
  float GetReticuleScale() const { return x218_reticuleScale; }
  float GetScanTargetClampMin() const { return x21c_scanTargetClampMin; }
  float GetScanTargetClampMax() const { return x220_scanTargetClampMax; }
  float GetAngularLagSpeed() const { return x224_angularLagSpeed; }

private:
  uint x4_targetRadiusMode;
  float x8_currLockOnExitDuration;
  float xc_currLockOnEnterDuration;
  float x10_currLockOnSwitchDuration;
  float x14_lockConfirmScale;
  float x18_nextLockOnEnterDuration;
  float x1c_nextLockOnExitDuration;
  float x20_nextLockOnSwitchDuration;
  float x24_seekerScale;
  float x28_seekerAngleSpeed;
  float x2c_xrayRetAngleSpeed;
  uchar x30_pad[0x20]; // CVector3f x30_, x3c_, floats x48_, x4c_
  float x50_orbitPointZOffset;
  float x54_orbitPointInTime;
  float x58_orbitPointOutTime;
  uchar x5c_pad1[0x54]; // fields x5c through xaf
  CColor xb0_thermalReticuleColor;
  float xb4_targetFlowerScale;
  CColor xb8_targetFlowerColor;
  float xbc_missileBracketDuration;
  float xc0_missileBracketScaleStart;
  float xc4_missileBracketScaleEnd;
  float xc8_missileBracketScaleDuration;
  CColor xcc_missileBracketColor;
  float xd0_lockonDuration;
  float xd4_innerBeamScale;
  CColor xd8_innerBeamColorPower;
  CColor xdc_innerBeamColorIce;
  CColor xe0_innerBeamColorWave;
  CColor xe4_innerBeamColorPlasma;
  float xe8_chargeGaugeOvershootOffset;
  float xec_chargeGaugeOvershootDuration;
  float xf0_outerBeamSquaresScale;
  CColor xf4_outerBeamSquareColor;
  rstl::vector< rstl::vector< float > > xf8_outerBeamSquareAngles;
  rstl::vector< float > x108_chargeGaugeAngles;
  float x118_chargeGaugeScale;
  CColor x11c_chargeGaugeNonFullColor;
  int x120_chargeTickCount;
  float x124_chargeTickAnglePitch;
  float x128_lockFireScale;
  float x12c_lockFireDuration;
  CColor x130_lockFireColor;
  float x134_lockDaggerScaleStart;
  float x138_lockDaggerScaleEnd;
  CColor x13c_lockDaggerColor;
  float x140_lockDaggerAngle0;
  float x144_lockDaggerAngle1;
  float x148_lockDaggerAngle2;
  CColor x14c_lockConfirmColor;
  CColor x150_seekerColor;
  float x154_lockConfirmClampMin;
  float x158_lockConfirmClampMax;
  float x15c_targetFlowerClampMin;
  float x160_targetFlowerClampMax;
  float x164_seekerClampMin;
  float x168_seekerClampMax;
  float x16c_missileBracketClampMin;
  float x170_missileBracketClampMax;
  float x174_innerBeamClampMin;
  float x178_innerBeamClampMax;
  float x17c_chargeGaugeClampMin;
  float x180_chargeGaugeClampMax;
  float x184_lockFireClampMin;
  float x188_lockFireClampMax;
  float x18c_lockDaggerClampMin;
  float x190_lockDaggerClampMax;
  float x194_grappleSelectScale;
  float x198_grappleScale;
  float x19c_grappleClampMin;
  float x1a0_grappleClampMax;
  CColor x1a4_grapplePointSelectColor;
  CColor x1a8_grapplePointColor;
  CColor x1ac_lockedGrapplePointSelectColor;
  float x1b0_grappleMinClampScale;
  CColor x1b4_chargeGaugePulseColorHigh;
  float x1b8_fullChargeFadeDuration;
  CColor x1bc_orbitPointColor;
  CColor x1c0_crosshairsColor;
  float x1c4_crosshairsScaleDur;
  bool x1c8_drawOrbitPoint;
  uchar x1c9_pad[0x03];
  CColor x1cc_chargeGaugePulseColorLow;
  float x1d0_chargeGaugePulsePeriod;
  uchar x1d4_pad3[0x38]; // x1d4 through x20b
  float x20c_reticuleClampMin;
  float x210_reticuleClampMax;
  CColor x214_xrayRetRingColor;
  float x218_reticuleScale;
  float x21c_scanTargetClampMin;
  float x220_scanTargetClampMax;
  float x224_angularLagSpeed;
  uchar x228_pad[0x04]; // remaining
};

extern CTweakTargeting* gpTweakTargeting;

#endif // _CTWEAKTARGETING
