#ifndef _CPIRATERAGDOLL
#define _CPIRATERAGDOLL

#include "MetroidPrime/CRagDoll.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "rstl/reserved_vector.hpp"

class CSpacePirate;

class CPirateRagDoll : public CRagDoll {
public:
  void Prime(CStateManager& mgr, const CTransform4f& xf, CModelData& mData) override;
  void Update(CStateManager& mgr, float dt, float waterTop) override;
  void PreRender(const CVector3f& pos, CModelData& mData) override;
  CPirateRagDoll(CStateManager& mgr, CSpacePirate* pirate, ushort thudSfx, uint flags);
  ~CPirateRagDoll() {}

  CVector3f& TorsoImpulse() { return x84_torsoImpulse; }

private:
  CSpacePirate* x6c_spacePirate;
  ushort x70_thudSfx;
  float x74_sfxTimer;
  CVector3f x78_lastSFXPos;
  CVector3f x84_torsoImpulse;
  rstl::reserved_vector< TUniqueId, 4 > x90_waypoints;
  rstl::reserved_vector< int, 4 > x9c_wpParticleIdxs;
  bool xb0_24_initSfx : 1;
};
CHECK_SIZEOF(CPirateRagDoll, 0xb4)

#endif // _CPIRATERAGDOLL
