#include "MetroidPrime/CInputGenerator.hpp"

#include "MetroidPrime/CArchitectureQueue.hpp"
#include "MetroidPrime/Decode.hpp"

#include "Kyoto/Basics/COsContext.hpp"
CInputGenerator::CInputGenerator(COsContext* ctx, float leftDiv, float rightDiv)
: x0_context(ctx)
, x4_controller(IController::Create(*ctx))
, xc_leftDiv(leftDiv)
, x10_rightDiv(rightDiv) {
  for (uint i = 0; i <= kIOP_Player4; ++i) {
    x8_connectedControllers[i] = false;
  }
}
bool CInputGenerator::Update(float dt, CArchitectureQueue& queue) {
  bool ret;
  if (!x0_context->Update()) {
    ret = false;
  } else {
    int availSlot = 0;
    bool firstController = false;
    if (!x4_controller.null()) {
      x4_controller->Poll();
      for (int i = 0; i < x4_controller->GetDeviceCount(); ++i) {
        if (i == 0) {
          firstController = true;
        }

        CControllerGamepadData cont = x4_controller->GetGamepadData(i);
        if (cont.DeviceIsPresent()) {
          queue.Push(MakeMsg::CreateUserInput(kAMT_Game,
                                              CFinalInput(i, dt, cont, xc_leftDiv, x10_rightDiv)));
          ++availSlot;
        }

        if (x8_connectedControllers[i] != cont.DeviceIsPresent()) {
          queue.Push(MakeMsg::CreateControllerStatus(kAMT_Game, i, cont.DeviceIsPresent()));
          x8_connectedControllers[i] = cont.DeviceIsPresent();
        }
      }
    }

    if (firstController) {
      queue.Push(MakeMsg::CreateUserInput(kAMT_Game, CFinalInput(availSlot, dt, *x0_context)));
    } else {
      queue.Push(MakeMsg::CreateUserInput(kAMT_Game, CFinalInput(0, dt, *x0_context)));
    }
    ret = true;
  }
  return ret;
}
