#ifndef _CICEIMPACT
#define _CICEIMPACT

#include <Kyoto/Math/CAABox.hpp>
#include <Kyoto/Math/CSphere.hpp>

#include <rstl/reserved_vector.hpp>

class CMarkerGrid {
public:
  CMarkerGrid(const CAABox& bounds);

  uint GetValue(const uint x, const uint y, const uint z) const;
  void SetValue(uint x, uint y, uint z, uint val);
  bool GetCoords(const CVector3f& point, uint& x, uint& y, uint& z) const;
  bool AABoxTouchesData(const CAABox& bounds, const uint val) const;
  void MarkCells(const CSphere& sphere, const uint val);
  CVector3f GetWorldPositionForCell(const uint x, const uint y, const uint z);

  const CAABox& GetBounds() const { return mBounds; }
  // uint GetNumSubdivisions() const;

private:
  CAABox mBounds;
  CVector3f mGridUnits;
  rstl::reserved_vector< uchar, 1024 > mGridState;
};
#endif // _CICEIMPACT
