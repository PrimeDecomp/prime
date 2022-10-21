#ifndef _COLLISIONUTIL
#define _COLLISIONUTIL

class CCollisionInfoList;
class CVector3f;

namespace CollisionUtil {

void AddAverageToFront(const CCollisionInfoList& in, CCollisionInfoList& out);
bool TriBoxOverlap(const CVector3f& boxcenter, const CVector3f& boxhalfsize,
                   const CVector3f& trivert0, const CVector3f& trivert1, const CVector3f& trivert2);

} // namespace CollisionUtil

#endif // _COLLISIONUTIL
