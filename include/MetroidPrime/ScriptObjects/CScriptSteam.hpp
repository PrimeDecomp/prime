#ifndef _CSCRIPTSTEAM
#define _CSCRIPTSTEAM

#include "MetroidPrime/ScriptObjects/CScriptTrigger.hpp"

class CScriptSteam : public CScriptTrigger {
  bool x150_;
  CAssetId x154_texture;
  float x158_;
  float x15c_alphaInDur;
  float x160_alphaOutDur;
  float x164_;
  float x168_;

public:
  CScriptSteam(TUniqueId, const rstl::string& name, const CEntityInfo& info, const CVector3f& pos,
               const CAABox&, const CDamageInfo& dInfo, const CVector3f& orientedForce,
               unsigned int flags, bool active, CAssetId, float, float, float, float, bool);
  ~CScriptSteam();

  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  void Think(float, CStateManager&);
  void Accept(IVisitor&);
};

#endif // _CSCRIPTSTEAM
