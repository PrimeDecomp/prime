#ifndef _CCONTROLLERBUTTON
#define _CCONTROLLERBUTTON

class CControllerButton {
public:
  CControllerButton() : x0_pressed(false), x1_pressEvent(false), x2_releaseEvent(false) {}
  void SetIsPressed(bool pressed) { x0_pressed = pressed; }
  uint GetIsPressed() const { return x0_pressed; }
  void SetPressEvent(bool press) { x1_pressEvent = press; }
  uint GetPressEvent() const { return x1_pressEvent; }
  void SetReleaseEvent(bool release) { x2_releaseEvent = release; };
  uint GetReleaseEvent() const { return x2_releaseEvent; }

private:
  uchar x0_pressed;
  uchar x1_pressEvent;
  uchar x2_releaseEvent;
};

#endif // _CCONTROLLERBUTTON
