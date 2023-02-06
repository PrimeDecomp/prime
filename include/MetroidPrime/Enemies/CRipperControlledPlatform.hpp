#ifndef _CRIPPERCONTROLLEDPLATFORM
#define _CRIPPERCONTROLLEDPLATFORM

#include "MetroidPrime/ScriptObjects/CScriptPlatform.hpp"

class CRipperControlledPlatform : public CScriptPlatform {

public:
  CRipperControlledPlatform(
      TUniqueId, TUniqueId, const rstl::string&, const CEntityInfo&, const CTransform4f&,
      const CAABox&, bool, const rstl::optional_object< TLockedToken< CCollidableOBBTreeGroupContainer > >&);
  ~CRipperControlledPlatform();

  CQuaternion Move(float, CStateManager&);

private:
  TUniqueId x358_owner;
  float x35c_yaw;
};

#endif // _CRIPPERCONTROLLEDPLATFORM
