#include <MetroidPrime/Enemies/CStateMachine.hpp>
#include <MetroidPrime/Factories/CStateMachineFactory.hpp>

#include <Kyoto/Streams/CInputStream.hpp>

const CFactoryFnReturn FAiFiniteStateMachineFactory(const SObjectTag& tag, CInputStream& in,
                                              const CVParamTransfer& xfer) {
  return rs_new CStateMachine(in);
}
