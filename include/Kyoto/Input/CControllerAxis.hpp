#ifndef _CCONTROLLERAXIS
#define _CCONTROLLERAXIS

class CControllerAxis {
public:
  CControllerAxis() : x0_relative(0.f), x4_absolute(0.f) {}
  void SetRelativeValue(float val) { x0_relative = val; }
  float GetRelativeValue() const { return x0_relative; }
  void SetAbsoluteValue(float val) { x4_absolute = val; }
  float GetAbsoluteValue() const { return x4_absolute; }

public:
  float x0_relative;
  float x4_absolute;
};

#endif // _CCONTROLLERAXIS
