#include "MetroidPrime/Enemies/CStateMachine.hpp"

#include "MetroidPrime/Enemies/CAi.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

void CStateMachineState::Update(CStateManager& mgr, CAi& ai, float delta) {
  if (x4_state) {
    x8_time += delta;
    x4_state->CallFunc(mgr, ai, kStateMsg_Update, delta);
    for (int i = 0; i < x4_state->GetNumTriggers(); ++i) {
      CAiTrigger* trig = x4_state->GetTrig(i);
      CAiState* state = nullptr;
      bool andPassed = true;
      while (andPassed && trig) {
        andPassed = false;
        if (trig->CallFunc(mgr, ai)) {
          andPassed = true;
          state = trig->GetState();
          trig = trig->GetAnd();
        }
      }

      if (andPassed && state != nullptr) {
        x4_state->CallFunc(mgr, ai, kStateMsg_Deactivate, 0.f);
        x4_state = state;
        x8_time = 0.f;
        x18_24_codeTrigger = false;
        xc_random = mgr.Random()->Float();
        x4_state->CallFunc(mgr, ai, kStateMsg_Activate, 0.f);
        return;
      }
    }
  }
}

void CStateMachineState::SetState(CStateManager& mgr, CAi& ai, int idx) {
  const CAiState* state = &x0_machine->GetStateVector()[idx];
  if (x4_state == state) {
    return;
  }
  if (x4_state) {
    x4_state->CallFunc(mgr, ai, kStateMsg_Deactivate, 0.f);
  }

  x4_state = const_cast< CAiState* >(state);
  x8_time = 0.f;
  xc_random = mgr.Random()->Float();
  x18_24_codeTrigger = false;
  x4_state->CallFunc(mgr, ai, kStateMsg_Activate, 0.f);
}

void CStateMachineState::SetState(CStateManager& mgr, CAi& ai, const CStateMachine* machine,
                                  const rstl::string& state) {
  if (!machine)
    return;

  if (!x0_machine)
    Setup(machine);

  s32 idx = machine->GetStateIndex(state);
  SetState(mgr, ai, idx);
}

CStateMachineState::CStateMachineState()
: x0_machine(nullptr)
, x4_state(nullptr)
, x8_time(0.f)
, xc_random(0.f)
, x10_delay(0.f)
, x18_24_codeTrigger(false) {}

void CStateMachineState::Setup(const CStateMachine* machine) {
  x0_machine = machine;
  x4_state = nullptr;
  x8_time = 0.f;
  xc_random = 0.f;
  x10_delay = 0.f;
}

const char* CStateMachineState::GetName() const {
  if (x4_state != nullptr) {
    return x4_state->GetName();
  }

  return nullptr;
}

CStateMachine::CStateMachine(CInputStream& in) {
  CAiTrigger* lastTrig = nullptr;
  int stateCount = in.ReadLong();

  x0_states.reserve(stateCount);

  for (int i = 0; i < stateCount; ++i) {
    char name[32];
    int nameLen = 0;
    for (; nameLen < 31; ++nameLen) {
      name[nameLen] = in.Get< char >();
      if (name[nameLen] == '\0') {
        break;
      }
    }
    name[nameLen] = '\0';
    CAiStateFunc func = CAi::GetStateFunc(name);
    x0_states.push_back(CAiState(func, name));
  }

  x10_triggers.reserve(in.Get< int >());

  for (int i = 0; i < stateCount; ++i) {
    x0_states[i].SetNumTriggers(in.Get< int >());

    if (x0_states[i].GetNumTriggers() == 0) {
      continue;
    }

    for (uint i = 0; i < x0_states[i].GetNumTriggers(); ++i) {
      x10_triggers.push_back(CAiTrigger());
    }
    
    CAiTrigger* firstTrig = x10_triggers.data() + x10_triggers.size();
    x0_states[i].SetTriggers(firstTrig);

    for (int j = 0; j < x0_states[i].GetNumTriggers(); ++j) {
      const int triggerCount = in.Get< int >();
      const int lastTriggerIdx = triggerCount - 1;

      for (int k = 0; k < triggerCount; ++k) {
        char name[32];
        int nameLen = 0;
        for (; nameLen < 31; ++nameLen) {
          name[nameLen] = in.Get< char >();

          if (name[nameLen] == '\0') {
            break;
          }
        }

        name[nameLen] = '\0';

        const CAiTriggerFunc func = CAi::GetTriggerFunc(name[0] == '!' ? name + 1 : name);
        const float arg = in.Get< float >();
        const bool isNot = name[0] == '!';
        CAiTrigger* newTrig;
        if (k < lastTriggerIdx) {
          x10_triggers.push_back(CAiTrigger());
          newTrig = &x10_triggers.back();
        } else {
          newTrig = x0_states[i].GetTrig(j);
        }
        if (k == 0) {
          newTrig->Setup(func, isNot, arg, &x0_states[in.Get< int >()]);
        } else {
          newTrig->Setup(func, isNot, arg, lastTrig);
        }
        lastTrig = newTrig;
      }
    }
  }
}

int CStateMachine::GetStateIndex(const rstl::string& state) const {
  for (int i = 0; i < x0_states.size(); ++i) {
    if (strncmp(x0_states[i].GetName(), state.data(), 31) == 0) {
      return i;
    }
  }

  return 0;
}
