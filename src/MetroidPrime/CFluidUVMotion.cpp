#include <MetroidPrime/CFluidUVMotion.hpp>

#include <Kyoto/Math/CMath.hpp>

CFluidUVMotion::CFluidUVMotion(float timeToWrap, float orientation)
: x0_fluidLayers(), x4c_ooTimeToWrap(1.f / timeToWrap), x50_orientation(orientation) {
  x0_fluidLayers.resize(kFM_NumLayers);
  x0_fluidLayers[0] = SFluidLayerMotion(CFluidUVMotion::kFM_Linear, 1000.f);
  x0_fluidLayers[1] = SFluidLayerMotion(CFluidUVMotion::kFM_Linear, 3.f);
  x0_fluidLayers[2] = SFluidLayerMotion(CFluidUVMotion::kFM_Linear, 5.f, CMath::Deg2Rad(45.f));
}

CFluidUVMotion::CFluidUVMotion(float timeToWrap, float orientation,
                               const SFluidLayerMotion& colorLayer,
                               const SFluidLayerMotion& pattern1Layer,
                               const SFluidLayerMotion& pattern2Layer)
: x0_fluidLayers(), x4c_ooTimeToWrap(1.f / timeToWrap), x50_orientation(orientation) {
  x0_fluidLayers.resize(kFM_NumLayers);
  x0_fluidLayers[0] = colorLayer;
  x0_fluidLayers[1] = pattern1Layer;
  x0_fluidLayers[2] = pattern2Layer;
}

void CFluidUVMotion::CalculateFluidTextureOffset(float t, float offsets[kFM_NumLayers][2]) const {
  float totalXOffset = t * GetOOTimeToWrapTexPage();
  float totalYOffset = CMath::FastCosR(GetOrientation()) * totalXOffset;
  totalXOffset *= CMath::FastSinR(GetOrientation());

  for (int i = 0; i < GetFluidLayers().size(); ++i) {
    const SFluidLayerMotion& layer = GetFluidLayerMotion(EFluidMotion(i));

    const float speedT = t * layer.x4_ooTimeToWrap;
    const float cycleT = speedT - floorf(speedT);
    float localY;
    float localX;
    switch (layer.x0_motion) {
    case kFM_Linear:
      localY = 0.f;
      localX = speedT;
      break;
    case kFM_Circular:
      localY = layer.xc_magnitude * CMath::FastSinR((M_PIF * 2) * cycleT);
      localX = layer.xc_magnitude * CMath::FastCosR((M_PIF * 2) * cycleT);
      break;
    case kFM_Oscillate:
      localY = 0.f;
      localX = layer.xc_magnitude * CMath::FastCosR((M_PIF * 2) * cycleT);
      break;
    default:
      localY = localX = 0.f;
      break;
    }

    const float x = totalXOffset + CMath::FastCosR(layer.x8_orientation) * localY +
                    CMath::FastSinR(layer.x8_orientation) * localX;
    const float y = totalYOffset + CMath::FastCosR(layer.x8_orientation) * localX +
                    CMath::FastSinR(layer.x8_orientation) * localY;
    offsets[i][0] = x - floorf(x);
    offsets[i][1] = y - floorf(y);
  }
}
