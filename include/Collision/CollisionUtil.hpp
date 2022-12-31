#ifndef _COLLISIONUTIL
#define _COLLISIONUTIL

#include "Kyoto/Math/CVector3f.hpp"

class CCollisionInfoList;
class CVector3f;

/* TODO: Figure out a better place for this, borks CBallFilter here, but is needed for CCollidableAABox/Sphere
   (Best solution would be to find a Tardis and go back and slap the dev responsible for this)
static const CVector3f normalTable[6] = {
  CVector3f(-1.f, 0.f, 0.f),
  CVector3f(1.f, 0.f, 0.f),
  CVector3f(0.f, -1.f, 0.f),
  CVector3f(0.f, 1.f, 0.f),
  CVector3f(0.f, 0.f, -1.f),
  CVector3f(0.f, 0.f, 1.f),
};
*/
namespace CollisionUtil {

void AddAverageToFront(const CCollisionInfoList& in, CCollisionInfoList& out);
bool TriBoxOverlap(const CVector3f& boxcenter, const CVector3f& boxhalfsize,
                   const CVector3f& trivert0, const CVector3f& trivert1, const CVector3f& trivert2);

} // namespace CollisionUtil

#endif // _COLLISIONUTIL
