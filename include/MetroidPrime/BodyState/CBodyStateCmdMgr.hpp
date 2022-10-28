#ifndef _CBODYSTATECMDMGR
#define _CBODYSTATECMDMGR

#include "Kyoto/Animation/CharacterCommon.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CBodyStateCmd {
  EBodyStateCmd x4_cmd;

public:
  virtual ~CBodyStateCmd(){};
  explicit CBodyStateCmd(EBodyStateCmd cmd) : x4_cmd(cmd) {}
  EBodyStateCmd GetCommandId() const { return x4_cmd; }
};

class CBCAdditiveFlinchCmd : public CBodyStateCmd {
  float x8_weight;

public:
  float GetWeight() const { return x8_weight; }
};

class CBCGenerateCmd : public CBodyStateCmd {
  pas::EGenerateType x8_type;
  CVector3f xc_targetPos;
  int x18_animId;
  bool x1c_24_targetTransform : 1;
  bool x1c_25_overrideAnim : 1;

public:
  explicit CBCGenerateCmd() : CBodyStateCmd(kBSC_Generate), xc_targetPos(0.f, 0.f, 0.f) {}

  explicit CBCGenerateCmd(pas::EGenerateType type)
  : CBodyStateCmd(kBSC_Generate), x8_type(type), xc_targetPos(0.f, 0.f, 0.f) {}

  explicit CBCGenerateCmd(pas::EGenerateType type, int animId)
  : CBodyStateCmd(kBSC_Generate)
  , x8_type(type)
  , xc_targetPos(0.f, 0.f, 0.f)
  , x18_animId(animId)
  , x1c_25_overrideAnim(animId != -1) {}

  explicit CBCGenerateCmd(pas::EGenerateType type, const CVector3f& vec,
                          bool targetTransform = false, bool overrideAnim = false)
  : CBodyStateCmd(kBSC_Generate)
  , x8_type(type)
  , xc_targetPos(vec)
  , x1c_24_targetTransform(targetTransform)
  , x1c_25_overrideAnim(overrideAnim) {}

  pas::EGenerateType GetGenerateType() const { return x8_type; }
  const CVector3f& GetExitTargetPos() const { return xc_targetPos; }
  bool HasExitTargetPos() const { return x1c_24_targetTransform; }
  int GetSpecialAnimId() const { return x18_animId; }
  bool UseSpecialAnimId() const { return x1c_25_overrideAnim; }
};

//

class CBCScriptedCmd : public CBodyStateCmd {
  s32 x8_anim;
  bool xc_24_loopAnim : 1;
  bool xc_25_timedLoop : 1;
  float x10_loopDur;

public:
  explicit CBCScriptedCmd()
  : CBodyStateCmd(kBSC_Scripted)
  , x8_anim(-1)
  , xc_24_loopAnim(false)
  , xc_25_timedLoop(false)
  , x10_loopDur(0.f) {}

  explicit CBCScriptedCmd(int i, bool b1, bool b2, float f)
  : CBodyStateCmd(kBSC_Scripted)
  , x8_anim(i)
  , xc_24_loopAnim(b1)
  , xc_25_timedLoop(b2)
  , x10_loopDur(f) {}

  int GetAnimId() const { return x8_anim; }
  bool IsLooped() const { return xc_24_loopAnim; }
  bool GetUseLoopDuration() const { return xc_25_timedLoop; }
  float GetLoopDuration() const { return x10_loopDur; }
};

//

class CBCStepCmd : public CBodyStateCmd {
public:
  explicit CBCStepCmd()
  : CBodyStateCmd(kBSC_Step), x8_dir(pas::kSD_Invalid), xc_type(pas::kStep_Normal) {}

  explicit CBCStepCmd(pas::EStepDirection dir, pas::EStepType type)
  : CBodyStateCmd(kBSC_Step), x8_dir(dir), xc_type(type) {}

  pas::EStepDirection GetStepDirection() const { return x8_dir; }
  pas::EStepType GetStepType() const { return xc_type; }

private:
  pas::EStepDirection x8_dir;
  pas::EStepType xc_type;
};

//

class CBCTauntCmd : public CBodyStateCmd {
public:
  explicit CBCTauntCmd() : CBodyStateCmd(kBSC_Taunt), x8_type(pas::kTT_Invalid) {}
  explicit CBCTauntCmd(pas::ETauntType type) : CBodyStateCmd(kBSC_Taunt), x8_type(type) {}
  pas::ETauntType GetTauntType() const { return x8_type; }

private:
  pas::ETauntType x8_type;
};

//

class CBCGetupCmd : public CBodyStateCmd {
public:
  explicit CBCGetupCmd() : CBodyStateCmd(kBSC_Getup), x8_type(pas::kGetup_Invalid) {}
  explicit CBCGetupCmd(pas::EGetupType type) : CBodyStateCmd(kBSC_Getup), x8_type(type) {}
  pas::EGetupType GetGetupType() const { return x8_type; }

private:
  pas::EGetupType x8_type;
};

//

class CBCAdditiveReactionCmd : public CBodyStateCmd {
public:
  explicit CBCAdditiveReactionCmd()
  : CBodyStateCmd(kBSC_AdditiveReaction)
  , x8_weight(1.f)
  , xc_type(pas::kART_Invalid)
  , x10_active(false) {}

  explicit CBCAdditiveReactionCmd(pas::EAdditiveReactionType type, float weight, bool active)
  : CBodyStateCmd(kBSC_AdditiveReaction), x8_weight(weight), xc_type(type), x10_active(active) {}

  pas::EAdditiveReactionType GetType() const { return xc_type; }
  float GetWeight() const { return x8_weight; }
  bool GetIsActive() const { return x10_active; }

private:
  float x8_weight;
  pas::EAdditiveReactionType xc_type;
  bool x10_active;
};

//

class CBCSlideCmd : public CBodyStateCmd {
public:
  explicit CBCSlideCmd()
  : CBodyStateCmd(kBSC_Slide), x8_type(pas::kSlide_Invalid), xc_dir(CVector3f::Zero()) {}
  explicit CBCSlideCmd(pas::ESlideType type, const CVector3f& dir)
  : CBodyStateCmd(kBSC_Slide), x8_type(type), xc_dir(dir) {}

  pas::ESlideType GetSlideType() const { return x8_type; }
  const CVector3f& GetSlideDirection() const { return xc_dir; }

private:
  pas::ESlideType x8_type;
  CVector3f xc_dir;
};

//

class CBCKnockDownCmd : public CBodyStateCmd {
public:
  explicit CBCKnockDownCmd()
  : CBodyStateCmd(kBSC_KnockDown), x8_dir(0.f, 0.f, 0.f), x14_severity(pas::kS_Invalid) {}

  explicit CBCKnockDownCmd(const CVector3f& vec, pas::ESeverity severity)
  : CBodyStateCmd(kBSC_KnockDown), x8_dir(vec), x14_severity(severity) {}

  const CVector3f& GetHitDirection() const { return x8_dir; }
  pas::ESeverity GetHitSeverity() const { return x14_severity; }

private:
  CVector3f x8_dir;
  pas::ESeverity x14_severity;
};

//

class CBCKnockBackCmd : public CBodyStateCmd {
public:
  explicit CBCKnockBackCmd()
  : CBodyStateCmd(kBSC_KnockBack), x8_dir(0.f, 0.f, 0.f), x14_severity(pas::kS_Invalid) {}
  
  explicit CBCKnockBackCmd(const CVector3f& vec, pas::ESeverity severity)
  : CBodyStateCmd(kBSC_KnockBack), x8_dir(vec), x14_severity(severity) {}

  const CVector3f& GetHitDirection() const { return x8_dir; }
  pas::ESeverity GetHitSeverity() const { return x14_severity; }

private:
  CVector3f x8_dir;
  pas::ESeverity x14_severity;
};

//

class CBodyStateCmdMgr {
public:
  CBodyStateCmd* GetCmd(EBodyStateCmd cmd);
  const CVector3f& GetTargetVector() const { return x18_target; }

private:
  CVector3f x0_move;
  CVector3f xc_face;
  CVector3f x18_target;
  CVector3f x24_additiveTarget;
  uchar x30_pad[0x270];
};

#endif // _CBODYSTATECMDMGR
