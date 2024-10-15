#ifndef _CSTEERINGBEHAVIORS
#define _CSTEERINGBEHAVIORS

#include "types.h"

class CVector3f;

class CSteeringBehaviors {
public:
  static bool ProjectLinearIntersection(const CVector3f& v0, float f1, const CVector3f& v1,
                                        const CVector3f& v2, CVector3f& v3);
  static bool ProjectLinearIntersection(const CVector3f& v0, float f1, const CVector3f& v1,
                                        const CVector3f& v2, const CVector3f& v3, CVector3f& v4);

  static bool ProjectOrbitalIntersection(const CVector3f& v0, float f1, float f2,
                                         const CVector3f& v1, const CVector3f& v2,
                                         const CVector3f& v3, CVector3f& v4);
  static bool ProjectOrbitalIntersection(const CVector3f& v0, float f1, float f2,
                                         const CVector3f& v1, const CVector3f& v2,
                                         const CVector3f& v3, const CVector3f& v4, CVector3f& v5);

  static CVector3f ProjectOrbitalPosition(const CVector3f& pos, const CVector3f& vel,
                                          const CVector3f& orbitPoint, float dt, float preThinkDt);

private:
  float x0_;
};
CHECK_SIZEOF(CSteeringBehaviors, 0x4)

#endif // _CSTEERINGBEHAVIORS
