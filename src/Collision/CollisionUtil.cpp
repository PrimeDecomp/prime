#include "Collision/CollisionUtil.hpp"

#include "Collision/CCollisionInfo.hpp"
#include "Collision/CCollisionInfoList.hpp"
#include "Collision/CMaterialList.hpp"
#include "Collision/NormalTable.hpp"

#include "Collision/CMRay.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CPlane.hpp"
#include "Kyoto/Math/CSphere.hpp"
#include "Kyoto/Math/CVector3d.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Math/CloseEnough.hpp"
#include "rstl/math.hpp"

#pragma inline_max_size(250)

namespace CollisionUtil {

/*======================== X-tests ========================*/
#define AXISTEST_X01(a, b, fa, fb)                                                                 \
  do {                                                                                             \
    p0 = a * v0.GetY() - b * v0.GetZ();                                                            \
    p2 = a * v2.GetY() - b * v2.GetZ();                                                            \
    if (p0 < p2) {                                                                                 \
      min = p0;                                                                                    \
      max = p2;                                                                                    \
    } else {                                                                                       \
      min = p2;                                                                                    \
      max = p0;                                                                                    \
    }                                                                                              \
    rad = fa * boxhalfsize.GetY() + fb * boxhalfsize.GetZ();                                       \
    if (min > rad || max < -rad)                                                                   \
      return false;                                                                                \
  } while (false)

#define AXISTEST_X2(a, b, fa, fb)                                                                  \
  do {                                                                                             \
    p0 = a * v0.GetY() - b * v0.GetZ();                                                            \
    p1 = a * v1.GetY() - b * v1.GetZ();                                                            \
    if (p0 < p1) {                                                                                 \
      min = p0;                                                                                    \
      max = p1;                                                                                    \
    } else {                                                                                       \
      min = p1;                                                                                    \
      max = p0;                                                                                    \
    }                                                                                              \
    rad = fa * boxhalfsize.GetY() + fb * boxhalfsize.GetZ();                                       \
    if (min > rad || max < -rad)                                                                   \
      return false;                                                                                \
  } while (false)

/*======================== Y-tests ========================*/
#define AXISTEST_Y02(a, b, fa, fb)                                                                 \
  do {                                                                                             \
    p0 = -a * v0.GetX() + b * v0.GetZ();                                                           \
    p2 = -a * v2.GetX() + b * v2.GetZ();                                                           \
    if (p0 < p2) {                                                                                 \
      min = p0;                                                                                    \
      max = p2;                                                                                    \
    } else {                                                                                       \
      min = p2;                                                                                    \
      max = p0;                                                                                    \
    }                                                                                              \
    rad = fa * boxhalfsize.GetX() + fb * boxhalfsize.GetZ();                                       \
    if (min > rad || max < -rad)                                                                   \
      return false;                                                                                \
  } while (false)

#define AXISTEST_Y1(a, b, fa, fb)                                                                  \
  do {                                                                                             \
    p0 = -a * v0.GetX() + b * v0.GetZ();                                                           \
    p1 = -a * v1.GetX() + b * v1.GetZ();                                                           \
    if (p0 < p1) {                                                                                 \
      min = p0;                                                                                    \
      max = p1;                                                                                    \
    } else {                                                                                       \
      min = p1;                                                                                    \
      max = p0;                                                                                    \
    }                                                                                              \
    rad = fa * boxhalfsize.GetX() + fb * boxhalfsize.GetZ();                                       \
    if (min > rad || max < -rad)                                                                   \
      return false;                                                                                \
  } while (false)

/*======================== Z-tests ========================*/
#define AXISTEST_Z12(a, b, fa, fb)                                                                 \
  do {                                                                                             \
    p1 = a * v1.GetX() - b * v1.GetY();                                                            \
    p2 = a * v2.GetX() - b * v2.GetY();                                                            \
    if (p2 < p1) {                                                                                 \
      min = p2;                                                                                    \
      max = p1;                                                                                    \
    } else {                                                                                       \
      min = p1;                                                                                    \
      max = p2;                                                                                    \
    }                                                                                              \
    rad = fa * boxhalfsize.GetX() + fb * boxhalfsize.GetY();                                       \
    if (min > rad || max < -rad)                                                                   \
      return false;                                                                                \
  } while (false)

#define AXISTEST_Z0(a, b, fa, fb)                                                                  \
  do {                                                                                             \
    p0 = a * v0.GetX() - b * v0.GetY();                                                            \
    p1 = a * v1.GetX() - b * v1.GetY();                                                            \
    if (p0 < p1) {                                                                                 \
      min = p0;                                                                                    \
      max = p1;                                                                                    \
    } else {                                                                                       \
      min = p1;                                                                                    \
      max = p0;                                                                                    \
    }                                                                                              \
    rad = fa * boxhalfsize.GetX() + fb * boxhalfsize.GetY();                                       \
    if (min > rad || max < -rad)                                                                   \
      return false;                                                                                \
  } while (false)

bool AABox_AABox_Moving(const CAABox& aabb0, const CAABox& aabb1, const CVector3f& dir, double& d,
                        CVector3f& point, CVector3f& normal) {
  CVector3d vecMin(-FLT_MAX, -FLT_MAX, -FLT_MAX);
  CVector3d vecMax(FLT_MAX, FLT_MAX, FLT_MAX);

  for (int i = 0; i < 3; ++i) {
    if (CMath::AbsF(dir[i]) < FLT_EPSILON) {
      const float rightMin = aabb1.GetMinPoint()[i];
      const float leftMin = aabb0.GetMinPoint()[i];
      if (leftMin >= rightMin && leftMin <= aabb1.GetMaxPoint()[i]) {
        continue;
      }
      const float leftMax = aabb0.GetMaxPoint()[i];
      if (leftMax >= rightMin && leftMax <= aabb1.GetMaxPoint()[i]) {
        continue;
      }
      if (leftMin < rightMin && leftMax > aabb1.GetMaxPoint()[i]) {
        continue;
      }
      return false;
    }

    if (aabb0.GetMaxPoint()[i] < aabb1.GetMinPoint()[i] && dir[i] > 0.f) {
      vecMin[i] = (aabb1.GetMinPoint()[i] - aabb0.GetMaxPoint()[i]) / dir[i];
    } else if (aabb1.GetMaxPoint()[i] < aabb0.GetMinPoint()[i] && dir[i] < 0.f) {
      vecMin[i] = (aabb1.GetMaxPoint()[i] - aabb0.GetMinPoint()[i]) / dir[i];
    } else if (aabb1.GetMaxPoint()[i] > aabb0.GetMinPoint()[i] && dir[i] < 0.f) {
      vecMin[i] = (aabb1.GetMaxPoint()[i] - aabb0.GetMinPoint()[i]) / dir[i];
    } else if (aabb0.GetMaxPoint()[i] > aabb1.GetMinPoint()[i] && dir[i] > 0.f) {
      vecMin[i] = (aabb1.GetMinPoint()[i] - aabb0.GetMaxPoint()[i]) / dir[i];
    }

    if (aabb1.GetMaxPoint()[i] > aabb0.GetMinPoint()[i] && dir[i] > 0.f) {
      vecMax[i] = (aabb1.GetMaxPoint()[i] - aabb0.GetMinPoint()[i]) / dir[i];
    } else if (aabb0.GetMaxPoint()[i] > aabb1.GetMinPoint()[i] && dir[i] < 0.f) {
      vecMax[i] = (aabb1.GetMinPoint()[i] - aabb0.GetMaxPoint()[i]) / dir[i];
    } else if (aabb0.GetMaxPoint()[i] < aabb1.GetMinPoint()[i] && dir[i] < 0.f) {
      vecMax[i] = (aabb1.GetMinPoint()[i] - aabb0.GetMaxPoint()[i]) / dir[i];
    } else if (aabb1.GetMaxPoint()[i] < aabb0.GetMinPoint()[i] && dir[i] > 0.f) {
      vecMax[i] = (aabb1.GetMaxPoint()[i] - aabb0.GetMinPoint()[i]) / dir[i];
    }
  }

  int maxAxis = 0;
  if (vecMin[1] > vecMin[0]) {
    maxAxis = 1;
  }
  if (vecMin[2] > vecMin[maxAxis]) {
    maxAxis = 2;
  }

  const double& minMax01 = vecMax[2] < vecMax[1] ? vecMax[2] : vecMax[1];
  const double& minMax = minMax01 < vecMax[0] ? minMax01 : vecMax[0];
  if (vecMin[maxAxis] > minMax) {
    return false;
  }

  d = vecMin[maxAxis];
  normal = CVector3f::Zero();
  normal[maxAxis] = dir[maxAxis] > 0.f ? -1.f : 1.f;

  point[0] = dir[0] > 0.f ? aabb0.GetMaxPoint()[0] : aabb0.GetMinPoint()[0];
  point[1] = dir[1] > 0.f ? aabb0.GetMaxPoint()[1] : aabb0.GetMinPoint()[1];
  point[2] = dir[2] > 0.f ? aabb0.GetMaxPoint()[2] : aabb0.GetMinPoint()[2];

  point += float(d) * dir;
  return true;
}

bool BoxLineTest(const CAABox& aabb, const CVector3f& point, const CVector3f& dir, float& tMin,
                 float& tMax, int& axis, bool& sign) {
  const float* minPt = reinterpret_cast< const float* >(&aabb);
  const float* maxPt = reinterpret_cast< const float* >(&aabb.GetMaxPoint());
  const float* pointPtr = reinterpret_cast< const float* >(&point);
  const float* dirPtr = reinterpret_cast< const float* >(&dir);
  tMin = -999999.f;
  tMax = 999999.f;

  for (int i = 0; i < 3; ++i) {
    float dirI = *dirPtr;
    if (dirI == 0.f) {
      if (*pointPtr < *minPt || *pointPtr > *maxPt) {
        return false;
      }
    } else {
      const float dirRecip = 1.f / dirI;
      float tmpMin;
      float tmpMax;
      if (dirI < 0.f) {
        tmpMin = (*maxPt - *pointPtr) * dirRecip;
        tmpMax = (*minPt - *pointPtr) * dirRecip;
      } else {
        tmpMin = (*minPt - *pointPtr) * dirRecip;
        tmpMax = (*maxPt - *pointPtr) * dirRecip;
      }

      if (tmpMin > tMin) {
        sign = dirI < 0.f;
        axis = i;
        tMin = tmpMin;
      }

      if (tmpMax < tMax) {
        tMax = tmpMax;
      }
    }

    ++dirPtr;
    ++pointPtr;
    ++minPt;
    ++maxPt;
  }

  return tMin <= tMax;
}

bool TriBoxOverlap(const CVector3f& boxcenter, const CVector3f& boxhalfsize,
                   const CVector3f& trivert0, const CVector3f& trivert1,
                   const CVector3f& trivert2) {
  float min, max, d, p0, p1, p2, rad, fex, fey, fez;

  const CVector3f v0(trivert0 - boxcenter);
  const CVector3f v1(trivert1 - boxcenter);
  const CVector3f v2(trivert2 - boxcenter);

  const CVector3f e0(v1 - v0);
  const CVector3f e1(v2 - v1);
  const CVector3f e2(v0 - v2);

  const float e0x = e0.GetX();
  const float e0y = e0.GetY();
  const float e0z = e0.GetZ();
  fex = CMath::AbsF(e0x);
  fey = CMath::AbsF(e0y);
  fez = CMath::AbsF(e0z);
  AXISTEST_X01(e0z, e0y, fez, fey);
  AXISTEST_Y02(e0z, e0x, fez, fex);
  AXISTEST_Z12(e0y, e0x, fey, fex);

  const float e1x = e1.GetX();
  const float e1y = e1.GetY();
  const float e1z = e1.GetZ();
  fex = CMath::AbsF(e1x);
  fey = CMath::AbsF(e1y);
  fez = CMath::AbsF(e1z);
  AXISTEST_X01(e1z, e1y, fez, fey);
  AXISTEST_Y02(e1z, e1x, fez, fex);
  AXISTEST_Z0(e1y, e1x, fey, fex);

  const float e2x = e2.GetX();
  const float e2y = e2.GetY();
  const float e2z = e2.GetZ();
  fex = CMath::AbsF(e2x);
  fey = CMath::AbsF(e2y);
  fez = CMath::AbsF(e2z);
  AXISTEST_X2(e2z, e2y, fez, fey);
  AXISTEST_Y1(e2z, e2x, fez, fex);
  AXISTEST_Z12(e2y, e2x, fey, fex);

  min = v0.GetX();
  max = v0.GetX();
  if (v1.GetX() < v0.GetX()) {
    min = v1.GetX();
  }
  if (v1.GetX() > v0.GetX()) {
    max = v1.GetX();
  }
  if (v2.GetX() < min) {
    min = v2.GetX();
  }
  if (v2.GetX() > max) {
    max = v2.GetX();
  }
  if (min > boxhalfsize.GetX() || max < -boxhalfsize.GetX()) {
    return false;
  }

  min = v0.GetY();
  max = v0.GetY();
  if (v1.GetY() < v0.GetY()) {
    min = v1.GetY();
  }
  if (v1.GetY() > v0.GetY()) {
    max = v1.GetY();
  }
  if (v2.GetY() < min) {
    min = v2.GetY();
  }
  if (v2.GetY() > max) {
    max = v2.GetY();
  }
  if (min > boxhalfsize.GetY() || max < -boxhalfsize.GetY()) {
    return false;
  }

  min = v0.GetZ();
  max = v0.GetZ();
  if (v1.GetZ() < v0.GetZ()) {
    min = v1.GetZ();
  }
  if (v1.GetZ() > v0.GetZ()) {
    max = v1.GetZ();
  }
  if (v2.GetZ() < min) {
    min = v2.GetZ();
  }
  if (v2.GetZ() > max) {
    max = v2.GetZ();
  }
  if (min > boxhalfsize.GetZ() || max < -boxhalfsize.GetZ()) {
    return false;
  }

  const CVector3f normal = CVector3f::Cross(e0, e1);
  d = -CVector3f::Dot(normal, v0);

  CVector3f vmax;
  CVector3f vmin;
  for (int q = 0; q < 3; ++q) {
    if (normal[q] > 0.f) {
      vmin[q] = -boxhalfsize[q];
      vmax[q] = boxhalfsize[q];
    } else {
      vmin[q] = boxhalfsize[q];
      vmax[q] = -boxhalfsize[q];
    }
  }

  if (CVector3f::Dot(normal, vmin) + d > 0.f) {
    return false;
  }
  register int ret;
  if (CVector3f::Dot(normal, vmax) + d >= 0.f) {
    ret = 1;
  } else {
    ret = 0;
  }

  return (uint)-ret >> 31;
}

bool LineCircleIntersection2d(const CVector3f& point, const CVector3f& dir, const CSphere& sphere,
                              int axis1, int axis2, float& d) {
  float delta[3];
  delta[1] = sphere.GetCenter().GetY() - point.GetY();
  delta[2] = sphere.GetCenter().GetZ() - point.GetZ();
  delta[0] = sphere.GetCenter().GetX() - point.GetX();
  const CVector2f deltaVec(delta[axis1], delta[axis2]);
  const CVector2f dirVec(dir[axis1], dir[axis2]);

  const float dirVecMag = dirVec.Magnitude();
  if (dirVecMag < FLT_EPSILON) {
    return false;
  }

  CVector2f dirVecNorm = CVector2f(dir[axis1], dir[axis2]) / dirVecMag;
  const float deltaVecDot = CVector2f::Dot(deltaVec, dirVecNorm);
  const float deltaVecDotSq = deltaVecDot * deltaVecDot;
  const float deltaVecMagSq = CVector2f::Dot(deltaVec, deltaVec);
  const float sphereRadSq = sphere.GetRadius() * sphere.GetRadius();
  if (deltaVecDot < 0.f && deltaVecMagSq > sphereRadSq) {
    return false;
  }

  const float tSq = sphereRadSq - (deltaVecMagSq - deltaVecDotSq);
  if (tSq < 0.f) {
    return false;
  }

  const float t = CMath::SqrtF(tSq);
  d = deltaVecMagSq > sphereRadSq ? deltaVecDot - t : deltaVecDot + t;
  d /= dirVecMag;
  return true;
}

bool MovingSphereAABox(const CSphere& sphere, const CAABox& aabb, const CVector3f& dir,
                       double& dOut, CVector3f& point, CVector3f& normal) {
  const CVector3f radiusVec(sphere.GetRadius(), sphere.GetRadius(), sphere.GetRadius());
  const CAABox expAABB(aabb.GetMinPoint() - radiusVec, aabb.GetMaxPoint() + radiusVec);
  float tMin;
  float tMax;
  int axis;
  bool sign;
  if (!BoxLineTest(expAABB, sphere.GetCenter(), dir, tMin, tMax, axis, sign)) {
    return false;
  }

  point = sphere.GetCenter() + tMin * dir;

  const int nextAxis1 = (axis + 1) % 3;
  const int nextAxis2 = (axis + 2) % 3;

  const bool inMin1 = point[nextAxis1] >= aabb.GetMinPoint()[nextAxis1];
  const bool inMax1 = point[nextAxis1] <= aabb.GetMaxPoint()[nextAxis1];
  const bool inBounds1 = inMin1 && inMax1;
  const bool inMin2 = point[nextAxis2] >= aabb.GetMinPoint()[nextAxis2];
  const bool inMax2 = point[nextAxis2] <= aabb.GetMaxPoint()[nextAxis2];
  const bool inBounds2 = inMin2 && inMax2;

  if (inBounds1 && inBounds2) {
    if (tMin < 0.f || tMin > dOut) {
      return false;
    }
    normal[axis] = sign ? 1.f : -1.f;
    dOut = tMin;
    point -= normal * sphere.GetRadius();
    return true;
  }

  if (!inBounds1 && !inBounds2) {
    const int pointFlags =
        (1 << axis) * sign | (1 << nextAxis1) * inMin1 | (1 << nextAxis2) * inMin2;
    const CVector3f& aabbPoint = aabb.GetPoint(pointFlags);
    float d;
    if (CollisionUtil::RaySphereIntersection(CSphere(aabbPoint, sphere.GetRadius()),
                                             sphere.GetCenter(), dir, float(dOut), d, point)) {
      int useAxis = -1;
      for (int i = 0; i < 3; ++i) {
        if ((pointFlags & (1 << i)) ? aabbPoint[i] > point[i] : aabbPoint[i] < point[i]) {
          useAxis = i;
          break;
        }
      }

      if (useAxis == -1) {
        normal = (point - aabbPoint).AsNormalized();
        point -= sphere.GetRadius() * normal;
        return true;
      }

      const int useAxisNext1 = (useAxis + 1) % 3;
      const int useAxisNext2 = (useAxis + 2) % 3;
      if (CollisionUtil::LineCircleIntersection2d(sphere.GetCenter(), dir,
                                                  CSphere(aabbPoint, sphere.GetRadius()),
                                                  useAxisNext1, useAxisNext2, d) &&
          d > 0.f && d < dOut) {
        if (point[useAxis] > aabb.GetMaxPoint()[useAxis]) {
          const int useAxisBit = 1 << useAxis;
          if (pointFlags & useAxisBit) {
            return false;
          }

          const CVector3f& aabbPoint1 = aabb.GetPoint(pointFlags | useAxisBit);
          if (CollisionUtil::RaySphereIntersection(CSphere(aabbPoint1, sphere.GetRadius()),
                                                   sphere.GetCenter(), dir, float(dOut), d,
                                                   point)) {
            dOut = d;
            normal = (point - aabbPoint1).AsNormalized();
            point -= normal * sphere.GetRadius();
            return true;
          }
          return false;
        } else if (point[useAxis] < aabb.GetMinPoint()[useAxis]) {
          const int useAxisBit = 1 << useAxis;
          if (!(pointFlags & useAxisBit)) {
            return false;
          }

          const CVector3f& aabbPoint1 = aabb.GetPoint(pointFlags ^ useAxisBit);
          if (CollisionUtil::RaySphereIntersection(CSphere(aabbPoint1, sphere.GetRadius()),
                                                   sphere.GetCenter(), dir, float(dOut), d,
                                                   point)) {
            dOut = d;
            normal = (point - aabbPoint1).AsNormalized();
            point -= normal * sphere.GetRadius();
            return true;
          }
          return false;
        } else {
          normal = point - aabbPoint;
          normal[useAxis] = 0.f;
          normal.Normalize();
          point -= normal * sphere.GetRadius();
          return true;
        }
      }
    } else {
      int reverseCount = 0;
      float dMin = 1.0e10f;
      int minAxis = 0;
      for (int i = 0; i < 3; ++i) {
        if (CMath::AbsF(dir[i]) > FLT_EPSILON) {
          const bool pointMax = (pointFlags & (1 << i)) != 0;
          if (pointMax != (dir[i] > 0.f)) {
            ++reverseCount;
            const float d =
                (1.f / dir[i]) * ((pointMax ? aabb.GetMaxPoint()[i] : aabb.GetMinPoint()[i]) -
                                  sphere.GetCenter()[i]);
            if (d < 0.f) {
              return false;
            }
            if (d < dMin) {
              dMin = d;
              minAxis = i;
            }
          }
        }
      }

      if (reverseCount < 2) {
        return false;
      }

      const int useAxisNext1 = (minAxis + 1) % 3;
      const int useAxisNext2 = (minAxis + 2) % 3;
      if (CollisionUtil::LineCircleIntersection2d(sphere.GetCenter(), dir,
                                                  CSphere(aabbPoint, sphere.GetRadius()),
                                                  useAxisNext1, useAxisNext2, d) &&
          d > 0.f && d < dOut) {
        point = sphere.GetCenter() + d * dir;
        if (point[minAxis] > aabb.GetMaxPoint()[minAxis]) {
          return false;
        }
        if (point[minAxis] < aabb.GetMinPoint()[minAxis]) {
          return false;
        }

        dOut = d;
        normal = point - aabbPoint;
        normal[minAxis] = 0.f;
        normal.Normalize();
        point -= sphere.GetRadius() * normal;
        return true;
      }
      return false;
    }
  }

  int useNextAxis1 = nextAxis1;
  int useNextAxis2 = nextAxis2;
  if (inBounds1) {
    useNextAxis1 = nextAxis2;
    useNextAxis2 = nextAxis1;
  }

  int pointSign = inMin1;
  if (inBounds1) {
    pointSign = inMin2;
  }
  const int pointFlags = ((1 << useNextAxis1) * pointSign) | ((1 << axis) * sign);
  const CVector3f& aabbPoint2 = aabb.GetPoint(pointFlags);
  float d;
  if (LineCircleIntersection2d(sphere.GetCenter(), dir, CSphere(aabbPoint2, sphere.GetRadius()),
                               axis, useNextAxis1, d) &&
      d > 0.f && d < dOut) {
    point = sphere.GetCenter() + d * dir;
    if (point[useNextAxis2] > aabb.GetMaxPoint()[useNextAxis2]) {
      const CVector3f& aabbPoint3 = aabb.GetPoint(pointFlags | (1 << useNextAxis2));
      if (point[useNextAxis2] < expAABB.GetMaxPoint()[useNextAxis2]) {
        if (RaySphereIntersection(CSphere(aabbPoint3, sphere.GetRadius()), sphere.GetCenter(), dir,
                                  float(dOut), d, point)) {
          dOut = d;
          normal = (point - aabbPoint3).AsNormalized();
          point -= sphere.GetRadius() * normal;
          return true;
        }
      }
      return false;
    }

    if (point[useNextAxis2] < aabb.GetMinPoint()[useNextAxis2]) {
      if (point[useNextAxis2] > expAABB.GetMinPoint()[useNextAxis2]) {
        if (RaySphereIntersection(CSphere(aabbPoint2, sphere.GetRadius()), sphere.GetCenter(), dir,
                                  float(dOut), d, point)) {
          dOut = d;
          normal = (point - aabbPoint2).AsNormalized();
          point -= sphere.GetRadius() * normal;
          return true;
        }
      }
      return false;
    } else {
      dOut = d;
      normal = point - aabbPoint2;
      normal[useNextAxis2] = 0.f;
      normal.Normalize();
      point -= sphere.GetRadius() * normal;
      return true;
    }
  }

  return false;
}

bool TriSphereOverlap(const CSphere& sphere, const CVector3f& trivert0, const CVector3f& trivert1,
                      const CVector3f& trivert2) {
  return !(TriPointSqrDist(sphere.GetCenter(), trivert0, trivert1, trivert2, 0, 0) >
           sphere.GetRadius() * sphere.GetRadius());
}

bool TriSphereIntersection(const CSphere& sphere, const CVector3f& trivert0,
                           const CVector3f& trivert1, const CVector3f& trivert2, CVector3f& point,
                           CVector3f& normal) {
  float baryX;
  float baryY;
  if (TriPointSqrDist(sphere.GetCenter(), trivert0, trivert1, trivert2, &baryX, &baryY) >
      sphere.GetRadius() * sphere.GetRadius()) {
    return false;
  }

  float baryZ = 1.f - (baryX + baryY);
  point = CMath::BaryToWorld(trivert2, trivert1, trivert0, CVector3f(baryX, baryY, baryZ));

  if (baryX == 0.f || baryX == 1.f || baryY == 0.f || baryY == 1.f || baryZ == 0.f ||
      baryZ == 1.f) {
    const CUnitVector3f& surf = sphere.GetSurfaceNormal(point);
    const CVector3f& inv = -surf;
    normal = inv;
  } else {
    normal = CVector3f::Cross(trivert1 - trivert0, trivert2 - trivert0).AsNormalized();
  }

  return true;
}

double TriPointSqrDist(const CVector3f& point, const CVector3f& trivert0, const CVector3f& trivert1,
                       const CVector3f& trivert2, float* baryX, float* baryY) {
  const CVector3d A(trivert0 - point);
  const CVector3d B(trivert1 - trivert0);
  const CVector3d C(trivert2 - trivert0);

  const double bMag = B.MagSquared();
  const double cMag = C.MagSquared();
  const double bDotC = CVector3d::Dot(B, C);
  const double aDotB = CVector3d::Dot(A, B);
  const double aDotC = CVector3d::Dot(A, C);
  double ret = A.MagSquared();

  const double rej = CMath::AbsD(bMag * cMag - bDotC * bDotC);
  double retB = bDotC * aDotC - cMag * aDotB;
  double retA = bDotC * aDotB - bMag * aDotC;

  if (retB + retA <= rej) {
    if (retB < 0.0) {
      if (retA < 0.0) {
        if (aDotB < 0.0) {
          retA = 0.0;
          if (-aDotB >= bMag) {
            retB = 1.0;
            ret += 2.0 * aDotB + bMag;
          } else {
            retB = -aDotB / bMag;
            ret += aDotB * retB;
          }
        } else {
          retB = 0.0;
          if (aDotC >= 0.0) {
            retA = 0.0;
          } else if (-aDotC >= cMag) {
            retA = 1.0;
            ret += 2.0 * aDotC + cMag;
          } else {
            retA = -aDotC / cMag;
            ret += aDotC * retA;
          }
        }
      } else {
        retB = 0.0;
        if (aDotC >= 0.0) {
          retA = 0.0;
        } else if (-aDotC >= cMag) {
          retA = 1.0;
          ret += 2.0 * aDotC + cMag;
        } else {
          retA = -aDotC / cMag;
          ret += aDotC * retA;
        }
      }
    } else if (retA < 0.0) {
      retA = 0.0;
      if (aDotB >= 0.0) {
        retB = 0.0;
      } else if (-aDotB >= bMag) {
        retB = 1.0;
        ret += 2.0 * aDotB + bMag;
      } else {
        retB = -aDotB / bMag;
        ret += aDotB * retB;
      }
    } else {
      const double f3 = 1.0 / rej;
      retA *= f3;
      retB *= f3;
      ret += retB * (2.0 * aDotB + (bMag * retB + bDotC * retA)) +
             retA * (2.0 * aDotC + (bDotC * retB + cMag * retA));
    }
  } else if (retB < 0.0) {
    retB = bDotC + aDotB;
    retA = cMag + aDotC;
    if (retA > retB) {
      retA -= retB;
      retB = bMag - 2.0 * bDotC;
      retB = cMag + retB;
      if (retA >= retB) {
        retB = 1.0;
        retA = 0.0;
        ret += 2.0 * aDotB + bMag;
      } else {
        retB = retA / retB;
        retA = 1.0 - retB;
        ret += retB * (2.0 * aDotB + (bMag * retB + bDotC * retA)) +
               retA * (2.0 * aDotC + (bDotC * retB + cMag * retA));
      }
    } else {
      retB = 0.0;
      if (retA <= 0.0) {
        retA = 1.0;
        ret += 2.0 * aDotC + cMag;
      } else if (aDotC >= 0.0) {
        retA = 0.0;
      } else {
        retA = -aDotC / cMag;
        ret += aDotC * retA;
      }
    }
  } else if (retA < 0.0) {
    double tmp1 = bDotC + aDotC;
    double tmp2 = bMag + aDotB;
    retB = tmp1;
    retA = tmp2;
    if (retA > retB) {
      retA -= retB;
      retB = bMag - 2.0 * bDotC;
      retB = cMag + retB;
      if (retA >= retB) {
        retA = 1.0;
        retB = 0.0;
        ret += 2.0 * aDotC + cMag;
      } else {
        retA /= retB;
        retB = 1.0 - retA;
        ret += retB * (2.0 * aDotB + (bMag * retB + bDotC * retA)) +
               retA * (2.0 * aDotC + (bDotC * retB + cMag * retA));
      }
    } else {
      retA = 0.0;
      if (retB <= 0.0) {
        retB = 1.0;
        ret += 2.0 * aDotB + bMag;
      } else if (aDotB >= 0.0) {
        retB = 0.0;
      } else {
        retB = -aDotB / bMag;
        ret += aDotB * retB;
      }
    }
  } else {
    retB = cMag + aDotC;
    retB -= bDotC;
    retA = retB - aDotB;
    if (retA <= 0.0) {
      retB = 0.0;
      retA = 1.0;
      ret += 2.0 * aDotC + cMag;
    } else {
      retB = bMag - 2.0 * bDotC;
      retB = cMag + retB;
      if (retA >= retB) {
        retB = 1.0;
        retA = 0.0;
        ret += 2.0 * aDotB + bMag;
      } else {
        retB = retA / retB;
        retA = 1.0 - retB;
        ret += retB * (2.0 * aDotB + (bMag * retB + bDotC * retA)) +
               retA * (2.0 * aDotC + (bDotC * retB + cMag * retA));
      }
    }
  }

  if (baryX != 0) {
    *baryX = float(retA);
  }
  if (baryY != 0) {
    *baryY = float(retB);
  }

  return ret;
}

bool AABoxAABoxIntersection(const CAABox& left, const CAABox& right) {
  const float* leftVals = reinterpret_cast< const float* >(&left);
  const float* rightVals = reinterpret_cast< const float* >(&right);

  const float leftMinX = leftVals[0];
  float minX = rightVals[0];
  if (leftMinX > minX) {
    minX = leftMinX;
  }

  const float leftMinY = leftVals[1];
  float minY = rightVals[1];
  if (leftMinY > minY) {
    minY = leftMinY;
  }

  const float leftMinZ = leftVals[2];
  float minZ = rightVals[2];
  if (leftMinZ > minZ) {
    minZ = leftMinZ;
  }

  const float leftMaxX = leftVals[3];
  float maxX = rightVals[3];
  if (leftMaxX < maxX) {
    maxX = leftMaxX;
  }

  const float leftMaxY = leftVals[4];
  float maxY = rightVals[4];
  if (leftMaxY < maxY) {
    maxY = leftMaxY;
  }

  if (minX >= maxX || minY >= maxY) {
    return false;
  }

  const float leftMaxZ = leftVals[5];
  float maxZ = rightVals[5];
  if (leftMaxZ < maxZ) {
    maxZ = leftMaxZ;
  }

  if (minZ < maxZ) {
    return true;
  }
  return false;
}

bool AABoxAABoxIntersection(const CAABox& left, const CMaterialList& leftFilter,
                            const CAABox& right, const CMaterialList& rightFilter,
                            CCollisionInfoList& list) {
  const float* leftVals = reinterpret_cast< const float* >(&left);
  const float* rightVals = reinterpret_cast< const float* >(&right);

  float maxOfMinZ = rightVals[2];
  const float leftMinZ = leftVals[2];
  if (leftMinZ > maxOfMinZ) {
    maxOfMinZ = leftMinZ;
  }

  float maxOfMinY = rightVals[1];
  const float leftMinY = leftVals[1];
  if (leftMinY > maxOfMinY) {
    maxOfMinY = leftMinY;
  }

  float maxOfMinX = rightVals[0];
  const float leftMinX = leftVals[0];
  if (leftMinX > maxOfMinX) {
    maxOfMinX = leftMinX;
  }

  float minOfMaxZ = rightVals[5];
  const float leftMaxZ = leftVals[5];
  if (leftMaxZ < minOfMaxZ) {
    minOfMaxZ = leftMaxZ;
  }

  float minOfMaxY = rightVals[4];
  const float leftMaxY = leftVals[4];
  if (leftMaxY < minOfMaxY) {
    minOfMaxY = leftMaxY;
  }

  float minOfMaxX = rightVals[3];
  const float leftMaxX = leftVals[3];
  if (leftMaxX < minOfMaxX) {
    minOfMaxX = leftMaxX;
  }

  CVector3f overlapMax(minOfMaxX, minOfMaxY, minOfMaxZ);
  CVector3f overlapMin(maxOfMinX, maxOfMinY, maxOfMinZ);
  if (overlapMax.GetX() <= overlapMin.GetX() || overlapMax.GetY() <= overlapMin.GetY() ||
      overlapMax.GetZ() <= overlapMin.GetZ()) {
    return false;
  }

  CAABox overlapBox(overlapMin, overlapMax);

  const float rightMinX = rightVals[0];
  const float leftMinX2 = leftVals[0];
  const float rightMaxX = rightVals[3];
  const float leftMaxX2 = leftVals[3];
  const float rightMinY = rightVals[1];
  const float leftMinY2 = leftVals[1];
  const float rightMaxY = rightVals[4];
  const float leftMaxY2 = leftVals[4];
  uint flags[3];
  flags[0] = ((uint)(uchar)((leftMinX2 <= rightMinX) << 1) << 0x1c) >> 0x1d |
             (uint)(uchar)((leftMinX2 <= rightMaxX) << 1) |
             ((uint)(uchar)((leftMaxX2 <= rightMaxX) << 1) << 0x1c) >> 0x1a |
             ((uint)(uchar)((leftMaxX2 <= rightMinX) << 1) << 0x1c) >> 0x1b;

  const float rightMinZ = rightVals[2];
  const float leftMinZ2 = leftVals[2];
  const float rightMaxZ = rightVals[5];
  const float leftMaxZ2 = leftVals[5];
  flags[1] = ((uint)(uchar)((leftMinY2 <= rightMinY) << 1) << 0x1c) >> 0x1d |
             (uint)(uchar)((leftMinY2 <= rightMaxY) << 1) |
             ((uint)(uchar)((leftMaxY2 <= rightMaxY) << 1) << 0x1c) >> 0x1a |
             ((uint)(uchar)((leftMaxY2 <= rightMinY) << 1) << 0x1c) >> 0x1b;
  flags[2] = ((uint)(uchar)((leftMinZ2 <= rightMinZ) << 1) << 0x1c) >> 0x1d |
             (uint)(uchar)((leftMinZ2 <= rightMaxZ) << 1) |
             ((uint)(uchar)((leftMaxZ2 <= rightMaxZ) << 1) << 0x1c) >> 0x1a |
             ((uint)(uchar)((leftMaxZ2 <= rightMinZ) << 1) << 0x1c) >> 0x1b;

  const uint* flag = flags;
  const CVector3f* normal = normalTable;
  for (int i = 0; i < 3; ++i) {
    const uint u = *flag;
    if (u != 10) {
      if (u < 10) {
        if (u > 1) {
          const CVector3f& opposite = normalTable[i * 2 + 1];
          CVector3f inv(-normal[1].GetX(), -normal[1].GetY(), -normal[1].GetZ());
          list.Add(CCollisionInfo(overlapBox, leftFilter, rightFilter, opposite, inv), false);
        }
      } else if (u < 12) {
        CVector3f inv(-normal->GetX(), -normal->GetY(), -normal->GetZ());
        list.Add(CCollisionInfo(overlapBox, leftFilter, rightFilter, *normal, inv), false);
      }
    }
    ++flag;
    normal += 2;
  }

  if (list.GetCount() == 0) {
    CVector3f neg4(-normalTable[4].GetX(), -normalTable[4].GetY(), -normalTable[4].GetZ());
    list.Add(CCollisionInfo(overlapBox, leftFilter, rightFilter, normalTable[4], neg4), false);

    CVector3f neg5(-normalTable[5].GetX(), -normalTable[5].GetY(), -normalTable[5].GetZ());
    list.Add(CCollisionInfo(overlapBox, leftFilter, rightFilter, normalTable[5], neg5), false);
  }

  return true;
}

bool AABoxSphereIntersection(const CAABox& box, const CSphere& sphere) {
  const CVector3f& sphereCenter = sphere.GetCenter();
  const CVector3f& boxMaxVal = box.GetMaxPoint();
  const CVector3f& boxMinVal = box.GetMinPoint();

  int comps = 0;
  register float dist = 0.f;
  for (int i = 0; i < 3; ++i) {
    if (sphereCenter[i] < boxMinVal[i]) {
      if (sphereCenter[i] + sphere.GetRadius() >= boxMinVal[i]) {
        float d = sphereCenter[i] - boxMinVal[i];
        comps |= 1 << (i * 2);
        float dsq = d * d;
        dist += dsq;
      } else {
        return false;
      }
    } else {
      if (sphereCenter[i] > boxMaxVal[i]) {
        if (sphereCenter[i] - sphere.GetRadius() <= boxMaxVal[i]) {
          float d = sphereCenter[i] - boxMaxVal[i];
          comps |= 1 << (i * 2 + 1);
          float dsq = d * d;
          dist += dsq;
        } else {
          return false;
        }
      }
    }
  }

  if (comps == 0) {
    return true;
  }
  return !(dist > sphere.GetRadius() * sphere.GetRadius());
}

float AABoxSphereIntersectionRadius(const CAABox& aabb, const CSphere& sphere) {
  const CVector3f& sphereCenter = sphere.GetCenter();
  const CVector3f& boxMaxVal = aabb.GetMaxPoint();
  const CVector3f& boxMinVal = aabb.GetMinPoint();

  int comps = 0;
  float dist = 0.f;
  for (int i = 0; i < 3; ++i) {
    if (sphereCenter[i] < boxMinVal[i]) {
      if (sphereCenter[i] + sphere.GetRadius() >= boxMinVal[i]) {
        float d = sphereCenter[i] - boxMinVal[i];
        comps |= 1 << (i * 2);
        float dsq = d * d;
        dist += dsq;
      } else {
        return -1.f;
      }
    } else {
      if (sphereCenter[i] > boxMaxVal[i]) {
        if (sphereCenter[i] - sphere.GetRadius() <= boxMaxVal[i]) {
          float d = sphereCenter[i] - boxMaxVal[i];
          comps |= 1 << (i * 2 + 1);
          float dsq = d * d;
          dist += dsq;
        } else {
          return -1.f;
        }
      }
    }
  }

  if (comps == 0) {
    return dist;
  }
  if (dist > sphere.GetRadius() * sphere.GetRadius()) {
    return -1.f;
  }
  return dist;
}

bool RayTriangleIntersection(const CVector3f& point, const CVector3f& dir, const CVector3f* verts,
                             float& d) {
  CVector3f v0tov1 = verts[1] - verts[0];
  CVector3f v0tov2 = verts[2] - verts[0];
  const CVector3f cross0 = CVector3f::Cross(dir, v0tov2);
  const float dot0 = CVector3f::Dot(v0tov1, cross0);
  if (dot0 < FLT_EPSILON) {
    return false;
  }

  CVector3f v0toPoint = point - verts[0];
  const float dot1 = CVector3f::Dot(v0toPoint, cross0);
  if (dot1 < 0.f || dot1 > dot0) {
    return false;
  }

  const CVector3f cross1 = CVector3f::Cross(v0toPoint, v0tov1);
  const float dot2 = CVector3f::Dot(cross1, dir);
  if (dot2 < 0.f || dot1 + dot2 > dot0) {
    return false;
  }

  const float finalT = (1.f / dot0) * CVector3f::Dot(cross1, v0tov2);
  if (finalT < 0.f || finalT >= d) {
    return false;
  }

  d = finalT;
  return true;
}

bool RayTriangleIntersection_Double(const CVector3f& point, const CVector3f& dir,
                                    const CVector3f* verts, double& d) {
  CVector3d v0tov1(verts[1] - verts[0]);
  CVector3d v0tov2(verts[2] - verts[0]);
  CVector3d cross0 = CVector3d::Cross(CVector3d(dir), v0tov2);
  const double dot0 = CVector3d::Dot(v0tov1, cross0);
  if (dot0 < DBL_EPSILON) {
    return false;
  }

  CVector3d v0toPoint(point - verts[0]);
  const double dot1 = CVector3d::Dot(v0toPoint, cross0);
  if (dot1 < 0.0 || dot1 > dot0) {
    return false;
  }

  CVector3d cross1 = CVector3d::Cross(v0toPoint, v0tov1);
  const double dot2 = CVector3d::Dot(cross1, CVector3d(dir));
  if (dot2 < 0.0 || dot1 + dot2 > dot0) {
    return false;
  }

  const double finalT = (1.0 / dot0) * CVector3d::Dot(cross1, v0tov2);
  if (finalT < 0.0 || finalT >= d) {
    return false;
  }

  d = finalT;
  return true;
}

void FilterByClosestNormal(const CVector3f& norm, const CCollisionInfoList& in,
                           CCollisionInfoList& out) {
  const CCollisionInfo* pInfo = &in[0];
  float maxDot = -1.1f;
  int i;
  int idx = -1;
  for (i = 0; i < in.GetCount(); ++i) {
    float dot = CVector3f::Dot(pInfo->GetNormalLeft(), norm);
    if (dot > maxDot) {
      maxDot = dot;
      idx = i;
    }
    pInfo++;
  }

  if (idx != -1) {
    out.Add(in[idx], false);
  }
}

void FilterOutBackfaces(const CVector3f& relVel, const CCollisionInfoList& in,
                        CCollisionInfoList& out) {
  if (relVel.CanBeNormalized()) {
    CVector3f norm = relVel.AsNormalized();
    float x = norm.GetX();
    float y = norm.GetY();
    float z = norm.GetZ();
    float limit = 0.001f;
    for (int i = 0; i < in.GetCount(); ++i) {
      if (x * in[i].GetNormalLeft().GetX() + y * in[i].GetNormalLeft().GetY() +
              z * in[i].GetNormalLeft().GetZ() <
          limit) {
        out.Add(in[i], false);
      }
    }
  } else {
    out = in;
  }
}

void AddAverageToFront(const CCollisionInfoList& in, CCollisionInfoList& out) {
  const int count = in.GetCount();
  CVector3f normAccum(0.f, 0.f, 0.f);
  CVector3f pointAccum(0.f, 0.f, 0.f);
  if (count > 1) {
    for (int i = 0; i < count; ++i) {
      pointAccum += in[i].GetPoint();
      normAccum += in[i].GetNormalLeft();
    }

    if (normAccum.CanBeNormalized()) {
      CVector3f normal = normAccum.AsNormalized();
      normAccum = normal;
      const float factor = 1.f / float(count);
      pointAccum *= factor;
      out.Add(
          CCollisionInfo(pointAccum, in[0].GetMaterialRight(), in[0].GetMaterialLeft(), normAccum),
          false);
    }
  }

  for (int i = 0; i < count; ++i) {
    out.Add(in[i], false);
  }
}

int RayAABoxIntersection(const CMRay& ray, const CAABox& box, float& tMin, float& tMax) {
  float start[3];
  float dir[3];
  float* dirPtr = dir;
  float* startPtr = start;

  start[0] = ray.GetStart().GetX();
  start[1] = ray.GetStart().GetY();
  start[2] = ray.GetStart().GetZ();
  dir[0] = ray.GetDirection().GetX();
  dir[1] = ray.GetDirection().GetY();
  dir[2] = ray.GetDirection().GetZ();
  tMin = -999999.f;
  tMax = 999999.f;
  const CAABox* boxIt = &box;
  const CVector3f* boxMaxIt =
      reinterpret_cast< const CVector3f* >(reinterpret_cast< const char* >(boxIt) + 0xc);

  for (int i = 3; i != 0; --i) {
    const float dirI = *dirPtr;
    float startI = *startPtr;
    const float boxMinI = boxIt->GetMinPoint().GetX();
    float boxMaxI = boxMaxIt->GetX();

    if (close_enough(dirI, 0.f)) {
      if (startI < boxMinI || startI > boxMaxI) {
        return 0;
      }
    } else {
      if (dirI < 0.f) {
        const float dirRecip = 1.f / dirI;
        float maxMinusStart = boxMaxI - startI;
        float minMinusStart = boxMinI - startI;
        if (maxMinusStart < tMin * dirI) {
          tMin = maxMinusStart * dirRecip;
        }
        if (minMinusStart > tMax * dirI) {
          tMax = minMinusStart * dirRecip;
        }
      } else {
        const float dirRecip = 1.f / dirI;
        float minMinusStart = boxMinI - startI;
        float maxMinusStart = boxMaxI - startI;
        if (minMinusStart > tMin * dirI) {
          tMin = minMinusStart * dirRecip;
        }
        if (maxMinusStart < tMax * dirI) {
          tMax = maxMinusStart * dirRecip;
        }
      }
    }

    dirPtr += 1;
    startPtr += 1;
    boxIt = reinterpret_cast< const CAABox* >(reinterpret_cast< const char* >(boxIt) + 4);
    boxMaxIt = reinterpret_cast< const CVector3f* >(reinterpret_cast< const char* >(boxMaxIt) + 4);
  }

  if (tMin <= tMax) {
    return 2;
  }
  return 0;
}

int RayAABoxIntersection_Double(const CMRay& ray, const CAABox& box, CVector3f& normal,
                                double& penetration) {
  bool inside = true;
  int sign[3] = {2, 2, 2};
  CVector3d rayStart(ray.GetStart());
  CVector3d rayDelta(ray.GetDelta());
  double maxT[3] = {-1.0, -1.0, -1.0};
  CVector3d boxMin(box.GetMinPoint());
  CVector3d boxMax(box.GetMaxPoint());
  CVector3d coord(0.0, 0.0, 0.0);

  double deltaX = rayDelta.GetX();
  double deltaY;
  double deltaZ;
  if (0.0 != deltaX && (deltaY = rayDelta.GetY(), 0.0 != deltaY) &&
      (deltaZ = rayDelta.GetZ(), 0.0 != deltaZ)) {
    double startX = rayStart.GetX();
    double minX = boxMin.GetX();
    if (startX < minX) {
      sign[0] = 1;
      inside = false;
      maxT[0] = (minX - startX) / deltaX;
    } else {
      double maxX = boxMax.GetX();
      if (startX > maxX) {
        sign[0] = 0;
        inside = false;
        maxT[0] = (maxX - startX) / deltaX;
      }
    }

    double startY = rayStart.GetY();
    double minY = boxMin.GetY();
    if (startY < minY) {
      sign[1] = 1;
      inside = false;
      maxT[1] = (minY - startY) / deltaY;
    } else {
      double maxY = boxMax.GetY();
      if (startY > maxY) {
        sign[1] = 0;
        inside = false;
        maxT[1] = (maxY - startY) / deltaY;
      }
    }

    double startZ = rayStart.GetZ();
    double minZ = boxMin.GetZ();
    if (startZ < minZ) {
      sign[2] = 1;
      inside = false;
      maxT[2] = (minZ - startZ) / deltaZ;
    } else {
      double maxZ = boxMax.GetZ();
      if (startZ > maxZ) {
        sign[2] = 0;
        inside = false;
        maxT[2] = (maxZ - startZ) / deltaZ;
      }
    }

    if (inside) {
      penetration = 0.0;
      return 1;
    }
  } else {
    double candidateX;
    double candidateY;
    double candidateZ;

    double startX = rayStart.GetX();
    double minX = boxMin.GetX();
    if (startX < minX) {
      sign[0] = 1;
      inside = false;
      candidateX = minX;
    } else {
      double maxX = boxMax.GetX();
      if (startX > maxX) {
        sign[0] = 0;
        inside = false;
        candidateX = maxX;
      }
    }

    double startY = rayStart.GetY();
    double minY = boxMin.GetY();
    if (startY < minY) {
      sign[1] = 1;
      inside = false;
      candidateY = minY;
    } else {
      double maxY = boxMax.GetY();
      if (startY > maxY) {
        sign[1] = 0;
        inside = false;
        candidateY = maxY;
      }
    }

    double startZ = rayStart.GetZ();
    double minZ = boxMin.GetZ();
    if (startZ < minZ) {
      sign[2] = 1;
      inside = false;
      candidateZ = minZ;
    } else {
      double maxZ = boxMax.GetZ();
      if (startZ > maxZ) {
        sign[2] = 0;
        inside = false;
        candidateZ = maxZ;
      }
    }

    if (inside) {
      penetration = 0.0;
      return 1;
    }

    if (sign[0] != 2 && 0.0 != deltaX) {
      maxT[0] = (candidateX - startX) / deltaX;
    }
    if (sign[1] != 2 && (deltaY = rayDelta.GetY(), 0.0 != deltaY)) {
      maxT[1] = (candidateY - startY) / deltaY;
    }
    if (sign[2] != 2 && (deltaZ = rayDelta.GetZ(), 0.0 != deltaZ)) {
      maxT[2] = (candidateZ - startZ) / deltaZ;
    }
  }

  int whichPlane = 0;
  double maxCoord = maxT[0];
  if (maxCoord < maxT[1]) {
    whichPlane = 1;
    maxCoord = maxT[1];
  }
  if (maxCoord < maxT[2]) {
    whichPlane = 2;
    maxCoord = maxT[2];
  }

  if (maxCoord < 0.0) {
    return 0;
  }
  if (maxCoord > 1.0) {
    return 0;
  }

  if (whichPlane != 0) {
    coord[0] = maxCoord * deltaX + rayStart.GetX();
    if (coord[0] < boxMin.GetX() || coord[0] > boxMax.GetX()) {
      return 0;
    }
  }

  if (whichPlane != 1) {
    coord[1] = maxCoord * rayDelta.GetY() + rayStart.GetY();
    if (coord[1] < boxMin.GetY() || coord[1] > boxMax.GetY()) {
      return 0;
    }
  }
  if (whichPlane != 2) {
    coord[2] = maxCoord * rayDelta.GetZ() + rayStart.GetZ();
    if (coord[2] < boxMin.GetZ() || coord[2] > boxMax.GetZ()) {
      return 0;
    }
  }

  penetration = maxCoord;
  normal = CVector3f::Zero();
  if (sign[whichPlane] == 1) {
    (&normal[0])[whichPlane] = -1.f;
  } else {
    (&normal[0])[whichPlane] = 1.f;
  }
  return 2;
}

int RayAABoxIntersection(const CMRay& ray, const CAABox& box, CVector3f& normal,
                         float& penetration) {
  int sign[3] = {2, 2, 2};
  float maxT[3] = {-1.f, -1.f, -1.f};
  const float zero = 0.f;
  const CVector3f& zeroVec = CVector3f(CVector3f::Zero());
  float coord[3];
  float* const coordVals = coord;
  bool inside = true;
  float deltaX = ray.GetDelta().GetX();
  float deltaY;
  float deltaZ;

  if (zero != deltaX && (deltaY = ray.GetDelta().GetY(), zero != deltaY) &&
      (deltaZ = ray.GetDelta().GetZ(), zero != deltaZ)) {
    float startX = ray.GetStart().GetX();
    float minX = box.GetMinPoint().GetX();
    if (startX < minX) {
      sign[0] = 1;
      inside = false;
      maxT[0] = (minX - startX) / deltaX;
    } else {
      float maxX = box.GetMaxPoint().GetX();
      if (startX > maxX) {
        sign[0] = 0;
        inside = false;
        maxT[0] = (maxX - startX) / deltaX;
      }
    }

    float startY = ray.GetStart().GetY();
    float minY = box.GetMinPoint().GetY();
    if (startY < minY) {
      sign[1] = 1;
      inside = false;
      maxT[1] = (minY - startY) / deltaY;
    } else {
      float maxY = box.GetMaxPoint().GetY();
      if (startY > maxY) {
        sign[1] = 0;
        inside = false;
        maxT[1] = (maxY - startY) / deltaY;
      }
    }

    float startZ = ray.GetStart().GetZ();
    float minZ = box.GetMinPoint().GetZ();
    if (startZ < minZ) {
      sign[2] = 1;
      inside = false;
      maxT[2] = (minZ - startZ) / deltaZ;
    } else {
      float maxZ = box.GetMaxPoint().GetZ();
      if (startZ > maxZ) {
        sign[2] = 0;
        inside = false;
        maxT[2] = (maxZ - startZ) / deltaZ;
      }
    }

    if (inside) {
      penetration = 0.f;
      return 1;
    }
  } else {
    float candidateX;
    float candidateY;
    float candidateZ;
    float startX = ray.GetStart().GetX();
    float minX = box.GetMinPoint().GetX();
    if (startX < minX) {
      sign[0] = 1;
      inside = false;
      candidateX = minX;
    } else {
      float maxX = box.GetMaxPoint().GetX();
      if (startX > maxX) {
        sign[0] = 0;
        inside = false;
        candidateX = maxX;
      }
    }

    float startY = ray.GetStart().GetY();
    float minY = box.GetMinPoint().GetY();
    if (startY < minY) {
      sign[1] = 1;
      inside = false;
      candidateY = minY;
    } else {
      float maxY = box.GetMaxPoint().GetY();
      if (startY > maxY) {
        sign[1] = 0;
        inside = false;
        candidateY = maxY;
      }
    }

    float startZ = ray.GetStart().GetZ();
    float minZ = box.GetMinPoint().GetZ();
    if (startZ < minZ) {
      sign[2] = 1;
      inside = false;
      candidateZ = minZ;
    } else {
      float maxZ = box.GetMaxPoint().GetZ();
      if (startZ > maxZ) {
        sign[2] = 0;
        inside = false;
        candidateZ = maxZ;
      }
    }

    if (inside) {
      penetration = 0.f;
      return 1;
    }

    if (sign[0] != 2 && zero != deltaX) {
      maxT[0] = (candidateX - startX) / deltaX;
    }
    if (sign[1] != 2 && (deltaY = ray.GetDelta().GetY(), zero != deltaY)) {
      maxT[1] = (candidateY - startY) / deltaY;
    }
    if (sign[2] != 2 && (deltaZ = ray.GetDelta().GetZ(), zero != deltaZ)) {
      maxT[2] = (candidateZ - startZ) / deltaZ;
    }
  }

  int whichPlane = 0;
  float maxCoord = maxT[0];
  if (maxCoord < maxT[1]) {
    whichPlane = 1;
    maxCoord = maxT[1];
  }
  if (maxCoord < maxT[2]) {
    whichPlane = 2;
    maxCoord = maxT[2];
  }

  if (maxCoord < zero) {
    return 0;
  }
  if (maxCoord > 1.f) {
    return 0;
  }

  if (whichPlane != 0) {
    coordVals[0] = maxCoord * deltaX + ray.GetStart().GetX();
    if (coordVals[0] < box.GetMinPoint().GetX() || coordVals[0] > box.GetMaxPoint().GetX()) {
      return 0;
    }
  }
  if (whichPlane != 1) {
    coordVals[1] = maxCoord * ray.GetDelta().GetY() + ray.GetStart().GetY();
    if (coordVals[1] < box.GetMinPoint().GetY() || coordVals[1] > box.GetMaxPoint().GetY()) {
      return 0;
    }
  }
  if (whichPlane != 2) {
    coordVals[2] = maxCoord * ray.GetDelta().GetZ() + ray.GetStart().GetZ();
    if (coordVals[2] < box.GetMinPoint().GetZ() || coordVals[2] > box.GetMaxPoint().GetZ()) {
      return 0;
    }
  }

  penetration = maxCoord;
  normal = zeroVec;
  if (sign[whichPlane] == 1) {
    (&normal[0])[whichPlane] = -1.f;
  } else {
    (&normal[0])[whichPlane] = 1.f;
  }
  return 2;
}

bool RayPlaneIntersection(const CVector3f& from, const CVector3f& to, const CPlane& plane,
                          CVector3f& point) {
  CVector3f delta = to - from;
  const CVector3f planeNorm(plane.GetNormal());
  if (CMath::AbsF(CVector3f::Dot(delta.AsNormalized(), planeNorm)) < 0.01f) {
    return false;
  }

  float tmp =
      -(CVector3f::Dot(from, planeNorm) - plane.GetConstant()) / CVector3f::Dot(delta, planeNorm);
  if (tmp < -0.f || tmp > 1.0001f) {
    return false;
  }

  point = from + tmp * delta;
  return true;
}

bool RaySphereIntersection_Double(const CSphere& sphere, const CVector3f& pos, const CVector3f& dir,
                                  double& T) {
  bool result = false;
  CVector3d sphereToPosCopy = CVector3d(pos) - CVector3d(sphere.GetCenter());
  CVector3d dirDCopy = CVector3d(dir);
  const double rad = sphere.GetRadius();
  const double f30 = CVector3d::Dot(sphereToPosCopy, dirDCopy) * 2.0;
  const double f1 = f30 * f30 - 4.0 * (sphereToPosCopy.MagSquared() - rad * rad);

  if (f1 >= 0.0) {
    const double root = CMath::SqrtD(f1);
    const double intersectT = 0.5 * (-f30 - root);
    if (T == 0.0 || intersectT < T) {
      T = intersectT;
      result = true;
    }
  }

  return result;
}

bool RaySphereIntersection(const CSphere& sphere, const CVector3f& pos, const CVector3f& dir,
                           float mag, float& T, CVector3f& point) {
  const CVector3f rayToSphere = sphere.GetCenter() - pos;
  const float dirDot = CVector3f::Dot(rayToSphere, dir);
  const float magSq = rayToSphere.MagSquared();
  const float radSq = sphere.GetRadius() * sphere.GetRadius();
  float intersectSq = (dirDot * dirDot);

  if (dirDot < 0.f && magSq > radSq) {
    return false;
  }
  intersectSq = radSq - (magSq - intersectSq);

  if (intersectSq < 0.f) {
    return false;
  }
  intersectSq = CMath::SqrtF(intersectSq);
  T = magSq > radSq ? dirDot - intersectSq : dirDot + intersectSq;

  if (T < mag || mag == 0.f) {
    point = pos + T * dir;
    return true;
  }

  return false;
}
} // namespace CollisionUtil
