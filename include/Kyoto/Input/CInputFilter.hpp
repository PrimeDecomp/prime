#ifndef _CINPUTFILTER
#define _CINPUTFILTER

#include "types.h"

#include "rstl/reserved_vector.hpp"

// Names inferred from the Trilogy input implementation.
class CInputQuantizer {
public:
  explicit CInputQuantizer(float step) : x0_step(step), x4_increasing(true), x8_bucket(0) {}
  float Quantize(float value);

private:
  float x0_step;
  bool x4_increasing;
  int x8_bucket;
};
CHECK_SIZEOF(CInputQuantizer, 0xc)

class CScalarInputFilter {
public:
  virtual ~CScalarInputFilter() = 0;
  virtual void SetProfile(int profile) = 0;
  virtual float Filter(float value) = 0;

  CScalarInputFilter(int profile, uint quantizationMode, float step);

protected:
  float UpdateDeviation(float value);

  rstl::reserved_vector< float, 10 > x4_samples;
  int x30_profile;
  uint x34_quantizationMode;
  CInputQuantizer x38_quantizer;
};
CHECK_SIZEOF(CScalarInputFilter, 0x44)

inline CScalarInputFilter::~CScalarInputFilter() {}

class CAdaptiveInputFilter : public CScalarInputFilter {
public:
  ~CAdaptiveInputFilter() override {}
  void SetProfile(int profile) override;
  float Filter(float value) override;

  CAdaptiveInputFilter(int algorithm, int profile, uint quantizationMode, float step);

private:
  float FilterRecursive(float value);
  float FilterAdaptiveMean(float value);
  float FilterAdaptiveSlow(float value);
  float FilterAdaptiveFast(float value);

  int x44_algorithm;
  rstl::reserved_vector< float, 10 > x48_inputs;
  rstl::reserved_vector< float, 10 > x74_outputs;
  rstl::reserved_vector< float, 2 > xa0_feedforward;
  rstl::reserved_vector< float, 2 > xac_feedback;
};
CHECK_SIZEOF(CAdaptiveInputFilter, 0xb8)

#endif // _CINPUTFILTER
