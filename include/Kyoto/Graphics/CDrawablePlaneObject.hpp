#ifndef _CDRAWABLEPLANEOBJECT
#define _CDRAWABLEPLANEOBJECT

#include "types.h"

#include "Kyoto/Graphics/CDrawable.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CPlane.hpp"

class CDrawablePlaneObject : public CDrawable {
  ushort x24_targetBucket;
  float x28_farDist;
  CPlane x2c_plane;
  bool x3c_24_invertTest : 1;
  bool x3c_25_zOnly : 1;

public:
  CDrawablePlaneObject(EDrawableType dtype, float closeDist, float farDist, const CAABox& aabb,
                       bool invertTest, const CPlane& plane, bool zOnly, void* data)
  : CDrawable(dtype, 0, closeDist, aabb, data)
  , x28_farDist(farDist)
  , x2c_plane(plane)
  , x3c_24_invertTest(invertTest)
  , x3c_25_zOnly(zOnly) {}

  const CPlane& GetPlane() const { return x2c_plane; }
};

#endif // _CDRAWABLEPLANEOBJECT
