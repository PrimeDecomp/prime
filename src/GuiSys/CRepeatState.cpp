#include "GuiSys/CGuiTableGroup.hpp"

CGuiTableGroup::CRepeatState::CRepeatState() : x0_timer(0.f) {}

uchar CGuiTableGroup::CRepeatState::Update(float dt, bool state) {
  bool ret = false;
  if (x0_timer == 0.f) {
    if (state) {
      x0_timer = 0.6f;
      ret = true;
    }
  } else {
    if (state) {
      x0_timer -= dt;
      if (x0_timer <= 0.f) {
        x0_timer = 0.05f;
        ret = true;
      }
    } else {
      x0_timer = 0.f;
    }
  }
  return ret;
}
