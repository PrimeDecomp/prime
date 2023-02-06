#ifndef _CFIRE
#define _CFIRE

#include "types.h"

#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CDamageInfo.hpp"

#include "Kyoto/Particles/CElementGen.hpp"
#include "Kyoto/Particles/CGenDescription.hpp"
#include "Kyoto/TToken.hpp"

class CFire : public CActor {
public:
  CFire(const TToken< CGenDescription >& effect, TUniqueId uid, TAreaId area, bool active,
        TUniqueId owner, const CTransform4f& xf, const CDamageInfo& dInfo, const CAABox& aabox,
        const CVector3f& vec, bool b1, CAssetId visorEffect, bool b2, bool b3, bool b4, float f1,
        float f2, float f3, float f4);

  // CEntity
  ~CFire();
  void Accept(IVisitor& visitor);
  void Think(float dt, CStateManager& mgr);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr);

  // CActor
  void Render(const CStateManager&) const;
  rstl::optional_object< CAABox > GetTouchBounds() const;
  void Touch(CActor&, CStateManager&);

private:
  rstl::single_ptr< CElementGen > xe8_;
  TUniqueId xec_owner;
  CDamageInfo xf0_damageInfo1;
  CDamageInfo x10c_damageInfo2;
  rstl::optional_object< CAABox > x128_;
  float x144_;
  bool x148_24_ : 1;
  bool x148_25_ : 1;
  bool x148_26_ : 1;
  bool x148_27_ : 1;
  bool x148_28_ : 1;
  bool x148_29_ : 1;
  float x14c_;
  CAssetId x150_;
  float x154_;
  float x158_;
  float x15c_;
};

#endif // _CFIRE
