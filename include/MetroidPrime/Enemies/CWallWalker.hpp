#ifndef _CWALLWALKER
#define _CWALLWALKER

#include "types.h"

#include "Collision/CCollidableSphere.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "WorldFormat/CCollisionSurface.hpp"

class CWallWalker : public CPatterned {
public:
  enum EWalkerType {
    kWT_Parasite = 0,
    kWT_Oculus = 1,
    kWT_Geemer = 2,
    kWT_IceZoomer = 3,
    kWT_Seedling = 4,
  };

  CWallWalker(ECharacter chr, TUniqueId uid, const rstl::string& name, EFlavorType flavorType,
              const CEntityInfo& info, const CTransform4f& xf, const CModelData& mData,
              const CPatternedInfo& pInfo, EMovementType moveType, EColliderType colType,
              EBodyType bodyType, const CActorParameters& actParms,
              float collisionCloseMargin, float alignAngVel,
              EKnockBackVariant kbVariant, float advanceWpRadius,
              EWalkerType walkerType, float playerObstructionMinDist, bool disableMove);

  // CEntity
  ~CWallWalker() override;
  void PreThink(float dt, CStateManager& mgr) override;
  void Think(float dt, CStateManager& mgr) override;

  // CActor
  void Render(const CStateManager& mgr) const override;
  const CCollisionPrimitive* GetCollisionPrimitive() const override { return &x590_colSphere; }

  void UpdateWPDestination(CStateManager& mgr);

protected:
  void OrientToSurfaceNormal(const CVector3f& normal, float clampAngle);
  void AlignToFloor(CStateManager& mgr, float dt, const CVector3f& vec, float f);
  void GotoNextWaypoint(CStateManager& mgr);

  CCollisionSurface x568_alignNormal;
  CCollidableSphere x590_colSphere;
  float x5b0_collisionCloseMargin;
  float x5b4_alignAngVel;
  float x5b8_tumbleAngle;
  float x5bc_patrolPauseRemTime;
  float x5c0_advanceWpRadius;
  float x5c4_playerObstructionMinDist;
  float x5c8_bendingHackWeight;
  int x5cc_bendingHackAnim;
  EWalkerType x5d0_walkerType;
  short x5d4_thinkCounter;
  bool x5d6_24_alignToFloor : 1;
  bool x5d6_25_hasAlignSurface : 1;
  bool x5d6_26_playerObstructed : 1;
  bool x5d6_27_disableMove : 1;
  bool x5d6_28_addBendingWeight : 1;
  bool x5d6_29_applyBendingHack : 1;
};
CHECK_SIZEOF(CWallWalker, 0x5D8)

#endif // _CWALLWALKER
