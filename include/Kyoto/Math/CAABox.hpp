#ifndef _CAABOX
#define _CAABOX

#include "Kyoto/Math/CVector3f.hpp"

class CInputStream;
class CLineSeg;
class CPlane;
class CTransform4f;
class CTri;

class CAABox {
public:
  enum EBoxEdgeId {
    kE_Z0,
    kE_X0,
    kE_Z1,
    kE_X1,
    kE_Z2,
    kE_X2,
    kE_Z3,
    kE_X3,
    kE_Y0,
    kE_Y1,
    kE_Y2,
    kE_Y3,
  };
  enum EBoxFaceId {
    kF_YMin,
    kF_YMax,
    kF_XMin,
    kF_XMax,
    kF_ZMax,
    kF_ZMin,
  };

  CAABox(const CVector3f& min, const CVector3f& max);
  CAABox(float minX, float minY, float minZ, float maxX, float maxY, float maxZ)
  : min(minX, minY, minZ), max(maxX, maxY, maxZ) {}
  CAABox(CInputStream& in);
  // CAABox(const CAABox& other)
  // : min(other.min)
  // , max(other.max) {}

  // CAABox& operator=(const CAABox& other) {
  //   min = other.min;
  //   max = other.max;
  //   return *this;
  // }

  CLineSeg GetEdge(EBoxEdgeId edge) const;
  CTri GetTri(EBoxFaceId face, int windOffset) const;
  CVector3f ClosestPointAlongVector(const CVector3f& vec) const;
  CVector3f FurthestPointAlongVector(const CVector3f& vec) const;
  CVector3f GetCenterPoint() const;
  CVector3f GetPoint(int) const;
  // Include__6CAABoxFRC9CVector3f weak
  // Include__6CAABoxFRC6CAABox weak
  void AccumulateBounds(const CVector3f&);
  bool Invalid() const;
  bool PointInside(const CVector3f& vec) const;
  bool DoBoundsOverlap(const CAABox&) const;
  float GetVolume() const;
  CAABox GetBooleanIntersection(const CAABox& other) const;
  bool Inside(const CAABox& other) const;
  bool InsidePlane(const CPlane& plane) const;
  CVector3f ClampToBox(const CVector3f& vec) const;
  CAABox GetTransformedAABox(const CTransform4f& xf) const;

  inline CVector3f GetHalfExtent() const {
    // Name is a guess
    return (max - min) * 0.5f;
  }

  const CVector3f& GetMinPoint() const { return min; }
  const CVector3f& GetMaxPoint() const { return max; }

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

  static const CAABox& Identity() { return mskNullBox; }
  static const CAABox& MakeMaxInvertedBox() { return mskInvertedBox; }
  // MakeNullBox__6CAABoxFv ??
  static float DistanceBetween(const CAABox& a, const CAABox& b);

private:
  CVector3f min;
  CVector3f max;

  static CAABox mskInvertedBox;
  static CAABox mskNullBox;
};
CHECK_SIZEOF(CAABox, 0x18)

#endif // _CAABOX
