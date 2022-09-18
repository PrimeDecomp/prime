#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Basics/COsContext.hpp"
#include "Kyoto/Input/CDolphinController.hpp"
#include "Kyoto/Input/IController.hpp"

const float IController::kAbsoluteMinimum = -1.f;
const float IController::kAbsoluteMaximum = 1.f;
const float IController::kRelativeMinimum = -1.f;
const float IController::kRelativeMaximum = 1.f;

IController::IController() {}
IController::~IController() {}

IController* IController::Create(const COsContext& ctx) {
  CDolphinController* cont = new CDolphinController();
  cont->Initialize();
  return cont;
}
