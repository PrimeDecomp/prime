#ifndef _CSTATEMACHINEFACTORY
#define _CSTATEMACHINEFACTORY

#include <Kyoto/CFactoryMgr.hpp>

CFactoryFnReturn FAiFiniteStateMachineFactory(const SObjectTag& tag, CInputStream& in,
                                              const CVParamTransfer& xfer);

#endif // _CSTATEMACHINEFACTORY
