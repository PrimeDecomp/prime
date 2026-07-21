#ifndef _CCONTROLLERBUTTON
#define _CCONTROLLERBUTTON

class CControllerButton {
public:
  CControllerButton() : x0_pressed(false), x1_pressEvent(false), x2_releaseEvent(false) {}
  void SetIsPressed(const bool pressed) { x0_pressed = pressed; }
  const bool GetIsPressed() const { return x0_pressed; }
  void SetPressEvent(const bool press) { x1_pressEvent = press; }
  const bool GetPressEvent() const { return x1_pressEvent; }
  void SetReleaseEvent(const bool release) { x2_releaseEvent = release; };
  const bool GetReleaseEvent() const { return x2_releaseEvent; }

private:
  bool x0_pressed;
  bool x1_pressEvent;
  bool x2_releaseEvent;
};

#endif // _CCONTROLLERBUTTON
