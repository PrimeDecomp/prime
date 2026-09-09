#include "Kyoto/Animation/CPASDatabase.hpp"
#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "rstl/algorithm.hpp"

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

rstl::pair< float, int > CPASDatabase::FindBestAnimation(const CPASAnimParmData& data,
                                                         int ignoreAnim) const {
  AUTO(it, rstl::binary_find(x0_states.begin(), x0_states.end(), CPASAnimState(data.GetStateId())));
  if (it != x0_states.end()) {
    CRandom16 random(0x1234);
    return it->FindBestAnimation(data.GetAnimParmData(), random, ignoreAnim);
  }
  return rstl::pair< float, int >(0.f, -1);
}

rstl::pair< float, int > CPASDatabase::FindBestAnimation(const CPASAnimParmData& data,
                                                         CRandom16& random, int ignoreAnim) const {
  AUTO(it, rstl::binary_find(x0_states.begin(), x0_states.end(), CPASAnimState(data.GetStateId())));
  if (it != x0_states.end()) {
    return it->FindBestAnimation(data.GetAnimParmData(), random, ignoreAnim);
  }
  return rstl::pair< float, int >(0.f, -1);
}

size_t CPASDatabase::GetNumAnimStates() const { return x0_states.size(); }

bool CPASDatabase::HasState(int id) const {
  AUTO(it, rstl::binary_find(x0_states.begin(), x0_states.end(), CPASAnimState(id)));
  return it != x0_states.end();
}

const CPASAnimState* CPASDatabase::GetAnimState(int id) const {
  return rstl::binary_find(x0_states.begin(), x0_states.end(), CPASAnimState(id)).get_pointer();
}

const CPASAnimState* CPASDatabase::GetAnimStateByIndex(int index) const {
  return &x0_states[index];
}

void CPASDatabase::SetDefaultState(int state) { x10_defaultState = state; }

void CPASDatabase::AddAnimState(const CPASAnimState& state) {
  const rstl::vector< CPASAnimState >::iterator it =
      rstl::lower_bound(x0_states.begin(), x0_states.end(), state);
  x0_states.insert(it, state);
}
