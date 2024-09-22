#ifndef _CFLUIDUVMOTION
#define _CFLUIDUVMOTION

#include <rstl/reserved_vector.hpp>

class CFluidUVMotion {
public:
  enum EFluidMotion {
    kFM_Linear,
    kFM_Circular,
    kFM_Oscillate,
    kFM_NumLayers,
  };

  struct SFluidLayerMotion {
    EFluidMotion x0_motion;
    float x4_ooTimeToWrap;
    float x8_orientation;
    float xc_magnitude;
    float x10_uvMul;
    float x14_uvScale;

    SFluidLayerMotion(EFluidMotion motion = kFM_Linear, float timeToWrap = 6.f,
                      float orientation = 0.f, float magnitude = 1.f, float uvMul = 5.f)
    : x0_motion(motion)
    , x4_ooTimeToWrap(1.f / timeToWrap)
    , x8_orientation(orientation)
    , xc_magnitude(magnitude)
    , x10_uvMul(uvMul)
    , x14_uvScale(1.f / uvMul) {}
    SFluidLayerMotion(const SFluidLayerMotion& other)
    : x0_motion(other.x0_motion)
    , x4_ooTimeToWrap(other.x4_ooTimeToWrap)
    , x8_orientation(other.x8_orientation)
    , xc_magnitude(other.xc_magnitude)
    , x10_uvMul(other.x10_uvMul)
    , x14_uvScale(other.x14_uvScale) {}
  };

private:
  rstl::reserved_vector< SFluidLayerMotion, kFM_NumLayers > x0_fluidLayers;
  float x4c_ooTimeToWrap;
  float x50_orientation;

public:
  CFluidUVMotion(float timeToWrap, float orientation);
  CFluidUVMotion(float timeToWrap, float orientation, const SFluidLayerMotion& colorLayer,
                 const SFluidLayerMotion& pattern1Layer, const SFluidLayerMotion& pattern2Layer);
  CFluidUVMotion(const CFluidUVMotion&);

  void CalculateFluidTextureOffset(float t, float offsets[kFM_NumLayers][2]) const;

  float GetOOTimeToWrapTexPage() const { return x4c_ooTimeToWrap; }
  float GetOrientation() const { return x50_orientation; }
  const SFluidLayerMotion& GetFluidLayerMotion(EFluidMotion motion) const {
    return x0_fluidLayers[motion];
  }
  const rstl::reserved_vector< SFluidLayerMotion, kFM_NumLayers >& GetFluidLayers() const {
    return x0_fluidLayers;
  }
};
CHECK_SIZEOF(CFluidUVMotion, 0x54)

#endif // _CFLUIDUVMOTION
