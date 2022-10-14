#ifndef _CBODYCONTROLLER
#define _CBODYCONTROLLER

#include "MetroidPrime/BodyState/CBodyStateCmdMgr.hpp"

class CActor;

class CBodyController {
  CActor& x0_actor;
  CBodyStateCmdMgr x4_cmdMgr;

public:
  CBodyStateCmdMgr& CommandMgr() { return x4_cmdMgr; }
};

#endif // _CBODYCONTROLLER
