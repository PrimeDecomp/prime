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
  int availSlot = 0;
  if (!x0_context->Update()) {
    return false;
  }

  bool firstController = false;
  if (!x4_controller.null()) {
    const int count = x4_controller->GetDeviceCount();
    x4_controller->Poll();
    for (int i = 0; i < count; ++i) {
      const CControllerGamepadData& cont = x4_controller->GetGamepadData(i);
      if (cont.DeviceIsPresent()) {
        if (i == 0) {
          firstController = true;
        }
        {
          const CFinalInput input(i, dt, cont, xc_leftDiv, x10_rightDiv);
          const CArchitectureMessage msg = MakeMsg::CreateUserInput(kAMT_Game, input);
          queue.Push(msg);
        }
        availSlot++;
      }

      const bool connected = cont.DeviceIsPresent();
      if (x8_connectedControllers[i] != connected) {
        const CArchitectureMessage msg = MakeMsg::CreateControllerStatus(kAMT_Game, i, connected);
        queue.Push(msg);
        x8_connectedControllers[i] = connected;
      }
    }
  }

  if (!firstController) {
    const CArchitectureMessage msg = MakeMsg::CreateUserInput(kAMT_Game, CFinalInput(0, dt, *x0_context));
    queue.Push(msg);
  } else {
    const CArchitectureMessage msg =
        MakeMsg::CreateUserInput(kAMT_Game, CFinalInput(availSlot, dt, *x0_context));
    queue.Push(msg);
  }
  return true;
}
