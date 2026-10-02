#include "Kyoto/Input/CInputFilter.hpp"

float CInputQuantizer::Quantize(float value) {
  float scale = 1000000.f;
  int bucket;
  int scaleInt = static_cast< int >(scale);
  int step = static_cast< int >(x0_step * scale);
  int input = static_cast< int >(value * scale) + scaleInt * 2;
  int halfStep = step / 2;

  if (x4_increasing) {
    bucket = input / step;
    if (bucket > x8_bucket) {
      x8_bucket = bucket;
    } else {
      bucket = (input + halfStep) / step;
      if (bucket < x8_bucket) {
        x4_increasing = false;
        x8_bucket = bucket;
      } else {
        bucket = x8_bucket;
      }
    }
  } else {
    bucket = (input + halfStep) / step;
    if (bucket < x8_bucket) {
      x8_bucket = bucket;
    } else {
      bucket = input / step;
      if (bucket > x8_bucket) {
        x4_increasing = true;
        x8_bucket = bucket;
      } else {
        bucket = x8_bucket;
      }
    }
  }

  return static_cast< float >(bucket * step - scaleInt * 2) / scale;
}

CScalarInputFilter::CScalarInputFilter(int profile, uint quantizationMode, float step)
: x4_samples(0.f)
, x30_profile(profile)
, x34_quantizationMode(quantizationMode)
, x38_quantizer(step) {}

CAdaptiveInputFilter::CAdaptiveInputFilter(int algorithm, int profile, uint quantizationMode,
                                         float step)
: CScalarInputFilter(profile, quantizationMode, step)
, x44_algorithm(algorithm)
, x48_inputs(0.f)
, x74_outputs(0.f)
, xa0_feedforward(0.f)
, xac_feedback(0.f) {
  SetProfile(profile);
}

void CAdaptiveInputFilter::SetProfile(int profile) {
  x30_profile = profile;
  switch (profile) {
  case 0:
    xa0_feedforward[0] = 0.f;
    xa0_feedforward[1] = 0.9f;
    xac_feedback[0] = 0.f;
    xac_feedback[1] = 0.1f;
    break;
  case 1:
    xa0_feedforward[0] = 0.f;
    xa0_feedforward[1] = 0.5f;
    xac_feedback[0] = 0.1f;
    xac_feedback[1] = 0.4f;
    break;
  case 2:
    xa0_feedforward[0] = 0.f;
    xa0_feedforward[1] = 0.3f;
    xac_feedback[0] = 0.3f;
    xac_feedback[1] = 0.4f;
    break;
  case 3:
    xa0_feedforward[0] = 0.f;
    xa0_feedforward[1] = 0.2f;
    xac_feedback[0] = 0.4f;
    xac_feedback[1] = 0.4f;
    break;
  case 4:
    xa0_feedforward[0] = 0.f;
    xa0_feedforward[1] = 0.1f;
    xac_feedback[0] = 0.4f;
    xac_feedback[1] = 0.5f;
    break;
  }
}

float CAdaptiveInputFilter::FilterRecursive(float value) {
  for (int i = 0; i < x48_inputs.size() - 1; ++i) {
    x48_inputs[i] = x48_inputs[i + 1U];
  }
  x48_inputs[x48_inputs.size() - 1] = value;

  const float result =
      xac_feedback[1] * x74_outputs[x74_outputs.size() - 1] +
      (xac_feedback[0] * x74_outputs[x74_outputs.size() - 2] +
       (xa0_feedforward[0] * x48_inputs[x48_inputs.size() - 2] +
        xa0_feedforward[1] * x48_inputs[x48_inputs.size() - 1]));

  for (int i = 0; i < x74_outputs.size() - 1; ++i) {
    x74_outputs[i] = x74_outputs[i + 1U];
  }
  x74_outputs[x74_outputs.size() - 1] = result;
  return result;
}

float CScalarInputFilter::UpdateDeviation(float value) {
  float next;
  float sample;
  float average;
  float mean = 0.f;
  for (int i = 0; i < 10;) {
    sample = x4_samples[i++];
    mean += sample;
  }
  average = mean / 10.f;

  for (int i = 0; i < 9;) {
    next = x4_samples[i + 1];
    x4_samples[i++] = next;
  }
  x4_samples[9] = value;
  if (average > value) {
    return average - value;
  }
  return value - average;
}

float CAdaptiveInputFilter::FilterAdaptiveMean(float value) {
  float next;
  float previousWeight;
  float weight = UpdateDeviation(value) / 0.025f;
  if (weight < 1.f) {
    previousWeight = 1.f - weight;
  } else {
    weight = 1.f;
    previousWeight = 0.f;
  }

  for (int i = 0; i < 9;) {
    next = x48_inputs[i + 1];
    x48_inputs[i++] = next;
  }
  x48_inputs[9] = value;

  float mean = 0.f;
  for (int i = 0; i < 10;) {
    mean += x48_inputs[i++];
  }
  const float average = mean / 10.f;
  const float result = weight * average + previousWeight * x74_outputs[9];

  for (int i = 0; i < 9; ++i) {
    x74_outputs[i] = x74_outputs[i + 1];
  }
  x74_outputs[9] = result;
  return result;
}

float CAdaptiveInputFilter::FilterAdaptiveSlow(float value) {
  float next;
  float weight = UpdateDeviation(value) / 0.25f;
  float previousWeight;
  if (weight < 0.3f) {
    previousWeight = 1.f - weight;
  } else {
    weight = 0.3f;
    previousWeight = 0.7f;
  }

  for (int i = 0; i < 9;) {
    next = x48_inputs[i + 1];
    x48_inputs[i++] = next;
  }
  x48_inputs[9] = value;

  const float result = weight * x48_inputs[9] + previousWeight * x74_outputs[9];

  for (int i = 0; i < 9; ++i) {
    x74_outputs[i] = x74_outputs[i + 1];
  }
  x74_outputs[9] = result;
  return result;
}

float CAdaptiveInputFilter::FilterAdaptiveFast(float value) {
  float next;
  float weight = UpdateDeviation(value) / 0.25f;
  float previousWeight;
  if (weight < 0.8f) {
    previousWeight = 1.f - weight;
  } else {
    weight = 0.8f;
    previousWeight = 0.2f;
  }

  for (int i = 0; i < 9;) {
    next = x48_inputs[i + 1];
    x48_inputs[i++] = next;
  }
  x48_inputs[9] = value;

  const float result = weight * x48_inputs[9] + previousWeight * x74_outputs[9];

  for (int i = 0; i < 9; ++i) {
    x74_outputs[i] = x74_outputs[i + 1];
  }
  x74_outputs[9] = result;
  return result;
}

float CAdaptiveInputFilter::Filter(float value) {
  float result = 0.f;
  switch (x44_algorithm) {
  case 0:
    result = FilterRecursive(value);
    break;
  case 1:
    result = FilterAdaptiveMean(value);
    break;
  case 2:
    result = FilterAdaptiveSlow(value);
    break;
  case 3:
    result = FilterAdaptiveFast(value);
    break;
  }

  if (x34_quantizationMode == 1) {
    result = x38_quantizer.Quantize(result);
  }
  return result;
}
