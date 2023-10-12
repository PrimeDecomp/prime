#include "MetroidPrime/Decode.hpp"
#include "Kyoto/Alloc/CMemory.hpp"

const CArchMsgParmNull& MakeMsg::GetParmDeleteIOWin(const CArchitectureMessage& msg) {
  return *static_cast< const CArchMsgParmNull* >(msg.GetParm());
}

CArchitectureMessage MakeMsg::CreateCreateIOWin(EArchMsgTarget target, const int& pmin,
                                                const int& pmax, CIOWin* const& iowin) {
  return CArchitectureMessage(
      target, kAM_CreateIOWin,
      rs_new CArchMsgParmInt32Int32VoidPtr(pmin, pmax, reinterpret_cast< const void* >(iowin)));
}

const CArchMsgParmInt32Int32VoidPtr& MakeMsg::GetParmCreateIOWin(const CArchitectureMessage& msg) {
  return *static_cast< const CArchMsgParmInt32Int32VoidPtr* >(msg.GetParm());
}

const CArchMsgParmInt32Int32VoidPtr&
MakeMsg::GetParmChangeIOWinPriority(const CArchitectureMessage& msg) {
  return *static_cast< const CArchMsgParmInt32Int32VoidPtr* >(msg.GetParm());
}

CArchitectureMessage MakeMsg::CreateTimerTick(EArchMsgTarget target, const float& val) {
  return CArchitectureMessage(target, kAM_TimerTick, rs_new CArchMsgParmReal32(val));
}

const CArchMsgParmReal32& MakeMsg::GetParmTimerTick(const CArchitectureMessage& msg) {
  return *static_cast< const CArchMsgParmReal32* >(msg.GetParm());
}

CArchitectureMessage MakeMsg::CreateUserInput(EArchMsgTarget target, const CFinalInput& input) {
  return CArchitectureMessage(target, kAM_UserInput, rs_new CArchMsgParmUserInput(input));
}

const CArchMsgParmUserInput& MakeMsg::GetParmUserInput(const CArchitectureMessage& msg) {
  return *static_cast< const CArchMsgParmUserInput* >(msg.GetParm());
}

const CArchMsgParmInt32& MakeMsg::GetParmNewGameflowState(const CArchitectureMessage& msg) {
  return *static_cast< const CArchMsgParmInt32* >(msg.GetParm());
}

CArchitectureMessage MakeMsg::CreateControllerStatus(EArchMsgTarget target, const short& chan,
                                                     const bool& connected) {
  return CArchitectureMessage(target, kAM_ControllerStatus,
                              rs_new CArchMsgParmControllerStatus(chan, connected));
}

CArchitectureMessage MakeMsg::CreateQuitGameplay(EArchMsgTarget target) {
  return CArchitectureMessage(target, kAM_QuitGameplay, new("??(??)", nullptr) CArchMsgParmNull());
}

CArchitectureMessage MakeMsg::CreateFrameBegin(EArchMsgTarget target, const int& a) {
  return CArchitectureMessage(target, kAM_FrameBegin, new("??(??)", nullptr) CArchMsgParmInt32(a));
}

const CArchMsgParmInt32& MakeMsg::GetParmFrameBegin(const CArchitectureMessage& msg) {
  return *static_cast< const CArchMsgParmInt32* >(msg.GetParm());
}

CArchitectureMessage MakeMsg::CreateFrameEnd(EArchMsgTarget target, const int& a) {
  return CArchitectureMessage(target, kAM_FrameEnd, new("??(??)", nullptr) CArchMsgParmInt32(a));
}
