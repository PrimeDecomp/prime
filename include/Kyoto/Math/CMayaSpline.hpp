#ifndef _CMAYASPLINE
#define _CMAYASPLINE

#include "types.h"

#include "Kyoto/Math/CAbsAngle.hpp"
#include "Kyoto/Math/CVector2f.hpp"

#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CMayaSplineKnot {
public:
  // Enum spellings inferred from the tangent calculations.
  enum ETangentType {
    kTT_Linear,
    kTT_Flat,
    kTT_Smooth,
    kTT_Step,
    kTT_Clamped,
    kTT_Fixed
  };

  CMayaSplineKnot(float time, float amplitude, ETangentType inTangentType,
                  ETangentType outTangentType, const CAbsAngle& inAngle = CAbsAngle::FromRadians(0.f),
                  const CAbsAngle& outAngle = CAbsAngle::FromRadians(0.f));

  float GetTime() const { return x0_time; }
  float GetAmplitude() const { return x4_amplitude; }
  ETangentType GetInTangentType() const { return static_cast< ETangentType >(x8_inTangentType); }
  ETangentType GetOutTangentType() const { return static_cast< ETangentType >(x9_outTangentType); }
  void GetTangents(const CMayaSplineKnot* previous, const CMayaSplineKnot* next,
                   CVector2f& tangentA, CVector2f& tangentB) const;
  bool operator<(const CMayaSplineKnot& other) const { return GetTime() < other.GetTime(); }

private:
  void CalculateTangents(const CMayaSplineKnot* previous, const CMayaSplineKnot* next) const;

  float x0_time;
  float x4_amplitude;
  mutable uint x8_inTangentType : 8;
  mutable uint x9_outTangentType : 8;
  mutable uint xa_dirty : 1;
  mutable CVector2f xc_cachedTangentA;
  mutable CVector2f x14_cachedTangentB;
};
CHECK_SIZEOF(CMayaSplineKnot, 0x1c)

namespace rstl {
template <>
struct is_trivially_destructible< CMayaSplineKnot > {
  enum { value = true };
};

template <>
inline void construct< CMayaSplineKnot >(void* dest, const CMayaSplineKnot& src) {
  *static_cast< CMayaSplineKnot* >(dest) = src;
}
} // namespace rstl

class CMayaSpline {
public:
  // Enum spellings inferred; values follow the original Maya infinity modes.
  enum EInfinityType { kIT_Constant, kIT_Linear, kIT_Cycle, kIT_CycleRelative, kIT_Oscillate };
  enum EClampMode { kCM_None, kCM_Clamp, kCM_Wrap };

  CMayaSpline();
  CMayaSpline(const CMayaSpline& other);
  CMayaSpline(const rstl::vector< CMayaSplineKnot >& knots, float minAmplitude,
              float maxAmplitude, EClampMode clampMode, EInfinityType preInfinity,
              EInfinityType postInfinity);
  void operator=(const CMayaSpline& other);

  float EvaluateAt(float time) const;
  uint GetKnotCount() const { return x8_knots.size(); }
  const rstl::vector< CMayaSplineKnot >& GetKnots() const { return x8_knots; }
  float GetMinTime() const { return x8_knots.front().GetTime(); }
  float GetMaxTime() const { return x8_knots.back().GetTime(); }
  float GetDuration() const { return GetMaxTime() - GetMinTime(); }

  static CMayaSpline BuildLinearSpline(float timeA, float amplitudeA, float timeB,
                                       float amplitudeB);
  // Factory spelling inferred from its callers in CTweakPlayerControl.
  static CMayaSpline BuildSpline(const CMayaSplineKnot* knots, uint count, EClampMode clampMode,
                                 EInfinityType preInfinity, EInfinityType postInfinity,
                                 float minAmplitude, float maxAmplitude);

private:
  float EvaluateHermite(float time) const;
  float EvaluateInfinities(float time, bool preInfinity) const;
  bool FindKnot(float time, int& knotIndex) const;
  float EvaluateAtUnclamped(float time) const;
  void FindControlPoints(int knotIndex, rstl::reserved_vector< CVector2f, 4 >& points) const;
  void CalculateHermiteCoefficients(const rstl::reserved_vector< CVector2f, 4 >& points,
                                     float* coefficients) const;

  EInfinityType x0_preInfinity;
  EInfinityType x4_postInfinity;
  rstl::vector< CMayaSplineKnot > x8_knots;
  EClampMode x14_clampMode;
  float x18_minAmplitude;
  float x1c_maxAmplitude;
  struct SCache {
    SCache()
    : x0_knotIndex(-1), x4_segmentIndex(-1), x8_step(false), xc_minTime(0.f) {}

    int x0_knotIndex;
    int x4_segmentIndex;
    bool x8_step : 1;
    float xc_minTime;
    float x10_hermiteCoefficients[4];
  };
  mutable SCache x20_cache;
};
CHECK_SIZEOF(CMayaSpline, 0x40)

#endif // _CMAYASPLINE
