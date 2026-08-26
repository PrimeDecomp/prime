#include "MetroidPrime/Enemies/CWallWalker.hpp"


CWallWalker::CWallWalker(const EPatternedAI chr, const TUniqueId uid, const rstl::string& name,
              const EFlavorType flavorType, const CEntityInfo& info, const CTransform4f& xf,
              const CModelData& mData, const CPatternedInfo& pInfo, const EMovementType moveType,
              const EColliderType colType, const EBodyType bodyType,
              const CActorParameters& actParms, const ECreatureSize kbVariant,
              const float collisionCloseMargin, const EType walkerType, const bool disableMove,
              const float alignAngVel, const float advanceWpRadius,
              const float playerObstructionMinDist)
: CPatterned(chr, uid, name, flavorType, info, xf, mData, pInfo, moveType, colType, bodyType, actParms, kbVariant)
, x568_alignNormal(CVector3f::Zero(), CVector3f::Forward(), CVector3f::Right(), -1)
, x590_colSphere(CSphere(CVector3f::Zero(), pInfo.GetHalfExtent()), GetMaterialList())
{}
