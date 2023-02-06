#ifndef _CSCRIPTSPIDERBALLATTRACTIONSURFACE
#define _CSCRIPTSPIDERBALLATTRACTIONSURFACE

#include "MetroidPrime/CActor.hpp"

class CScriptSpiderBallAttractionSurface : public CActor {
  CVector3f xe8_scale;
  CAABox xf4_aabb;

public:
  CScriptSpiderBallAttractionSurface(TUniqueId uid, const rstl::string& name,
                                     const CEntityInfo& info, const CTransform4f& xf,
                                     const CVector3f& scale, bool active);
  ~CScriptSpiderBallAttractionSurface();
  
  void Accept(IVisitor& visitor);
  void Think(float dt, CStateManager& mgr);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr);
  rstl::optional_object< CAABox > GetTouchBounds() const;
  void Touch(CActor& actor, CStateManager& mgr);
  const CVector3f& GetScale() const { return xe8_scale; }
};

#endif // _CSCRIPTSPIDERBALLATTRACTIONSURFACE
