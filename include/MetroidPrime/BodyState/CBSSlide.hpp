#ifndef _CBSSLIDE
#define _CBSSLIDE

#include "MetroidPrime/BodyState/CBodyState.hpp"

class CBSSlide : public CBodyState {
  pas::EAnimationState GetBodyStateTransition(float dt, CBodyController& bc);

public:
  CBSSlide();
  ~CBSSlide();
  
  bool ApplyHeadTracking() const override;
  bool IsMoving() const override;
  void Start(CBodyController& bc, CStateManager& mgr) override;
  pas::EAnimationState UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) override;
  void Shutdown(CBodyController&) override;

private:
  float x4_rotateSpeed;
};

#endif // _CBSSLIDE
