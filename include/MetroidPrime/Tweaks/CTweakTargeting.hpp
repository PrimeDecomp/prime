#ifndef _CTWEAKTARGETING
#define _CTWEAKTARGETING

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TOneStatic.hpp"

#include "rstl/vector.hpp"

class CTweakTargeting : public ITweakObject, public TOneStatic< CTweakTargeting > {
public:
  CTweakTargeting(CInputStream& in);

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
  CVector3f x30_;
  CVector3f x3c_;
  float x48_;
  float x4c_;
  float x50_orbitPointZOffset;
  float x54_orbitPointInTime;
  float x58_orbitPointOutTime;
  float x5c_;
  CVector3f x60_;
  CVector3f x6c_;
  CVector3f x78_;
  CVector3f x84_;
  float x90_;
  float x94_;
  float x98_;
  float x9c_;
  float xa0_;
  float xa4_;
  float xa8_;
  float xac_;
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
  CColor x1cc_chargeGaugePulseColorLow;
  float x1d0_chargeGaugePulsePeriod;
  CColor x1d4_;
  CColor x1d8_;
  CColor x1dc_;
  float x1e0_;
  float x1e4_;
  float x1e8_;
  float x1ec_;
  float x1f0_;
  float x1f4_;
  float x1f8_;
  float x1fc_;
  float x200_;
  float x204_;
  float x208_;
  float x20c_reticuleClampMin;
  float x210_reticuleClampMax;
  CColor x214_xrayRetRingColor;
  float x218_reticuleScale;
  float x21c_scanTargetClampMin;
  float x220_scanTargetClampMax;
  float x224_angularLagSpeed;
};

CHECK_SIZEOF(CTweakTargeting, 0x228)

extern CTweakTargeting* gpTweakTargeting;

#endif // _CTWEAKTARGETING
