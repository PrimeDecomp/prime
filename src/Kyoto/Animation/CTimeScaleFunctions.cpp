#include "Kyoto/Animation/CTimeScaleFunctions.hpp"
#include "Kyoto/Alloc/CMemory.hpp"

#include <math.h>

float CConstantAnimationTimeScale::VTimeScaleIntegral(const float& lowerLimit,
                                                      const float& upperLimit) const {
  return x4_scale * (upperLimit - lowerLimit);
}

float CConstantAnimationTimeScale::VFindUpperLimit(const float& lowerLimit,
                                                   const float& root) const {
  return lowerLimit + root / x4_scale;
}

rstl::ownership_transfer< IVaryingAnimationTimeScale > CConstantAnimationTimeScale::VClone() const {
  return rs_new CConstantAnimationTimeScale(x4_scale);
}

rstl::ownership_transfer< IVaryingAnimationTimeScale >
CConstantAnimationTimeScale::VGetFunctionMirrored(const float& value) const {
  return Clone();
}

float CLinearAnimationTimeScale::TimeScaleIntegralWithSortedLimits(const CFunctionDescription& desc,
                                                                   const float& lowerLimit,
                                                                   const float& upperLimit) {
  return (upperLimit - lowerLimit) *
         (0.5f * (GetScale(desc, lowerLimit) + GetScale(desc, upperLimit)));
}

float CLinearAnimationTimeScale::VTimeScaleIntegral(const float& lowerLimit,
                                                    const float& upperLimit) const {
  if (lowerLimit <= upperLimit) {
    return TimeScaleIntegralWithSortedLimits(x4_desc, lowerLimit, upperLimit);
  } else {
    return -TimeScaleIntegralWithSortedLimits(x4_desc, upperLimit, lowerLimit);
  }
}

float CLinearAnimationTimeScale::FindUpperLimitFromRoot(const CFunctionDescription& desc,
                                                        const float& lowerLimit,
                                                        const float& root) {
  float halfSlope = 0.5f * desc.x0_slope;
  float yIntercept = desc.x4_yIntercept;
  float upperLimit = lowerLimit;
  float lowerIntegral = halfSlope * lowerLimit * lowerLimit + yIntercept * lowerLimit;
  for (int i = 0; i < 20; ++i) {
    float step =
        (halfSlope * upperLimit * upperLimit + yIntercept * upperLimit - lowerIntegral - root) /
        (2.f * halfSlope * upperLimit + yIntercept);
    upperLimit -= step;
    if (fabs(step) < 0.00001f) {
      return upperLimit;
    }
  }
  return -1.f;
}

float CLinearAnimationTimeScale::VFindUpperLimit(const float& lowerLimit, const float& root) const {
  return FindUpperLimitFromRoot(x4_desc, lowerLimit, root);
}

rstl::ownership_transfer< IVaryingAnimationTimeScale > CLinearAnimationTimeScale::VClone() const {
  return rs_new CLinearAnimationTimeScale(
      CCharAnimTime(x4_desc.x8_t1), GetScale(x4_desc, x4_desc.x8_t1), CCharAnimTime(x4_desc.xc_t2),
      GetScale(x4_desc, x4_desc.xc_t2));
}

rstl::ownership_transfer< IVaryingAnimationTimeScale >
CLinearAnimationTimeScale::VGetFunctionMirrored(const float& value) const {
  const CFunctionDescription mirrored = x4_desc.FunctionMirroredAround(value);
  return rs_new CLinearAnimationTimeScale(
      CCharAnimTime(mirrored.x8_t1), GetScale(mirrored, mirrored.x8_t1),
      CCharAnimTime(mirrored.xc_t2), GetScale(mirrored, mirrored.xc_t2));
}
