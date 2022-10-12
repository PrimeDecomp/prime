#include "Kyoto/Graphics/CCubeSurface.hpp"


const CVector3f CCubeSurface::skDefaultNormal(1.f, 0.f, 0.f);


CAABox CCubeSurface::GetBounds() const {
  if (x0_data->mExtraSize != 0) {
    return x0_data->mBounds;
  }

  return CAABox(x0_data->mCenter, x0_data->mCenter);
}
