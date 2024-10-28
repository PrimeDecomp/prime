#ifndef _CSTATEMACHINEFACTORY
#define _CSTATEMACHINEFACTORY

#include <Kyoto/CFactoryFnReturn.hpp>

CFactoryFnReturn FAiFiniteStateMachineFactory(const SObjectTag& tag, CInputStream& in,
                                              const CVParamTransfer& xfer);

#endif // _CSTATEMACHINEFACTORY
