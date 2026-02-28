#ifndef _CDRAWABLEPLANEOBJECT
#define _CDRAWABLEPLANEOBJECT

#include "types.h"

#include "Kyoto/Graphics/CDrawable.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CPlane.hpp"

class CDrawablePlaneObject : public CDrawable {
public:
  CDrawablePlaneObject(EDrawableType dtype, float closeDist, float farDist, const CAABox& aabb,
                       bool invertTest, const CPlane& plane, bool zOnly, const void* data)
  : CDrawable(dtype, 0, closeDist, aabb, data)
  , x24_targetBucket(0)
  , x28_farDist(farDist)
  , x2c_plane(plane)
  , x3c_24_invertTest(invertTest)
  , x3c_25_zOnly(zOnly) {}

  ushort GetBucketIndex() const { return x24_targetBucket; }
  void SetBucketIndex(ushort idx) { x24_targetBucket = idx; }
  const CPlane& GetPlane() const { return x2c_plane; }
  bool IsViewInFront() const { return x3c_24_invertTest; }
  bool IsOptimalPlane() const { return x3c_25_zOnly; }

private:
  ushort x24_targetBucket;
  float x28_farDist;
  CPlane x2c_plane;
  bool x3c_24_invertTest : 1;
  bool x3c_25_zOnly : 1;
};

#endif // _CDRAWABLEPLANEOBJECT
