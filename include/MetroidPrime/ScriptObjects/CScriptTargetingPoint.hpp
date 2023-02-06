#ifndef _CSCRIPTTARGETINGPOINT
#define _CSCRIPTTARGETINGPOINT

#include "MetroidPrime/CActor.hpp"

#include "Kyoto/Math/CTransform4f.hpp"

class CScriptTargetingPoint : public CActor {
  bool xe8_e4_ : 1;
  TUniqueId xea_;
  float xec_time;

public:
  CScriptTargetingPoint(TUniqueId, const rstl::string&, const CEntityInfo&, const CTransform4f&,
                        bool);
  ~CScriptTargetingPoint();

  void Accept(IVisitor& visitor);
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  
  bool GetLocked() const;
  void Think(float, CStateManager&);
  
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  void Render(const CStateManager&) const;

};

#endif // _CSCRIPTTARGETINGPOINT
