#include "Kyoto/Animation/CPASDatabase.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "rstl/algorithm.hpp"

#pragma inline_max_size(100)
CPASDatabase::CPASDatabase(CInputStream& in) : x10_defaultState(-1) {

  in.Get< int >();

  const uint stateCount = in.Get< uint >();
  x0_states.reserve(stateCount);
  const int defaultState = in.Get< int >();
  for (int i = 0; i < stateCount; i++) {
    AddAnimState(CPASAnimState(in));
  }

  if (stateCount != 0) {
    SetDefaultState(defaultState);
  }
}

const CPASAnimState* CPASDatabase::GetAnimStateByIndex(int index) const { return &x0_states[index]; }
void CPASDatabase::SetDefaultState(int state) { x10_defaultState = state; }
void CPASDatabase::AddAnimState(const CPASAnimState& state) {
  const rstl::vector< CPASAnimState >::iterator it =
      rstl::binary_find< rstl::vector< CPASAnimState > >(x0_states.begin(), x0_states.end(), state);
  x0_states.insert(it, state);
}