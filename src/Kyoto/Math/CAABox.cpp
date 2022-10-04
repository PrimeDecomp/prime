#include "Kyoto/Math/CAABox.hpp"

#include "Kyoto/Math/CLineSeg.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CTri.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

#include "float.h"

CAABox CAABox::mskInvertedBox(FLT_MIN, FLT_MIN, FLT_MIN, FLT_MAX, FLT_MAX, FLT_MAX);
CAABox CAABox::mskNullBox(0.f, 0.f, 0.f, 0.f, 0.f, 0.f);

CAABox::CAABox(CInputStream& in) : min(in), max(in) {}

CAABox::CAABox(const CVector3f& min, const CVector3f& max) : min(min), max(max) {}

CLineSeg CAABox::GetEdge(EBoxEdgeId id) const {
  switch (id) {
  case kE_Z0:
    return CLineSeg(CVector3f(min.GetX(), min.GetY(), max.GetZ()),
                    CVector3f(min.GetX(), min.GetY(), min.GetZ()));
  case kE_Y0:
    return CLineSeg(CVector3f(min.GetX(), min.GetY(), max.GetZ()),
                    CVector3f(min.GetX(), max.GetY(), max.GetZ()));
  case kE_X0:
    return CLineSeg(CVector3f(min.GetX(), min.GetY(), min.GetZ()),
                    CVector3f(max.GetX(), min.GetY(), min.GetZ()));
  case kE_Y1:
    return CLineSeg(CVector3f(min.GetX(), min.GetY(), min.GetZ()),
                    CVector3f(min.GetX(), max.GetY(), min.GetZ()));
  case kE_Z1:
    return CLineSeg(CVector3f(max.GetX(), min.GetY(), min.GetZ()),
                    CVector3f(max.GetX(), min.GetY(), max.GetZ()));
  case kE_Y2:
    return CLineSeg(CVector3f(max.GetX(), min.GetY(), min.GetZ()),
                    CVector3f(max.GetX(), max.GetY(), min.GetZ()));
  case kE_X1:
    return CLineSeg(CVector3f(max.GetX(), min.GetY(), max.GetZ()),
                    CVector3f(min.GetX(), min.GetY(), max.GetZ()));
  case kE_Y3:
    return CLineSeg(CVector3f(max.GetX(), min.GetY(), max.GetZ()),
                    CVector3f(max.GetX(), max.GetY(), max.GetZ()));
  case kE_Z2:
    return CLineSeg(CVector3f(max.GetX(), max.GetY(), max.GetZ()),
                    CVector3f(max.GetX(), max.GetY(), min.GetZ()));
  case kE_X2:
    return CLineSeg(CVector3f(max.GetX(), max.GetY(), min.GetZ()),
                    CVector3f(min.GetX(), max.GetY(), min.GetZ()));
  case kE_Z3:
    return CLineSeg(CVector3f(min.GetX(), max.GetY(), min.GetZ()),
                    CVector3f(min.GetX(), max.GetY(), max.GetZ()));
  case kE_X3:
    return CLineSeg(CVector3f(min.GetX(), max.GetY(), max.GetZ()),
                    CVector3f(max.GetX(), max.GetY(), max.GetZ()));
  default:
    return CLineSeg(CVector3f(min.GetX(), min.GetY(), max.GetZ()),
                    CVector3f(min.GetX(), min.GetY(), min.GetZ()));
  }
}

CTri CAABox::GetTri(EBoxFaceId face, int windOffset) const {
  CVector3f verts[4] = {
      CVector3f(min.GetX(), min.GetY(), max.GetZ()),
      CVector3f(min.GetX(), min.GetY(), min.GetZ()),
      CVector3f(max.GetX(), min.GetY(), min.GetZ()),
      CVector3f(max.GetX(), min.GetY(), max.GetZ()),
  };
  switch (face) {
  case kF_YMin:
  default:
    verts[0] = CVector3f(min.GetX(), min.GetY(), max.GetZ());
    verts[1] = CVector3f(max.GetX(), min.GetY(), max.GetZ());
    verts[2] = CVector3f(max.GetX(), min.GetY(), min.GetZ());
    verts[3] = CVector3f(min.GetX(), min.GetY(), min.GetZ());
    break;
  case kF_YMax:
    verts[0] = CVector3f(max.GetX(), max.GetY(), max.GetZ());
    verts[1] = CVector3f(min.GetX(), max.GetY(), max.GetZ());
    verts[2] = CVector3f(min.GetX(), max.GetY(), min.GetZ());
    verts[3] = CVector3f(max.GetX(), max.GetY(), min.GetZ());
    break;
  case kF_XMin:
    verts[0] = CVector3f(min.GetX(), max.GetY(), max.GetZ());
    verts[1] = CVector3f(min.GetX(), min.GetY(), max.GetZ());
    verts[2] = CVector3f(min.GetX(), min.GetY(), min.GetZ());
    verts[3] = CVector3f(min.GetX(), max.GetY(), min.GetZ());
    break;
  case kF_XMax:
    verts[0] = CVector3f(max.GetX(), min.GetY(), max.GetZ());
    verts[1] = CVector3f(max.GetX(), max.GetY(), max.GetZ());
    verts[2] = CVector3f(max.GetX(), max.GetY(), min.GetZ());
    verts[3] = CVector3f(max.GetX(), min.GetY(), min.GetZ());
    break;
  case kF_ZMax:
    verts[0] = CVector3f(min.GetX(), max.GetY(), max.GetZ());
    verts[1] = CVector3f(max.GetX(), max.GetY(), max.GetZ());
    verts[2] = CVector3f(max.GetX(), min.GetY(), max.GetZ());
    verts[3] = CVector3f(min.GetX(), min.GetY(), max.GetZ());
    break;
  case kF_ZMin:
    verts[0] = CVector3f(min.GetX(), min.GetY(), min.GetZ());
    verts[1] = CVector3f(max.GetX(), min.GetY(), min.GetZ());
    verts[2] = CVector3f(max.GetX(), max.GetY(), min.GetZ());
    verts[3] = CVector3f(min.GetX(), max.GetY(), min.GetZ());
    break;
  }
  return CTri(verts[windOffset], verts[(windOffset + 1) % 4], verts[(windOffset + 2) % 4]);
}

bool CAABox::DoBoundsOverlap(const CAABox& other) const {
  if (other.min.GetX() > max.GetX() || min.GetX() > other.max.GetX() ||
      other.min.GetY() > max.GetY() || min.GetY() > other.max.GetY() ||
      other.min.GetZ() > max.GetZ() || min.GetZ() > other.max.GetZ()) {
    return false;
  }
  return true;
}

void CAABox::AccumulateBounds(const CVector3f& other) {
  if (other.GetX() < min.GetX()) {
    min.SetX(other.GetX());
  }
  if (other.GetY() < min.GetY()) {
    min.SetY(other.GetY());
  }
  if (other.GetZ() < min.GetZ()) {
    min.SetZ(other.GetZ());
  }
  if (other.GetX() > max.GetX()) {
    max.SetX(other.GetX());
  }
  if (other.GetY() > max.GetY()) {
    max.SetY(other.GetY());
  }
  if (other.GetZ() > max.GetZ()) {
    max.SetZ(other.GetZ());
  }
}

bool CAABox::Inside(const CAABox& other) const {
  if (min.GetX() >= other.min.GetX() && max.GetX() <= other.max.GetX() &&
      min.GetY() >= other.min.GetY() && max.GetY() <= other.max.GetY() &&
      min.GetZ() >= other.min.GetZ() && max.GetZ() <= other.max.GetZ()) {
    return true;
  }
  return false;
}

bool CAABox::InsidePlane(const CPlane& plane) const {
  CVector3f vec(CMath::FastFSel(plane.GetNormal().GetX(), min.GetX(), max.GetX()),
                CMath::FastFSel(plane.GetNormal().GetY(), min.GetY(), max.GetY()),
                CMath::FastFSel(plane.GetNormal().GetZ(), min.GetZ(), max.GetZ()));
  return !(CVector3f::Dot(plane.GetNormal(), vec) >= plane.GetConstant());
}

// TODO non-matching
CAABox CAABox::GetTransformedAABox(const CTransform4f& xf) const {
  if (&xf == &CTransform4f::Identity()) {
    return *this;
  }

  CVector3f newMin = xf.GetTranslation();
  CVector3f newMax = xf.GetTranslation();
  for (int x = 0; x < 3; ++x) {
    for (int y = 0; y < 3; ++y) {
      f32 mul = xf.GetRow(x)[y];
      f32 minMul = mul * GetMinPoint()[y];
      f32 maxMul = mul * GetMaxPoint()[y];
      if (minMul < maxMul) {
        newMin[x] += maxMul;
        newMax[x] += minMul;
      } else {
        newMin[x] += minMul;
        newMax[x] += maxMul;
      }
    }
  }
  return CAABox(newMin, newMax);
}

CVector3f CAABox::ClampToBox(const CVector3f& vec) const {
  return CVector3f(
      vec.GetX() < min.GetX() ? min.GetX() : (vec.GetX() > max.GetX() ? max.GetX() : vec.GetX()),
      vec.GetY() < min.GetY() ? min.GetY() : (vec.GetY() > max.GetY() ? max.GetY() : vec.GetY()),
      vec.GetZ() < min.GetZ() ? min.GetZ() : (vec.GetZ() > max.GetZ() ? max.GetZ() : vec.GetZ()));
}

// TODO non-matching instruction swap
CAABox CAABox::GetBooleanIntersection(const CAABox& other) const {
  CVector3f minVec = CVector3f::Zero();
  CVector3f maxVec = CVector3f::Zero();

  for (int i = 0; i < 3; ++i) {
    if (GetMinPoint()[i] <= other.GetMinPoint()[i] && GetMaxPoint()[i] >= other.GetMaxPoint()[i]) {
      minVec[i] = other.GetMinPoint()[i];
      maxVec[i] = other.GetMaxPoint()[i];
    } else if (other.GetMinPoint()[i] <= GetMinPoint()[i] &&
               other.GetMaxPoint()[i] >= GetMaxPoint()[i]) {
      minVec[i] = GetMinPoint()[i];
      maxVec[i] = GetMaxPoint()[i];
    } else if (other.GetMinPoint()[i] <= GetMinPoint()[i] &&
               other.GetMaxPoint()[i] >= GetMinPoint()[i]) {
      minVec[i] = GetMinPoint()[i];
      maxVec[i] = other.GetMaxPoint()[i];
    } else if (other.GetMinPoint()[i] <= GetMaxPoint()[i] &&
               other.GetMaxPoint()[i] >= GetMaxPoint()[i]) {
      minVec[i] = other.GetMinPoint()[i];
      maxVec[i] = GetMaxPoint()[i];
    }
  }

  return CAABox(minVec, maxVec);
}

bool CAABox::Invalid() const {
  if (min.GetX() > max.GetX() && min.GetY() > max.GetY() && min.GetZ() > max.GetZ()) {
    return true;
  }
  if (min.IsEqu(CVector3f::Zero()) && max.IsEqu(CVector3f::Zero())) {
    return true;
  }
  return false;
}

f32 CAABox::GetVolume() const {
  CVector3f delta = max - min;
  return delta.GetX() * delta.GetY() * delta.GetZ();
}

CVector3f CAABox::GetCenterPoint() const { return (min + max) * 0.5f; }

CVector3f CAABox::GetPoint(int point) const {
  const CVector3f* vecs[2] = {&min, &max};
  return CVector3f(vecs[(point & 1) != 0]->GetX(), vecs[(point & 2) != 0]->GetY(),
                   vecs[(point & 4) != 0]->GetZ());
}

bool CAABox::PointInside(const CVector3f& vec) const {
  return vec.GetX() >= min.GetX() && vec.GetX() <= max.GetX() && vec.GetY() >= min.GetY() &&
         vec.GetY() <= max.GetY() && vec.GetZ() >= min.GetZ() && vec.GetZ() <= max.GetZ();
}

f32 CAABox::DistanceBetween(const CAABox& a, const CAABox& b) {
  f32 minX = b.GetMaxPoint().GetX();
  f32 maxX = a.GetMinPoint().GetX();
  f32 minY = b.GetMaxPoint().GetY();
  f32 maxY = a.GetMinPoint().GetY();
  f32 minZ = b.GetMaxPoint().GetZ();
  f32 maxZ = a.GetMinPoint().GetZ();

  bool xi = b.GetMinPoint().GetX() < a.GetMaxPoint().GetX() && maxX < minX;
  bool yi = b.GetMinPoint().GetY() < a.GetMaxPoint().GetY() && maxY < minY;
  bool zi = b.GetMinPoint().GetZ() < a.GetMaxPoint().GetZ() && maxZ < minZ;

  int intersects = 0;
  if (xi)
    intersects |= 1;
  if (yi)
    intersects |= 2;
  if (zi)
    intersects |= 4;

  if (b.GetMinPoint().GetX() > a.GetMaxPoint().GetX()) {
    minX = b.GetMinPoint().GetX();
    maxX = a.GetMaxPoint().GetX();
  }
  if (b.GetMinPoint().GetY() > a.GetMaxPoint().GetY()) {
    minX = b.GetMinPoint().GetY();
    maxX = a.GetMaxPoint().GetY();
  }
  if (b.GetMinPoint().GetZ() > a.GetMaxPoint().GetZ()) {
    minX = b.GetMinPoint().GetZ();
    maxX = a.GetMaxPoint().GetZ();
  }

  switch (intersects) {
  case 0:
    return (CVector3f(maxX, maxY, maxZ) - CVector3f(minX, minY, minZ)).Magnitude();
  case 1:
    return (CVector2f(maxY, maxZ) - CVector2f(minY, minZ)).Magnitude();
  case 2:
    return (CVector2f(maxX, maxZ) - CVector2f(minX, minZ)).Magnitude();
  case 3:
    return fabs(maxZ - minZ);
  case 4:
    return (CVector2f(maxX, maxY) - CVector2f(minX, minY)).Magnitude();
  case 5:
    return fabs(maxY - minY);
  case 6:
    return fabs(maxX - minX);
  case 7:
    return 0.f;
  default:
    return 0.f;
  }
}

CVector3f CAABox::FurthestPointAlongVector(const CVector3f& vec) const {
  return CVector3f(CMath::FastFSel(vec.GetX(), max.GetX(), min.GetX()),
                   CMath::FastFSel(vec.GetY(), max.GetY(), min.GetY()),
                   CMath::FastFSel(vec.GetZ(), max.GetZ(), min.GetZ()));
}

CVector3f CAABox::ClosestPointAlongVector(const CVector3f& vec) const {
  return CVector3f(CMath::FastFSel(vec.GetX(), min.GetX(), max.GetX()),
                   CMath::FastFSel(vec.GetY(), min.GetY(), max.GetY()),
                   CMath::FastFSel(vec.GetZ(), min.GetZ(), max.GetZ()));
}
