#ifndef __CAABOX_HPP__
#define __CAABOX_HPP__

#include "Kyoto/Math/CVector3f.hpp"

class CAABox {
public:
  // CAABox() {
  //   // TODO
  // }
  CAABox(const CVector3f& min, const CVector3f& max); // : min(min), max(max) {}
  // CAABox(const CAABox& other)
  // : minX(other.minX)
  // , minY(other.minY)
  // , minZ(other.minZ)
  // , maxX(other.maxX)
  // , maxY(other.maxY)
  // , maxZ(other.maxZ) {}

  CAABox& operator=(const CAABox&);

  CVector3f ClosestPointAlongVector(const CVector3f& vec) const;
  // FurthestPointAlongVector__6CAABoxCFRC9CVector3f global
  const CVector3f& GetMinPoint() const { return min; }
  const CVector3f& GetMaxPoint() const { return max; }
  // GetCenterPoint__6CAABoxCFv global
  // GetPoint__6CAABoxCFi global
  // Include__6CAABoxFRC9CVector3f weak
  // Include__6CAABoxFRC6CAABox weak
  // AccumulateBounds__6CAABoxFRC9CVector3f global
  // bool Invalid__6CAABoxCFv global
  // PointInside__6CAABoxCFRC9CVector3f global
  // InsidePlane__6CAABoxCFRC6CPlane global
  // DoBoundsOverlap__6CAABoxCFRC6CAABox global
  // GetVolume__6CAABoxCFv global
  // GetBooleanIntersection__6CAABoxCFRC6CAABox global
  // Inside__6CAABoxCFRC6CAABox global
  // ClampToBox__6CAABoxCFRC9CVector3f global
  // GetTri__6CAABoxCFQ26CAABox10EBoxFaceIdi global
  // DistanceBetween__6CAABoxFRC6CAABoxRC6CAABox global

  // GetPointA__6CAABoxCFv weak
  // GetPointB__6CAABoxCFv weak
  // GetPointC__6CAABoxCFv weak
  // GetPointD__6CAABoxCFv weak
  // GetPointE__6CAABoxCFv weak
  // GetPointF__6CAABoxCFv weak
  // GetPointG__6CAABoxCFv weak
  // GetPointH__6CAABoxCFv weak

  // GetWidth__6CAABoxCFv weak
  // GetDepth__6CAABoxCFv weak
  // GetHeight__6CAABoxCFv weak
  // GetTri__6CAABoxCFii weak
  // GetEdge__6CAABoxCFi weak

  // GetTransformedAABox__6CAABoxCFRC12CTransform4f

  static const CAABox& Identity() { return mskNullBox; }
  static const CAABox& MakeMaxInvertedBox() { return mskInvertedBox; }
  // MakeNullBox__6CAABoxFv ??

private:
  CVector3f min;
  CVector3f max;

  static CAABox mskInvertedBox;
  static CAABox mskNullBox;
};
CHECK_SIZEOF(CAABox, 0x18)

#endif // __CAABOX_HPP__
