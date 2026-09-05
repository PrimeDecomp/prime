#ifndef _CTIMESCALEFUNCTIONS
#define _CTIMESCALEFUNCTIONS

#include "Kyoto/Animation/CCharAnimTime.hpp"
#include "rstl/ownership_transfer.hpp"

enum EVaryingAnimationTimeScaleType { kVATST_Constant, kVATST_Linear };

class IVaryingAnimationTimeScale {
public:
  virtual EVaryingAnimationTimeScaleType GetType() const = 0;
  virtual float VTimeScaleIntegral(const float& lowerLimit, const float& upperLimit) const = 0;
  virtual float VFindUpperLimit(const float& lowerLimit, const float& root) const = 0;
  virtual rstl::ownership_transfer< IVaryingAnimationTimeScale > VClone() const = 0;
  virtual rstl::ownership_transfer< IVaryingAnimationTimeScale >
  VGetFunctionMirrored(const float& value) const = 0;
};
CHECK_SIZEOF(IVaryingAnimationTimeScale, 0x4)

class CLinearAnimationTimeScale : public IVaryingAnimationTimeScale {
public:
  EVaryingAnimationTimeScaleType GetType() const override;
  float VTimeScaleIntegral(const float& lowerLimit, const float& upperLimit) const override;
  float VFindUpperLimit(const float& lowerLimit, const float& root) const override;
  rstl::ownership_transfer< IVaryingAnimationTimeScale > VClone() const override;
  rstl::ownership_transfer< IVaryingAnimationTimeScale >
  VGetFunctionMirrored(const float& value) const override;

  CLinearAnimationTimeScale(const CCharAnimTime& t1, float y1, const CCharAnimTime& t2, float y2)
  : x4_desc((y2 - y1) / (t2 - t1).GetSeconds(),
            y1 - (y2 - y1) / (t2 - t1).GetSeconds() * t1.GetSeconds(), t1.GetSeconds(),
            t2.GetSeconds()) {}

private:
  class CFunctionDescription {
  public:
    CFunctionDescription(float slope, const float& yIntercept, const float& t1, const float& t2)
    : x0_slope(slope), x4_yIntercept(yIntercept), x8_t1(t1), xc_t2(t2) {}

    rstl::ownership_transfer< IVaryingAnimationTimeScale >
    FunctionMirroredAround(const float& value) const;

    float x0_slope;
    float x4_yIntercept;
    float x8_t1;
    float xc_t2;
  };

  static float FindUpperLimitFromRoot(const CFunctionDescription& desc, const float& lowerLimit,
                                      const float& root);
  static float TimeScaleIntegralWithSortedLimits(const CFunctionDescription& desc,
                                                 const float& lowerLimit, const float& upperLimit);
  CFunctionDescription x4_desc;
};
CHECK_SIZEOF(CLinearAnimationTimeScale, 0x14)

#endif // _CTIMESCALEFUNCTIONS
