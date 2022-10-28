#ifndef _CJOINTCOLLISIONDESCRIPTION
#define _CJOINTCOLLISIONDESCRIPTION

#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/string.hpp"

class CJointCollisionDescription {
public:
  enum ECollisionType {
    kCT_Sphere,
    kCT_SphereSubdivide,
    kCT_AABox,
    kCT_OBBAutoSize,
    kCT_OBB,
  };

  enum EOrientationType {
    kOT_Zero,
    kOT_One,
  };

  CJointCollisionDescription(ECollisionType colType, CSegId pivotId, CSegId nextId,
                             const CVector3f& bounds, const CVector3f& pivotPoint, float radius,
                             float maxSeparation, EOrientationType orientType,
                             const rstl::string& name, float mass)
  : x0_colType(colType)
  , x4_orientType(orientType)
  , x8_pivotId(pivotId)
  , x9_nextId(nextId)
  , xc_bounds(bounds)
  , x18_pivotPoint(pivotPoint)
  , x24_radius(radius)
  , x28_maxSeparation(maxSeparation)
  , x2c_name(name)
  , x3c_actorId(kInvalidUniqueId)
  , x40_mass(mass) {}

  void ScaleAllBounds(const CVector3f& scale);

  TUniqueId GetCollisionActorId() const { return x3c_actorId; }
  static CJointCollisionDescription SphereSubdivideCollision(CSegId pivotId, CSegId nextId,
                                                             float radius, float maxSeparation,
                                                             EOrientationType orientType,
                                                             const rstl::string& name, float mass);
  static CJointCollisionDescription SphereCollision(CSegId pivotId, float radius,
                                                    const rstl::string& name, float mass);
  static CJointCollisionDescription AABoxCollision(CSegId pivotId, const CVector3f& bounds,
                                                   const rstl::string& name, float mass);
  static CJointCollisionDescription OBBAutoSizeCollision(CSegId pivotId, CSegId nextId,
                                                         const CVector3f& bounds,
                                                         EOrientationType orientType,
                                                         const rstl::string&, float mass);
  static CJointCollisionDescription OBBCollision(CSegId pivotId, const CVector3f& bounds,
                                                 const CVector3f& pivotPoint,
                                                 const rstl::string& name, float mass);

private:
  ECollisionType x0_colType;
  EOrientationType x4_orientType;
  CSegId x8_pivotId;
  CSegId x9_nextId;
  CVector3f xc_bounds;
  CVector3f x18_pivotPoint;
  float x24_radius;
  float x28_maxSeparation;
  rstl::string x2c_name;
  TUniqueId x3c_actorId;
  float x40_mass;
};

#endif // _CJOINTCOLLISIONDESCRIPTION
