#include <MetroidPrime/Factories/CStateMachineFactory.hpp>
#include <MetroidPrime/Enemies/CStateMachine.hpp>

#include <Kyoto/Streams/CInputStream.hpp>

#pragma inline_max_size(250)
CFactoryFnReturn FAiFiniteStateMachineFactory(const SObjectTag& tag, CInputStream& in, const CVParamTransfer& xfer) {
  return rs_new CStateMachine(in);
}
