#ifndef _CBSSLIDE
#define _CBSSLIDE

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSSlide : public CBodyState {
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);

public:
  CBSSlide();
  ~CBSSlide();
  
  bool ApplyHeadTracking() const;
  bool IsMoving() const;
  void Start(CBodyController& bc, CStateManager& mgr);
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr);
  void Shutdown(CBodyController&);

private:
  float x4_rotateSpeed;
};

#endif // _CBSSLIDE
