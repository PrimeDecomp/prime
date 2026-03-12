#ifndef _CCAMERASPLINE
#define _CCAMERASPLINE

#include "Kyoto/Math/CTransform4f.hpp"
#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CVector3f.hpp"

#include "MetroidPrime/CEntityInfo.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CMaterialFilter;
class CStateManager;
class CCameraSpline {
public:
  CCameraSpline(bool closedLoop);
  virtual ~CCameraSpline();

  void Initialise(TUniqueId uid, const rstl::vector< SConnection >& connections,
                  CStateManager& mgr);
  void CalculateKnots(TUniqueId uid, const rstl::vector< SConnection >& connections,
                      CStateManager& mgr);
  float GetKnotT(int idx) const;
  CVector3f GetKnotPosition(int idx) const;
  void SetKnotPosition(int idx, const CVector3f& pos);
  void AddKnot(CVector3f pos, CVector3f dir);
  void Reset(int size);
  bool GetSurroundingPoints(int idx, rstl::reserved_vector< CVector3f, 4 >& positions,
                            rstl::reserved_vector< CVector3f, 4 >& directions);
  float ClampLength(const CVector3f& pos, bool collide, const CMaterialFilter& filter,
                    const CStateManager& mgr) const;
  float CalculateSplineLength();
  float ValidateLength(float t) const;
  CVector3f GetInterpolatedSplinePointByTime(float time, float range) const;
  CTransform4f GetInterpolatedSplinePointByLength(float length) const;
  float FindClosestLengthOnSpline(float t, CVector3f point) const;

  int GetSize() const { return x4_positions.size(); }
  float GetLength() const { return x44_length; }
  bool IsClosedLoop() const { return x48_closedLoop; }

private:
  rstl::vector< CVector3f > x4_positions;
  rstl::vector< TUniqueId > x14_wpTracker;
  rstl::vector< float > x24_t;
  rstl::vector< CVector3f > x34_directions;
  float x44_length;
  bool x48_closedLoop;
};
CHECK_SIZEOF(CCameraSpline, 0x4c)

#endif // _CCAMERASPLINE
