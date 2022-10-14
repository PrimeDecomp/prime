#ifndef _CBODYCONTROLLER
#define _CBODYCONTROLLER

#include "MetroidPrime/BodyState/CBodyStateCmdMgr.hpp"

class CActor;
class CPASDatabase;

class CBodyController {
  CActor& x0_actor;
  CBodyStateCmdMgr x4_cmdMgr;

public:
  const CPASDatabase& GetPASDatabase() const;
  
  CActor& GetOwner() const { return x0_actor; }
  CBodyStateCmdMgr& CommandMgr() { return x4_cmdMgr; }
};

#endif // _CBODYCONTROLLER
