#ifndef _CGSFIDGET
#define _CGSFIDGET

#include "rstl/vector.hpp"

class CAnimData;
class CStateManager;
class CToken;

class CGSFidget {
public:
  CGSFidget();
  
  bool Update(CAnimData& data, float dt, CStateManager& mgr);
  int SetAnim(CAnimData& data, int type, int gunId, int animSet, CStateManager& mgr);
  void LoadAnimAsync(CAnimData& data, int type, int gunId, int animSet, CStateManager& mgr);
  void UnLoadAnim();
  bool IsAnimLoaded() const;

private:
  rstl::vector< CToken > x0_anims;
  int x10_;
  int x14_gunId;
  int x18_animSet;
};

#endif // _CGSFIDGET
