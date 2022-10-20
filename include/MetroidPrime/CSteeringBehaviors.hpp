#ifndef _CSTEERINGBEHAVIORS
#define _CSTEERINGBEHAVIORS

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
};

#endif // _CSTEERINGBEHAVIORS
