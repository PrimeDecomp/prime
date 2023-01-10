#ifndef _COLLISIONUTIL
#define _COLLISIONUTIL

#include "Kyoto/Math/CVector3f.hpp"

class CAABox;
class CMaterialList;
class CCollisionInfoList;
class CVector3f;

namespace CollisionUtil {

void AddAverageToFront(const CCollisionInfoList& in, CCollisionInfoList& out);
bool TriBoxOverlap(const CVector3f& boxcenter, const CVector3f& boxhalfsize,
                   const CVector3f& trivert0, const CVector3f& trivert1, const CVector3f& trivert2);
bool BoxLineTest(const CAABox&, const CVector3f&, const CVector3f&, float&, float&, int&, bool&);

bool AABoxAABoxIntersection(const CAABox& left, const CAABox& right);
bool AABoxAABoxIntersection(const CAABox& left, const CMaterialList& leftFilter,
                            const CAABox& right, const CMaterialList& rightFilter,
                            CCollisionInfoList& list);

} // namespace CollisionUtil

#endif // _COLLISIONUTIL
