#ifndef _CSCRIPTDISTANCEFOG
#define _CSCRIPTDISTANCEFOG

#include "MetroidPrime/CEntity.hpp"

#include "MetroidPrime/CAreaFog.hpp"

class CScriptDistanceFog : public CEntity {
  ERglFogMode x34_mode;
  CColor x38_color;
  CVector2f x3c_range;
  float x44_colorDelta;
  CVector2f x48_rangeDelta;
  float x50_thermalTarget;
  float x54_thermalSpeed;
  float x58_xrayTarget;
  float x5c_xraySpeed;
  bool x60_explicit;
  bool x61_nonZero;

public:
  CScriptDistanceFog(TUniqueId, const rstl::string&, const CEntityInfo&, ERglFogMode, const CColor&,
                     const CVector2f&, float, const CVector2f&, bool, bool, float, float, float,
                     float);
  ~CScriptDistanceFog();

  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId, CStateManager& stateMgr) override;
};

#endif // _CSCRIPTDISTANCEFOG
