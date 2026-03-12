#ifndef _COLLISIONUTIL
#define _COLLISIONUTIL

class CAABox;
class CMaterialList;
class CCollisionInfoList;
class CVector3f;
class CSphere;
class CMRay;

namespace CollisionUtil {

void AddAverageToFront(const CCollisionInfoList& in, CCollisionInfoList& out);
void FilterOutBackfaces(const CVector3f& relVel, const CCollisionInfoList& in,
                        CCollisionInfoList& out);
bool TriBoxOverlap(const CVector3f& boxcenter, const CVector3f& boxhalfsize,
                   const CVector3f& trivert0, const CVector3f& trivert1, const CVector3f& trivert2);
bool BoxLineTest(const CAABox&, const CVector3f&, const CVector3f&, float&, float&, int&, bool&);

bool AABoxAABoxIntersection(const CAABox& left, const CAABox& right);
bool AABoxAABoxIntersection(const CAABox& left, const CMaterialList& leftFilter,
                            const CAABox& right, const CMaterialList& rightFilter,
                            CCollisionInfoList& list);
int RayAABoxIntersection(const CMRay& ray, const CAABox& box, CVector3f& dir, float& penetration);
bool AABox_AABox_Moving(const CAABox& left, const CAABox& right, const CVector3f& dir, double& d,
                        CVector3f& point, CVector3f& normal);
float AABoxSphereIntersectionRadius(const CAABox&, const CSphere&);

bool MovingSphereAABox(const CSphere& sphere, const CAABox& aabb, const CVector3f& dir,
                       double& dOut, CVector3f& point, CVector3f& normal);

// Global function defined in either CBallFilter or an unknown TU, name unknown.
// Called by CNewFlameThrower.
void AccumulateCollisionInfo(const CCollisionInfoList& in, CCollisionInfoList& out);

} // namespace CollisionUtil

#endif // _COLLISIONUTIL
