#include "MetroidPrime/CRippleManager.hpp"

#include "MetroidPrime/CRipple.hpp"

#include "rstl/math.hpp"

CRippleManager::CRippleManager(int maxRipples, float alpha)
: x0_maxTimeFalloff(0.f), x14_alpha(alpha) {
  Init(maxRipples);
}

void CRippleManager::Init(int maxRipples) {
  x4_ripples.resize(maxRipples, CRipple(kInvalidUniqueId, CVector3f::Zero(), 0.f));
  for (rstl::vector< CRipple >::iterator it = x4_ripples.begin(); it != x4_ripples.end(); ++it) {
    it->SetTime(9999.f);
  }
}

void CRippleManager::Update(float dt) {
  for (rstl::vector< CRipple >::iterator it = x4_ripples.begin(); it != x4_ripples.end(); ++it) {
    it->SetTime(it->GetTime() + dt);
    if (it->GetTime() < 9999.f) {
      it->SetTime(9999.f);
    }
  }
}

float CRippleManager::GetLastRippleDeltaTime(TUniqueId rippler) const {
  float res = 9999.f;

  for (rstl::vector< CRipple >::const_iterator it = x4_ripples.begin(); it != x4_ripples.end();
       ++it) {
    if (rippler == it->GetUniqueId()) {
      if (res > it->GetTime()) {
        res = it->GetTime();
      }
    }
  }

  return res;
}

void CRippleManager::AddRipple(const CRipple& ripple) {
  float maxTime = 0.f;
  float itTime;
  rstl::vector< CRipple >::iterator t;
  rstl::vector< CRipple >::iterator oldestRipple = x4_ripples.end();
  rstl::vector< CRipple >::iterator it = x4_ripples.begin();

  for (; (t = oldestRipple,
         it != x4_ripples.end() && (itTime = it->GetTime(), t = it, itTime != 9999.0f));
       ++it) {
    if (itTime > maxTime) {
      oldestRipple = it;
      maxTime = itTime;
    }
  }

  if (t != x4_ripples.end()) {
    *t = ripple;
    x0_maxTimeFalloff = rstl::max_val(x0_maxTimeFalloff, ripple.GetTimeFalloff());
  }
}
