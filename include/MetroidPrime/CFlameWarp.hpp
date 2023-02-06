#ifndef _CFLAMEWARP
#define _CFLAMEWARP

#include "Kyoto/Particles/CWarp.hpp"

#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/reserved_vector.hpp"

class CStateManager;
class CColor;

class CFlameWarp : public CWarp {
public:
  CFlameWarp(float maxInfluenceDist, const CVector3f& warpPoint, bool collisionWarp);
  ~CFlameWarp();

  const rstl::reserved_vector< CVector3f, 9 >& GetCollisionPoints() const {
    return x4_collisionPoints;
  }
  float GetMinSize() const { return x90_minSize; }
  float GetMaxSize() const { return x94_maxSize; }
  void SetWarpPoint(const CVector3f& p) { x74_warpPoint = p; }
  void SetFloatingPoint(const CVector3f& p) { x80_floatingPoint = p; }
  const CVector3f& GetFloatingPoint() const { return x80_floatingPoint; }
  void SetMaxDistSq(float d) { x8c_maxDistSq = d; }
  void SetStateManager(CStateManager& mgr) { x9c_stateMgr = &mgr; }
  bool UpdateWarp();
  void ModifyParticles(int particleCount, int stripe, int*, CVector3f* particlePos,
                                 CVector3f* particlePrevPos, CVector3f* particleVelocity,
                                 CColor* color, float* lineLengthOrSize, float* lineWidthOrRota);
  void Activate(bool val) { xa0_24_activated = val; }
  bool IsActivated();
  bool IsProcessed() const { return xa0_26_processed; }
  FourCC Get4CharID();
  void ResetPosition(const CVector3f& pos);
  CAABox CalculateBounds() const;

private:
  rstl::reserved_vector< CVector3f, 9 > x4_collisionPoints;
  CVector3f x74_warpPoint;
  CVector3f x80_floatingPoint;
  float x8c_maxDistSq;
  float x90_minSize;
  float x94_maxSize;
  float x98_maxInfluenceDistSq;
  CStateManager* x9c_stateMgr;
  bool xa0_24_activated : 1;
  bool xa0_25_collisionWarp : 1;
  bool xa0_26_processed : 1;
};

#endif // _CFLAMEWARP
