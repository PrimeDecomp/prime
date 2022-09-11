#ifndef __CCONTROLLERBUTTON_HPP__
#define __CCONTROLLERBUTTON_HPP__

class CControllerButton {
public:
  CControllerButton() : x0_pressed(false), x1_pressEvent(false), x2_releaseEvent(false) {}
  void SetIsPressed(bool pressed) { x0_pressed = pressed; }
  bool GetIsPressed() const { return x0_pressed; }
  void SetPressEvent(bool press) { x1_pressEvent = press; }
  bool GetPressEvent() const { return x1_pressEvent; }
  void SetReleaseEvent(bool release) { x2_releaseEvent = release; };
  bool GetReleaseEvent() const { return x2_releaseEvent; }

private:
  bool x0_pressed;
  bool x1_pressEvent;
  bool x2_releaseEvent;
};

#endif // __CCONTROLLERBUTTON_HPP__
