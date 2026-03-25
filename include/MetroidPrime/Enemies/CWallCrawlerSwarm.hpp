#ifndef _CWALLCRAWLERSWARM
#define _CWALLCRAWLERSWARM

#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CActorParameters.hpp"

class CAnimRes;
class CDamageInfo;
class CDamageVulnerability;
class CHealthInfo;

class CWallCrawlerSwarm : public CActor {
public:
  class CBoid {};

  CWallCrawlerSwarm(TUniqueId uid, bool active, const rstl::string& name,
                    const CEntityInfo& info, const CVector3f& boundingBoxExtent,
                    const CTransform4f& xf, uint flavor, const CAnimRes& animRes,
                    uint launchAnim, uint attractAnim, uint particle1, uint particle2,
                    uint particle3, uint particle4, const CDamageInfo& crabDamage,
                    const CDamageInfo& scarabExplodeDamage, float crabDamageCooldown,
                    float boidRadius, float touchRadius, float playerTouchRadius,
                    int numBoids, int maxCreatedBoids, float animPlaybackSpeed,
                    float separationRadius, float cohesionMagnitude,
                    float alignmentWeight, float separationMagnitude,
                    float moveToWaypointWeight, float attractionMagnitude,
                    float attractionRadius, float boidGenRate, int maxLaunches,
                    float scarabBoxMargin, float scarabScatterXYVelocity,
                    float scarabTimeToExplode, const CHealthInfo& healthInfo,
                    const CDamageVulnerability& damageVulnerability,
                    int launchSfx, int scatterSfx, CActorParameters actParams);

  void Accept(IVisitor& visitor) override;

  CVector3f GetLastKilledOffset() const { return x130_lastKilledOffset; }

private:
  CAABox xe8_aabox;
  int x100_thinkCounter;
  float x104_occludedTimer;
  rstl::vector< CBoid > x108_boids;
  CVector3f x118_boundingBoxExtent;
  mutable CVector3f x124_lastOrbitPosition;
  CVector3f x130_lastKilledOffset;
  // TODO: fill in remaining members
  char x13c_pad[0x568 - 0x13c];
};
CHECK_SIZEOF(CWallCrawlerSwarm, 0x568)

#endif // _CWALLCRAWLERSWARM
