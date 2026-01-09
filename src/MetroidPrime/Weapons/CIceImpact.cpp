#include "MetroidPrime/Weapons/CIceImpact.hpp"
#include "rstl/math.hpp"

CMarkerGrid::CMarkerGrid(const CAABox& bounds)
: mBounds(bounds)
, mGridUnits(CVector3f(0.0625f, 0.0625f, 0.0625f) * (mBounds.GetMaxPoint() - mBounds.GetMinPoint()))
, mGridState(0) {}

uint CMarkerGrid::GetValue(const uint x, const uint y, const uint z) const {
  const uint bitOffset = (x & 3) << 1;
  const uint gridOffset = (y << 2) + (z << 6) + (x >> 2);
  return static_cast< uint >((3 << bitOffset) & mGridState[gridOffset]) >> bitOffset;
}

bool CMarkerGrid::GetCoords(const CVector3f& point, uint& x, uint& y, uint& z) const {
  if (!GetBounds().PointInside(point)) {
    return false;
  }
  const CVector3f& p = point - mBounds.GetMinPoint();
  x = p.GetX() / mGridUnits.GetX();
  y = p.GetY() / mGridUnits.GetY();
  z = p.GetZ() / mGridUnits.GetZ();

  return true;
}

void CMarkerGrid::SetValue(const uint x, const uint y, const uint z, const uint val) {
  const uint bitOffset = (x & 3) << 1;
  const uint gridOffset = (y << 2) + (z << 6) + (x >> 2);
  mGridState[gridOffset] = (mGridState[gridOffset] & ~(3 << bitOffset)) | (val << bitOffset);
}

bool CMarkerGrid::AABoxTouchesData(const CAABox& box, const uint val) const {
  if (!GetBounds().DoBoundsOverlap(box)) {
    return false;
  }

  CAABox inBox = box;
  if (!box.Inside(mBounds)) {
    CVector3f min(rstl::max_val(box.GetMinPoint().GetX(), mBounds.GetMinPoint().GetX()),
                  rstl::max_val(box.GetMinPoint().GetY(), mBounds.GetMinPoint().GetY()),
                  rstl::max_val(box.GetMinPoint().GetZ(), mBounds.GetMinPoint().GetZ()));
    CVector3f max(rstl::min_val(box.GetMinPoint().GetX(), mBounds.GetMaxPoint().GetX()),
                  rstl::min_val(box.GetMinPoint().GetY(), mBounds.GetMaxPoint().GetY()),
                  rstl::min_val(box.GetMinPoint().GetZ(), mBounds.GetMaxPoint().GetZ()));
    inBox = CAABox(min, max);
  }

  uint c1x, c1y, c1z;
  GetCoords(inBox.GetMinPoint(), c1x, c1y, c1z);
  uint c2x, c2y, c2z;
  GetCoords(inBox.GetMaxPoint(), c2x, c2y, c2z);

  for (uint i = c1z; i < c2z; ++i) {
    for (uint j = c1y; i < c2z; ++j) {
      for (uint k = c1x; k < c2x; ++k) {
        if ((val & GetValue(k, j, i)) != 0) {
          return true;
        }
      }
    }
  }

  return false;
}
