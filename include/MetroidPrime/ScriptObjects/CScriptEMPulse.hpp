#ifndef _CSCRIPTEMPULSE
#define _CSCRIPTEMPULSE

#include "MetroidPrime/CActor.hpp"

class CGenDescription;
class CElementGen;

class CScriptEMPulse : public CActor {
public:
  CScriptEMPulse(TUniqueId, const rstl::string&, const CEntityInfo&, const CTransform4f&, bool,
                 float, float, float, float, float, float, float, CAssetId);

  void Accept(IVisitor&);
  void Think(float, CStateManager&);
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  void CalculateRenderBounds();
  rstl::optional_object< CAABox > GetTouchBounds() const;
  void Touch(CActor&, CStateManager&);

private:
  float xe8_duration;
  float xec_finalRadius;
  float xf0_currentRadius;
  float xf4_initialRadius;
  float xf8_interferenceDur;
  float xfc_;
  float x100_interferenceMag;
  float x104_;
  TLockedToken< CGenDescription > x108_particleDesc;
  rstl::single_ptr< CElementGen > x114_particleGen;

  CAABox CalculateBoundingBox() const;
};

#endif // _CSCRIPTEMPULSE
