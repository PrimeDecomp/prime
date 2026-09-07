#ifndef _CWALLCRAWLERSWARM
#define _CWALLCRAWLERSWARM

#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CActorParameters.hpp"
#include "WorldFormat/CCollisionSurface.hpp"

class CAnimRes;
class CDamageInfo;
class CDamageVulnerability;
class CHealthInfo;

class CWallCrawlerSwarm : public CActor {
public:
  class CBoid {
  public:
    CBoid(const CTransform4f& xf, uint index);

    bool GetActive() const { return x80_24_active; }
    CVector3f GetTranslation() const { return x0_transform.GetTranslation(); }

  private:
    CTransform4f x0_transform;
    CVector3f x30_velocity;
    TUniqueId x3c_targetWaypoint;
    CColor x40_ambientLighting;
    CBoid* x44_next;
    float x48_timeToDie;
    float x4c_timeToExplode;
    CCollisionSurface x50_surface;
    float x78_health;
    uint x7c_flags;
    bool x80_24_active : 1;
    bool x80_25_inFrustum : 1;
    bool x80_26_launched : 1;
    bool x80_27_scarabExplodeTimerEnabled : 1;
    bool x80_28_nearPlayer : 1;
  };

  CWallCrawlerSwarm(TUniqueId uid, bool active, const rstl::string& name, const CEntityInfo& info,
                    const CVector3f& boundingBoxExtent, const CTransform4f& xf, uint flavor,
                    const CAnimRes& animRes, uint launchAnim, uint attractAnim, uint particle1,
                    uint particle2, uint particle3, uint particle4, const CDamageInfo& crabDamage,
                    const CDamageInfo& scarabExplodeDamage, float crabDamageCooldown,
                    float boidRadius, float touchRadius, float playerTouchRadius, int numBoids,
                    int maxCreatedBoids, float animPlaybackSpeed, float separationRadius,
                    float cohesionMagnitude, float alignmentWeight, float separationMagnitude,
                    float moveToWaypointWeight, float attractionMagnitude, float attractionRadius,
                    float boidGenRate, int maxLaunches, float scarabBoxMargin,
                    float scarabScatterXYVelocity, float scarabTimeToExplode,
                    const CHealthInfo& healthInfo, const CDamageVulnerability& damageVulnerability,
                    int launchSfx, int scatterSfx, CActorParameters actParams);

  void Accept(IVisitor& visitor) override;

  void ApplyRadiusDamage(const CVector3f& pos, const CDamageInfo& info, CStateManager& mgr);

  CVector3f GetLastKilledOffset() const { return x130_lastKilledOffset; }

  int GetCurrentLockOnId() const { return x42c_lockOnIdx; }
  bool GetLockOnLocationValid(int id) const {
    return id > -1 && id < x108_boids.size() && x108_boids[id].GetActive();
  }
  CVector3f GetLockOnLocation(int id) const { return x108_boids[id].GetTranslation(); }

private:
  CAABox xe8_aabox;
  int x100_thinkCounter;
  float x104_occludedTimer;
  rstl::vector< CBoid > x108_boids;
  CVector3f x118_boundingBoxExtent;
  mutable CVector3f x124_lastOrbitPosition;
  CVector3f x130_lastKilledOffset;
  // TODO: fill in remaining members
  char x13c_pad[0x42c - 0x13c];
  int x42c_lockOnIdx;
  char x430_pad[0x568 - 0x430];
};
extern int CWallCrawlerSwarm_CBoid_check[check_sizeof< CWallCrawlerSwarm::CBoid, 0x84 >::value];
CHECK_SIZEOF(CWallCrawlerSwarm, 0x568)

#endif // _CWALLCRAWLERSWARM
