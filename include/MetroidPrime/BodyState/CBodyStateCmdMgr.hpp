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

class CBCSlideCmd : public CBodyStateCmd {

public:
  explicit CBCSlideCmd() : CBodyStateCmd(kBSC_Slide), x8_type(pas::kSlide_Invalid), xc_dir(CVector3f::Zero()) {}
  explicit CBCSlideCmd(pas::ESlideType type, const CVector3f& dir)
  : CBodyStateCmd(kBSC_Slide), x8_type(type), xc_dir(dir) {}

  pas::ESlideType GetSlideType() const { return x8_type; }
  const CVector3f& GetSlideDirection() const { return xc_dir; }

private:
  pas::ESlideType x8_type;
  CVector3f xc_dir;
};

//

class CBodyStateCmdMgr {
public:
  CBodyStateCmd* GetCmd(EBodyStateCmd cmd);

private:
  uchar x0_pad[0x2a0];
};

#endif // _CBODYSTATECMDMGR
