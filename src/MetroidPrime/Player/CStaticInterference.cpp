#include "MetroidPrime/Player/CStaticInterference.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "rstl/math.hpp"

CStaticInterference::CStaticInterference(int sourceCount) { sources.reserve(sourceCount); }

void CStaticInterference::AddSource(TUniqueId id, float magnitude, float duration) {
  float clampedMagnitude = CMath::Clamp(0.f, magnitude, 1.f);

  rstl::vector< CStaticInterferenceSource >::iterator search = sources.begin();
  for (; search != sources.end(); ++search) {
    if (search->x0_id == id) {
      break;
    }
  }

  if (search != sources.end()) {
    search->x4_magnitude = clampedMagnitude;
    search->x8_timeLeft = duration;
  } else {
    if (sources.size() < sources.capacity()) {
      sources.push_back(CStaticInterferenceSource(id, clampedMagnitude, duration));
    }
  }
}

void CStaticInterference::RemoveSource(TUniqueId id) {
  rstl::vector< CStaticInterferenceSource >::iterator search = sources.begin();
  for (; search != sources.end(); ++search) {
    if (search->x0_id == id) {
      break;
    }
  }

  if (search != sources.end()) {
    sources.erase(search);
  }
}

float CStaticInterference::GetTotalInterference() const {
  float validAccum = 0.f;
  float invalidAccum = 0.f;

  rstl::vector< CStaticInterferenceSource >::const_iterator it = sources.begin();
  for (; it != sources.end(); ++it) {
    TUniqueId id = it->GetId();
    float magnitude = it->GetMagnitude();
    
    if (id == kInvalidUniqueId) {
      invalidAccum += magnitude;
    }
    if (id != kInvalidUniqueId) {
      validAccum += magnitude;
    }
  }
  if (validAccum > 0.8f)
    validAccum = 0.8f;

  return rstl::min_val(validAccum + invalidAccum, 1.f);
}

void CStaticInterference::Update(CStateManager&, float dt) {
  rstl::vector< CStaticInterferenceSource >::iterator it = sources.begin();
  rstl::vector< CStaticInterferenceSource > toRemove;
  toRemove.reserve(sources.size());
  for (; it != sources.end(); ++it) {
    if (it->x8_timeLeft < 0.f) {
      toRemove.push_back(*it);
    } else {
      it->x8_timeLeft -= dt;
    }
  }

  for (rstl::vector< CStaticInterferenceSource >::iterator it = toRemove.begin();
       it != toRemove.end(); ++it) {
    RemoveSource(it->GetId());
  }
}
