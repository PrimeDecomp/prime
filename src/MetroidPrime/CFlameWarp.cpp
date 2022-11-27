#include "MetroidPrime/CFlameWarp.hpp"

#include "MetroidPrime/CStateManager.hpp"

#include "Collision/CMaterialFilter.hpp"
#include "Collision/CRayCastResult.hpp"
#include "Kyoto/Graphics/CColor.hpp"

#include "rstl/algorithm.hpp"
#include "rstl/pair.hpp"
#include "rstl/vector.hpp"


CFlameWarp::CFlameWarp(float maxInfluenceDist, const CVector3f& warpPoint, bool collisionWarp)
: x4_collisionPoints(warpPoint)
, x74_warpPoint(warpPoint)
, x80_floatingPoint(warpPoint)

, x8c_maxDistSq(0.f)
, x90_minSize(FLT_MAX)
, x94_maxSize(FLT_MIN)
, x98_maxInfluenceDistSq(maxInfluenceDist * maxInfluenceDist)
, x9c_stateMgr(nullptr)
, xa0_24_activated(false)
, xa0_25_collisionWarp(collisionWarp)
, xa0_26_processed(false) {}

CFlameWarp::~CFlameWarp() {}

bool CFlameWarp::UpdateWarp() { return xa0_24_activated; }

class Comparer {
public:
  bool operator()(const rstl::pair< float, uchar >& left,
                  const rstl::pair< float, uchar >& right) const {
    return left.first < right.first;
  }
};

void CFlameWarp::ModifyParticles(int particleCount, int stripe, int*, CVector3f* particlePos,
                                 CVector3f* particlePrevPos, CVector3f* particleVelocity,
                                 CColor* color, float* lineLengthOrSize, float* lineWidthOrRota) {

  if (x9c_stateMgr == nullptr || particleCount < 9) {
    return;
  }

  rstl::vector< rstl::pair< float, uchar > > vec;
  vec.reserve(particleCount);

  x90_minSize = FLT_MAX;
  x94_maxSize = FLT_MIN;
  float maxTransp = 0.f;

  int idx = 0;
  for (int i = 0; i < particleCount; ++i) {
    CVector3f& partPos = particlePos[idx];
    const float transp = 1.f - color[idx].GetAlpha();

    if (transp > maxTransp) {
      const float distSq = (partPos - x74_warpPoint).MagSquared();
      if (distSq > x8c_maxDistSq && distSq < x98_maxInfluenceDistSq) {
        x8c_maxDistSq = distSq;
        maxTransp = transp;
        x80_floatingPoint = partPos;
      }
    }

    if (lineLengthOrSize[idx] < x90_minSize) {
      x90_minSize = lineLengthOrSize[idx];
    }
    if (lineLengthOrSize[idx] > x94_maxSize) {
      x94_maxSize = lineLengthOrSize[idx];
    }

    vec.push_back(rstl::pair< float, uchar >(0.f, i));
    if (xa0_25_collisionWarp) {
      CVector3f& prevPos = particlePrevPos[idx];
      CVector3f& partVel = particleVelocity[idx];
      const CVector3f delta = partPos - prevPos;

      if (delta.MagSquared() >= 0.0011920929f) {
        const CVector3f deltaNorm = delta.AsNormalized();
        const CVector3f behindPos = prevPos - deltaNorm * 5.f;
        const CVector3f fullDelta = partPos - behindPos;
        float fullDeltaMag = fullDelta.Magnitude();

        const CRayCastResult result = x9c_stateMgr->RayStaticIntersection(
            behindPos, deltaNorm, fullDeltaMag,
            CMaterialFilter::MakeIncludeExclude(CMaterialList(kMT_Solid),
                                                CMaterialList(kMT_ProjectilePassthrough)));

        if (result.IsValid()) {
          const float dist = result.GetPlane().PointToPlaneDist(partPos);
          if (dist <= 0.f) {
            partPos -= dist * result.GetPlane().GetNormal();
            if (CVector3f::Dot(result.GetPlane().GetNormal(), partVel) < 0.f) {
              const CVector3f prevStepPos = partPos - partVel;
              partPos += (-result.GetPlane().PointToPlaneDist(prevStepPos) /
                              CVector3f::Dot(partVel, result.GetPlane().GetNormal()) -
                          1.f) *
                         partVel;
              partVel -= partVel * 0.001f;
            }
          }
        }
      }
    }

    idx += stripe;
  }

  rstl::sort(vec.begin(), vec.end(), Comparer());


  int vecIdx = 0;
  const int pitch = particleCount / 9;

  for (int i = 0; i < x4_collisionPoints.capacity(); ++i) {
    CVector3f& partPos = particlePos[int(vec[vecIdx].second) * stripe];
    x4_collisionPoints[i] = partPos;
    if (i > 0) {
      const CVector3f delta = x4_collisionPoints[i] - x4_collisionPoints[i - 1];
      if (delta.Magnitude() < 0.0011920929f) {
        x4_collisionPoints[i] += delta.AsNormalized() * 0.0011920929f;
      }
    }
    vecIdx += pitch * 8;
  }

  x4_collisionPoints[0] = x74_warpPoint;
  x80_floatingPoint = x4_collisionPoints[8];
  xa0_26_processed = true;
}

void CFlameWarp::ResetPosition(const CVector3f& pos) {
  rstl::reserved_vector< CVector3f, 9 >::iterator it;
  for (it = x4_collisionPoints.begin(); it != x4_collisionPoints.end(); ++it) {
    *it = pos;
  }
  xa0_26_processed = false;
}

bool CFlameWarp::IsActivated() { return xa0_24_activated; }

FourCC CFlameWarp::Get4CharID() { return 'FWRP'; }
