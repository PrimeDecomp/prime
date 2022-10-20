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
  rstl::vector< CRipple >::iterator oldestRipple = x4_ripples.end();

  for (rstl::vector< CRipple >::iterator it = x4_ripples.begin(); it != x4_ripples.end(); ++it) {
    if (it->GetTime() == 9999.0f) {
      oldestRipple = it;
      break;
    }

    if (it->GetTime() > maxTime) {
      oldestRipple = it;
      maxTime = it->GetTime();
    }
  }

  if (oldestRipple != x4_ripples.end()) {
    *oldestRipple = ripple;
    oldestRipple->SetTime(0.f);
    SetMaxTimeFalloff(rstl::max_val(GetMaxTimeFalloff(), ripple.GetTimeFalloff()));
  }
}
