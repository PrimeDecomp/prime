#ifndef _CSCRIPTDOCK
#define _CSCRIPTDOCK

#include "MetroidPrime/CPhysicsActor.hpp"

class CScriptDock : public CPhysicsActor {
public:
  void SetDockReference(CStateManager& mgr, int);
};

#endif // _CSCRIPTDOCK
