#ifndef _CSCRIPTSPINDLECAMERA
#define _CSCRIPTSPINDLECAMERA

#include "types.h"

#include "MetroidPrime/Cameras/CGameCamera.hpp"

#include "rstl/reserved_vector.hpp"

class CInputStream;

enum ESpindleInput {
  kSI_Constant,
  kSI_HintToBallDist,
  kSI_HintToBallVOff,
  kSI_HintBallAngle,
  kSI_HintBallRightAngle,
  kSI_HintBallLeftAngle,
  kSI_HintDeltaDist,
  kSI_HintDeltaVOff,
};

struct SSpindleProperty {
  uint x0_flags;
  ESpindleInput x4_input;
  float x8_lowOut;
  float xc_highOut;
  float x10_lowIn;
  float x14_highIn;

  SSpindleProperty() {}
  SSpindleProperty(const SSpindleProperty& other)
  : x0_flags(other.x0_flags)
  , x4_input(other.x4_input)
  , x8_lowOut(other.x8_lowOut)
  , xc_highOut(other.xc_highOut)
  , x10_lowIn(other.x10_lowIn)
  , x14_highIn(other.x14_highIn) {}

  float GetValue(float inVar) const;
};
CHECK_SIZEOF(SSpindleProperty, 0x18)

struct SSpindleSegment {
  uint x0_flags;
  ESpindleInput x4_input;
  float x8_lowOut;
  float xc_highOut;
  float x10_lowIn;
  float x14_highIn;

  SSpindleSegment() {}
  SSpindleSegment(ESpindleInput input, uint flags, float lowOut, float highOut, float lowIn,
                  float highIn);

  void FixupAngles();
};
CHECK_SIZEOF(SSpindleSegment, 0x18)

SSpindleSegment LoadSpindleSegment(CInputStream& in);

class CScriptSpindleCamera : public CGameCamera {
public:
  CScriptSpindleCamera(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                       const CTransform4f& xf, const bool active, int flags,
                       float hintToCamDistMin,
                       float hintToCamDistMax, float hintToCamVOffMin, float hintToCamVOffMax,
                       const SSpindleProperty& targetHintToCamDeltaAngleVel,
                       const SSpindleProperty& deltaAngleScaleWithCamDist,
                       const SSpindleProperty& hintToCamDist,
                       const SSpindleProperty& distOffsetFromBallDist,
                       const SSpindleProperty& hintBallToCamAzimuth,
                       const SSpindleProperty& unused,
                       const SSpindleProperty& maxHintBallToCamAzimuth,
                       const SSpindleProperty& camLookRelAzimuth,
                       const SSpindleProperty& lookPosZOffset,
                       const SSpindleProperty& camPosZOffset,
                       const SSpindleProperty& clampedAzimuthFromHintDir,
                       const SSpindleProperty& dampingAzimuthSpeed,
                       const SSpindleProperty& targetHintToCamDeltaAngleVelRange,
                       const SSpindleProperty& deleteHintBallDist,
                       const SSpindleProperty& recoverClampedAzimuthFromHintDir);

  // CEntity
  ~CScriptSpindleCamera() override;
  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;

  // CActor
  void Render(const CStateManager& mgr) const override;

  // CGameCamera
  void ProcessInput(const CFinalInput& input, CStateManager& mgr) override;
  void Think(float dt, CStateManager& mgr) override;
  void Reset(const CTransform4f& xf, CStateManager& mgr) override;

private:
  float GetInVar(const SSpindleProperty& seg) const;

  uint x188_flags;
  rstl::reserved_vector< float, 8 > x18c_inVars;
  float x1b0_hintToCamDistMin;
  float x1b4_hintToCamDistMax;
  float x1b8_hintToCamVOffMin;
  float x1bc_hintToCamVOffMax;
  SSpindleProperty x1c0_targetHintToCamDeltaAngleVel;
  SSpindleProperty x1d8_deltaAngleScaleWithCamDist;
  SSpindleProperty x1f0_hintToCamDist;
  SSpindleProperty x208_distOffsetFromBallDist;
  SSpindleProperty x220_hintBallToCamAzimuth;
  SSpindleProperty x238_unused;
  SSpindleProperty x250_maxHintBallToCamAzimuth;
  SSpindleProperty x268_camLookRelAzimuth;
  SSpindleProperty x280_lookPosZOffset;
  SSpindleProperty x298_camPosZOffset;
  SSpindleProperty x2b0_clampedAzimuthFromHintDir;
  SSpindleProperty x2c8_dampingAzimuthSpeed;
  SSpindleProperty x2e0_targetHintToCamDeltaAngleVelRange;
  SSpindleProperty x2f8_deleteHintBallDist;
  SSpindleProperty x310_recoverClampedAzimuthFromHintDir;
  float x328_maxAzimuthInterpTimer;
  bool x32c_24_outsideClampedAzimuth : 1;
  CVector3f x330_lookDir;
  bool x33c_24_inResetThink : 1;
};
CHECK_SIZEOF(CScriptSpindleCamera, 0x340)

#endif // _CSCRIPTSPINDLECAMERA
