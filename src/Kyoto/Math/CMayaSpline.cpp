#include "Kyoto/Math/CMayaSpline.hpp"

#include "rstl/algorithm.hpp"
#include "rstl/functional.hpp"

#include <float.h>
#include <math.h>

CMayaSplineKnot::CMayaSplineKnot(float time, float amplitude, ETangentType inTangentType,
                               ETangentType outTangentType, const CAbsAngle& inAngle,
                               const CAbsAngle& outAngle)
: x0_time(time)
, x4_amplitude(amplitude)
, x8_inTangentType(inTangentType)
, x9_outTangentType(outTangentType)
, xa_dirty(true)
, xc_cachedTangentA(CVector2f(0.f, 0.f))
, x14_cachedTangentB(CVector2f(0.f, 0.f)) {
  if (inTangentType == kTT_Fixed) {
    xc_cachedTangentA = CVector2f(3.f * cosf(inAngle.AsRadians()), 3.f * sinf(inAngle.AsRadians()));
  }
  if (outTangentType == kTT_Fixed) {
    x14_cachedTangentB = CVector2f(3.f * cosf(outAngle.AsRadians()), 3.f * sinf(outAngle.AsRadians()));
  }
}

void CMayaSplineKnot::GetTangents(const CMayaSplineKnot* previous, const CMayaSplineKnot* next,
                                CVector2f& tangentA, CVector2f& tangentB) const {
  if (xa_dirty) {
    CalculateTangents(previous, next);
  }
  tangentA = xc_cachedTangentA;
  tangentB = x14_cachedTangentB;
}

static void ValidateTangent(CVector2f& tangent) {
  if (tangent[0] < 0.f) {
    tangent[0] = 0.f;
  }
  const float magnitude = tangent.Magnitude();
  if (magnitude != 0.f) {
    tangent /= magnitude;
  }
  if (tangent[0] == 0.f && tangent[1] != 0.f) {
    tangent[0] = 0.0001f;
    tangent[1] = 5729578.f * tangent[0] * (tangent[1] < 0.f ? -1.f : 1.f);
  }
}

void CMayaSplineKnot::CalculateTangents(const CMayaSplineKnot* previous,
                                      const CMayaSplineKnot* next) const {
  xa_dirty = false;
  bool calculateSmooth = false;
  if (x8_inTangentType == kTT_Clamped && previous != nullptr) {
    const float previousDifference = fabsf(previous->GetAmplitude() - GetAmplitude());
    const float nextDifference = next != nullptr
                                     ? fabsf(next->GetAmplitude() - GetAmplitude())
                                     : previousDifference;
    if (nextDifference <= 0.05f || previousDifference <= 0.05f) {
      x8_inTangentType = kTT_Flat;
    }
  }

  switch (x8_inTangentType) {
  case kTT_Linear:
    if (previous == nullptr) {
      xc_cachedTangentA = CVector2f(1.f, 0.f);
    } else {
      xc_cachedTangentA = CVector2f(GetTime() - previous->GetTime(), GetAmplitude() - previous->GetAmplitude());
    }
    break;
  case kTT_Flat: {
    const float difference = previous != nullptr ? GetTime() - previous->GetTime()
                            : next != nullptr ? next->GetTime() - GetTime()
                                              : 0.f;
    xc_cachedTangentA = CVector2f(difference, 0.f);
    break;
  }
  case kTT_Step:
    xc_cachedTangentA = CVector2f(1.f, 0.f);
    break;
  case kTT_Clamped:
    x8_inTangentType = kTT_Smooth;
  case kTT_Smooth:
    calculateSmooth = true;
    break;
  }

  if (x9_outTangentType == kTT_Clamped && next != nullptr) {
    const float nextDifference = fabsf(next->GetAmplitude() - GetAmplitude());
    const float previousDifference = previous != nullptr
                                     ? fabsf(previous->GetAmplitude() - GetAmplitude())
                                     : nextDifference;
    if (nextDifference <= 0.05f || previousDifference <= 0.05f) {
      x9_outTangentType = kTT_Flat;
    }
  }

  switch (x9_outTangentType) {
  case kTT_Linear:
    if (next == nullptr) {
      x14_cachedTangentB = CVector2f(1.f, 0.f);
    } else {
      x14_cachedTangentB = CVector2f(next->GetTime() - GetTime(), next->GetAmplitude() - GetAmplitude());
    }
    break;
  case kTT_Flat: {
    const float difference = next != nullptr ? next->GetTime() - GetTime()
                            : previous != nullptr ? GetTime() - previous->GetTime()
                                              : 0.f;
    x14_cachedTangentB = CVector2f(difference, 0.f);
    break;
  }
  case kTT_Step:
    x14_cachedTangentB = CVector2f(1.f, 0.f);
    break;
  case kTT_Clamped:
    x9_outTangentType = kTT_Smooth;
  case kTT_Smooth:
    calculateSmooth = true;
    break;
  }

  if (calculateSmooth) {
    CVector2f tangentA(0.f, 0.f);
    CVector2f tangentB(0.f, 0.f);
    if (previous == nullptr && next != nullptr) {
      tangentA = tangentB = CVector2f(next->GetTime() - GetTime(),
                                     next->GetAmplitude() - GetAmplitude());
    } else if (previous != nullptr && next == nullptr) {
      tangentA = tangentB = CVector2f(GetTime() - previous->GetTime(),
                                     GetAmplitude() - previous->GetAmplitude());
    } else if (previous != nullptr && next != nullptr) {
      const float timeDifference = next->GetTime() - previous->GetTime();
      const float amplitudeDifference = next->GetAmplitude() - previous->GetAmplitude();
      float slope;
      if (timeDifference < 0.0001f) {
        slope = amplitudeDifference > 0.f ? 5729578.f : -5729578.f;
      } else {
        slope = amplitudeDifference / timeDifference;
      }
      float nextTime = next->GetTime() - GetTime();
      float previousTime = GetTime() - previous->GetTime();
      float nextAmplitude;
      float previousAmplitude;
      if (nextTime < 0.0001f) {
        nextAmplitude = slope;
        nextTime = 0.f;
      } else {
        nextAmplitude = nextTime * slope;
      }
      if (previousTime < 0.0001f) {
        previousAmplitude = slope;
        previousTime = 0.f;
      } else {
        previousAmplitude = previousTime * slope;
      }
      tangentB = CVector2f(previousTime, previousAmplitude);
      tangentA = CVector2f(nextTime, nextAmplitude);
    } else {
      tangentA = CVector2f(1.f, 0.f);
      tangentB = CVector2f(1.f, 0.f);
    }
    if (x8_inTangentType == kTT_Smooth) {
      xc_cachedTangentA = tangentA;
    }
    if (x9_outTangentType == kTT_Smooth) {
      x14_cachedTangentB = tangentB;
    }
  }
  ValidateTangent(xc_cachedTangentA);
  ValidateTangent(x14_cachedTangentB);
}

CMayaSpline::CMayaSpline(const CMayaSpline& other)
: x0_preInfinity(other.x0_preInfinity)
, x4_postInfinity(other.x4_postInfinity)
, x8_knots(other.x8_knots)
, x14_clampMode(other.x14_clampMode)
, x18_minAmplitude(other.x18_minAmplitude)
, x1c_maxAmplitude(other.x1c_maxAmplitude)
, x20_cache(other.x20_cache) {}

void CMayaSpline::operator=(const CMayaSpline& other) {
#if NONMATCHING
  if (this == &other) {
    return;
  }
#endif
  this->~CMayaSpline();
  new (this) CMayaSpline(other);
}

CMayaSpline::CMayaSpline(const rstl::vector< CMayaSplineKnot >& knots, float minAmplitude,
                         float maxAmplitude, EClampMode clampMode, EInfinityType preInfinity,
                         EInfinityType postInfinity)
: x0_preInfinity(preInfinity)
, x4_postInfinity(postInfinity)
, x8_knots(knots)
, x14_clampMode(clampMode)
, x18_minAmplitude(minAmplitude)
, x1c_maxAmplitude(maxAmplitude) {
  rstl::sort(x8_knots.begin(), x8_knots.end(), rstl::less< CMayaSplineKnot >());
}

CMayaSpline::CMayaSpline()
: x0_preInfinity(kIT_Constant)
, x4_postInfinity(kIT_Constant)
, x14_clampMode(kCM_None)
, x18_minAmplitude(-FLT_MAX)
, x1c_maxAmplitude(FLT_MAX) {}

float CMayaSpline::EvaluateHermite(float time) const {
  const float t = time - x20_cache.xc_minTime;
  return x20_cache.x10_hermiteCoefficients[3] +
         t * (x20_cache.x10_hermiteCoefficients[2] +
              t * (x20_cache.x10_hermiteCoefficients[1] + t * x20_cache.x10_hermiteCoefficients[0]));
}

float CMayaSpline::EvaluateInfinities(float time, bool preInfinity) const {
  if (x8_knots.empty()) {
    return 0.f;
  }
  const int last = x8_knots.size() - 1;
  const float startTime = x8_knots[0].GetTime();
  const float endTime = x8_knots[last].GetTime();
  float duration = endTime - startTime;
  if (CMath::IsEpsilon(duration, 0.f, 1.e-5f)) {
    return x8_knots[0].GetAmplitude();
  }

  double cycles;
  float fraction;
  if (time > endTime) {
    fraction = fabsf(static_cast< float >(modf((time - endTime) / duration, &cycles)));
  } else {
    fraction = fabsf(static_cast< float >(modf((time - startTime) / duration, &cycles)));
  }
  duration *= fraction;
  cycles = 1.f + fabsf(static_cast< float >(cycles));

  if (preInfinity) {
    if (x0_preInfinity == kIT_Oscillate) {
      fraction = fmod(cycles, 2.0);
      if (!CMath::IsEpsilon(fraction, 0.f, 1.e-5f)) {
        duration = startTime + duration;
      } else {
        duration = endTime - duration;
      }
    } else if (x0_preInfinity == kIT_Cycle || x0_preInfinity == kIT_CycleRelative) {
      duration = endTime - duration;
    } else if (x0_preInfinity == kIT_Linear) {
      time = startTime - time;
      CVector2f tangentA(0.f, 0.f);
      CVector2f tangentB(0.f, 0.f);
      x8_knots[0].GetTangents(nullptr, &x8_knots[1], tangentA, tangentB);
      float amplitude = x8_knots[0].GetAmplitude();
      if (!CMath::IsEpsilon(tangentA.GetX(), 0.f, 1.e-5f)) {
        amplitude -= time * tangentA.GetY() / tangentA.GetX();
      }
      return amplitude;
    }
  } else {
    if (x4_postInfinity == kIT_Oscillate) {
      fraction = fmod(cycles, 2.0);
      if (!CMath::IsEpsilon(fraction, 0.f, 1.e-5f)) {
        duration = endTime - duration;
      } else {
        duration = startTime + duration;
      }
    } else if (x4_postInfinity == kIT_Cycle || x4_postInfinity == kIT_CycleRelative) {
      duration = startTime + duration;
    } else if (x4_postInfinity == kIT_Linear) {
      time = time - endTime;
      CVector2f tangentA(0.f, 0.f);
      CVector2f tangentB(0.f, 0.f);
      x8_knots[last].GetTangents(last > 0 ? &x8_knots[last - 1] : nullptr, nullptr,
                                tangentA, tangentB);
      float amplitude = x8_knots[last].GetAmplitude();
      if (!CMath::IsEpsilon(tangentB.GetX(), 0.f, 1.e-5f)) {
        amplitude += time * tangentB.GetY() / tangentB.GetX();
      }
      return amplitude;
    }
  }

  float amplitude = EvaluateAt(duration);
  if (preInfinity && x0_preInfinity == kIT_CycleRelative) {
    const float delta = x8_knots[last].GetAmplitude() - x8_knots[0].GetAmplitude();
    amplitude -= static_cast< float >(cycles) * delta;
  } else if (!preInfinity && x4_postInfinity == kIT_CycleRelative) {
    const float delta = x8_knots[last].GetAmplitude() - x8_knots[0].GetAmplitude();
    amplitude += static_cast< float >(cycles) * delta;
  }
  return amplitude;
}

bool CMayaSpline::FindKnot(float time, int& knotIndex) const {
  knotIndex = 0;
  if (!x8_knots.empty()) {
    int low = 0;
    int high = x8_knots.size() - 1;
    do {
      const int middle = (low + high) >> 1;
      const float knotTime = x8_knots[middle].GetTime();
      if (time < knotTime) {
        high = middle - 1;
      } else if (time > knotTime) {
        low = middle + 1;
      } else {
        knotIndex = middle;
        return true;
      }
    } while (low <= high);
    knotIndex = low;
  }
  return false;
}

float CMayaSpline::EvaluateAt(float time) const {
  const float amplitude = EvaluateAtUnclamped(time);
  switch (x14_clampMode) {
  case kCM_Clamp:
    return CMath::FastMin(CMath::FastMax(x18_minAmplitude, amplitude), x1c_maxAmplitude);
  case kCM_Wrap: {
    const float range = x1c_maxAmplitude - x18_minAmplitude;
    if (range > 0.f) {
      if (amplitude > FLT_EPSILON + x1c_maxAmplitude) {
        return amplitude - range * (static_cast< int >((amplitude - x1c_maxAmplitude) / range) + 1);
      }
      if (amplitude < x18_minAmplitude - FLT_EPSILON) {
        return amplitude + range *
                               (abs(static_cast< int >((amplitude - x18_minAmplitude) / range)) + 1);
      }
      return amplitude;
    }
    return x18_minAmplitude;
  }
  case kCM_None:
    return amplitude;
  default:
    return 0.f;
  }
}

float CMayaSpline::EvaluateAtUnclamped(float time) const {
  if (GetKnots().empty()) {
    return 0.f;
  }
  const int last = GetKnots().size() - 1;
  if (time < GetKnots()[0].GetTime()) {
    if (x0_preInfinity == kIT_Constant) {
      return GetKnots()[0].GetAmplitude();
    }
    return EvaluateInfinities(time, true);
  }
  if (time > GetKnots()[last].GetTime()) {
    if (x4_postInfinity == kIT_Constant) {
      return GetKnots()[last].GetAmplitude();
    }
    return EvaluateInfinities(time, false);
  }

  int knotIndex = -1;
  bool found = false;
  const int& cached = x20_cache.x0_knotIndex;
  if (cached != -1) {
#if NONMATCHING
    // Use the cached knot to enable the forward shortcut.
    if (cached < last && time > GetKnots()[cached].GetTime()) {
#else
    // The original checks the final knot, making this shortcut unreachable for finite times.
    if (cached < last && time > GetKnots()[last].GetTime()) {
#endif
      const int next = cached + 1;
      if (time == GetKnots()[next].GetTime()) {
#if NONMATCHING
        x20_cache.x0_knotIndex = next;
        return GetKnots()[next].GetAmplitude();
#else
        x20_cache.x0_knotIndex = last;
        return GetKnots()[last].GetAmplitude();
#endif
      }
      if (time < GetKnots()[next].GetTime()) {
        knotIndex = next;
        found = true;
      }
    } else if (cached > 0 && time < GetKnots()[x20_cache.x0_knotIndex].GetTime()) {
      const int previous = cached - 1;
      if (time > GetKnots()[previous].GetTime()) {
        knotIndex = cached;
        found = true;
      }
      if (time == GetKnots()[previous].GetTime()) {
        x20_cache.x0_knotIndex = previous;
        return GetKnots()[x20_cache.x0_knotIndex].GetAmplitude();
      }
    }
  }
  if (!found && FindKnot(time, knotIndex)) {
#if NONMATCHING
    // An exact knot hit has the same amplitude regardless of the preceding segment's mode.
    x20_cache.x0_knotIndex = knotIndex;
    return GetKnots()[knotIndex].GetAmplitude();
#else
    if (knotIndex == 0) {
      x20_cache.x0_knotIndex = knotIndex;
      return GetKnots()[knotIndex].GetAmplitude();
    }
    if (knotIndex == GetKnots().size()) {
      x20_cache.x0_knotIndex = 0;
      return GetKnots()[last].GetAmplitude();
    }
#endif
  }

  const int segment = knotIndex - 1;
  if (x20_cache.x4_segmentIndex != segment) {
    x20_cache.x0_knotIndex = segment;
    x20_cache.x4_segmentIndex = segment;
    if (GetKnots()[segment].GetOutTangentType() == CMayaSplineKnot::kTT_Step) {
      x20_cache.x8_step = true;
    } else {
      x20_cache.x8_step = false;
      rstl::reserved_vector< CVector2f, 4 > points;
      FindControlPoints(segment, points);
      CalculateHermiteCoefficients(points, x20_cache.x10_hermiteCoefficients);
      x20_cache.xc_minTime = points[0].GetX();
    }
  }
  if (x20_cache.x8_step) {
#if NONMATCHING
    // Exact knot hits can move the lookup index without changing the cached segment.
    return GetKnots()[x20_cache.x4_segmentIndex].GetAmplitude();
#else
    return GetKnots()[x20_cache.x0_knotIndex].GetAmplitude();
#endif
  }
  return EvaluateHermite(time);
}

CMayaSpline CMayaSpline::BuildLinearSpline(float timeA, float amplitudeA, float timeB,
                                          float amplitudeB) {
  rstl::vector< CMayaSplineKnot > knots;
  knots.reserve(2);
  knots.push_back_unsafe(CMayaSplineKnot(timeA, amplitudeA, CMayaSplineKnot::kTT_Linear,
                                 CMayaSplineKnot::kTT_Linear));
  knots.push_back_unsafe(CMayaSplineKnot(timeB, amplitudeB, CMayaSplineKnot::kTT_Linear,
                                 CMayaSplineKnot::kTT_Linear));
  return CMayaSpline(knots, amplitudeA, amplitudeB, kCM_None, kIT_Constant, kIT_Constant);
}

CMayaSpline CMayaSpline::BuildSpline(const CMayaSplineKnot* knots, uint count, EClampMode clampMode,
                                    EInfinityType preInfinity, EInfinityType postInfinity,
                                    float minAmplitude, float maxAmplitude) {
  rstl::vector< CMayaSplineKnot > knotVector(count);
  for (uint i = 0; i < count; ++i) {
    knotVector.push_back_unsafe(knots[i]);
  }
  return CMayaSpline(knotVector, minAmplitude, maxAmplitude, clampMode, preInfinity, postInfinity);
}

void CMayaSpline::FindControlPoints(int knotIndex,
                                    rstl::reserved_vector< CVector2f, 4 >& points) const {
  const CMayaSplineKnot* knot = &x8_knots[knotIndex];
  points.push_back(CVector2f(knot->GetTime(), knot->GetAmplitude()));
  CVector2f tangentA(0.f, 0.f);
  CVector2f tangentB(0.f, 0.f);
  knot->GetTangents(knotIndex - 1 >= 0 ? &x8_knots[knotIndex - 1] : nullptr,
                    knotIndex + 1 < x8_knots.size() ? &x8_knots[knotIndex + 1] : nullptr,
                    tangentA, tangentB);
  points.push_back(points[0] + tangentB * (1.f / 3.f));

  ++knotIndex;
  knot = &x8_knots[knotIndex];
  CVector2f tangentC(0.f, 0.f);
  CVector2f tangentD(0.f, 0.f);
  knot->GetTangents(knotIndex - 1 >= 0 ? &x8_knots[knotIndex - 1] : nullptr,
                     knotIndex + 1 < x8_knots.size() ? &x8_knots[knotIndex + 1] : nullptr,
                     tangentC, tangentD);
  const CVector2f end(knot->GetTime(), knot->GetAmplitude());
  points.push_back(end - tangentC * (1.f / 3.f));
  points.push_back(end);
}

void CMayaSpline::CalculateHermiteCoefficients(
    const rstl::reserved_vector< CVector2f, 4 >& points, float* coefficients) const {
  const CVector2f span = points[3] - points[0];
  float slopeA = 5729578.f;
  const CVector2f tangentA = points[1] - points[0];
  if (tangentA.GetX() != 0.f) {
    slopeA = tangentA.GetY() / tangentA.GetX();
  }
  float slopeB = 5729578.f;
  const CVector2f tangentB = points[3] - points[2];
  if (tangentB.GetX() != 0.f) {
    slopeB = tangentB.GetY() / tangentB.GetX();
  }
  const float& dy = span[1];
  const float dx = span.GetX();
  const float invSquare = 1.f / (dx * dx);
  const float scaledA = slopeA * dx;
  const float scaledB = slopeB * dx;
  coefficients[0] = invSquare * (scaledA + scaledB - dy - dy) / dx;
  coefficients[1] = invSquare * (dy + (dy + dy) - scaledA - scaledA - scaledB);
  coefficients[2] = slopeA;
  coefficients[3] = points[0].GetY();
}
