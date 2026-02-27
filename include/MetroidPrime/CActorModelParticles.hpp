#ifndef _CACTORMODELPARTICLES
#define _CACTORMODELPARTICLES

#include "types.h"

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/CToken.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/list.hpp"
#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CActor;
class CEntity;
class CElementGen;
class CElectricDescription;
class CGenDescription;
class CParticleElectric;
class CRainSplashGenerator;
class CStateManager;
class CTexture;

class CActorModelParticles {
public:
  enum EDependency {
    kD_OnFire,
    kD_Ice,
    kD_Ash,
    kD_FirePop,
    kD_Electric,
    kD_IcePop,
  };

  struct Dependency {
    rstl::vector< CToken > x0_tokens;
    int x10_refCount;
    bool x14_loaded;

    void UpdateLoad();
    void Unload();
    void Load();
    void Decrement();
    void Increment();
  };

  class CItem {
    friend class CActorModelParticles;

  private:
    TUniqueId x0_id;
    TAreaId x4_areaId;
    rstl::reserved_vector< rstl::pair< rstl::auto_ptr< CElementGen >, uint >, 8 > x8_onFireGens;
    float x6c_onFireDelayTimer;
    bool x70_onFire;
    CSfxHandle x74_sfx;
    rstl::auto_ptr< CElementGen > x78_ashGen;
    int x80_ashPointIterator;
    int x84_ashMaxParticles;
    uint x88_ashSeed;
    rstl::reserved_vector< rstl::auto_ptr< CElementGen >, 4 > x8c_iceGens;
    int xb0_icePointIterator;
    uint xb4_iceSeed;
    rstl::auto_ptr< CElementGen > xb8_firePopGen;
    rstl::auto_ptr< CParticleElectric > xc0_electricGen;
    int xc8_electricPointIterator;
    uint xcc_electricSeed;
    CColor xd0_electricColor;
    rstl::auto_ptr< CRainSplashGenerator > xd4_rainSplashGen;
    CToken xdc_ashy;
    rstl::auto_ptr< CElementGen > xe4_icePopGen;
    CVector3f xec_particleOffsetScale;
    CTransform4f xf8_iceXf;
    CActorModelParticles* x128_parent;
    uchar x12c_flags;
    float x130_remTime;
    uchar x134_lockDeps;

    bool UpdateOnFire(float dt, CActor& actor, CStateManager& mgr);
    bool UpdateAshGen(float dt, CActor& actor, CStateManager& mgr);
    bool UpdateIcePop(float dt, CActor& actor);
    bool UpdateFirePop(float dt, CActor& actor);
    bool UpdateElectric(float dt, CActor& actor, CStateManager& mgr);
    void EnsureLoaded(int dep);

  public:
    CItem(const CEntity& ent, CActorModelParticles& parent);

    void GeneratePoints(const CVector3f* vertices, const CVector3f* normals, int count);
    bool Update(float dt, CStateManager& mgr);
    void Unlock(EDependency dep);
  };

  CActorModelParticles();

  CTexture* GetAshyTexture(CActor& actor);
  void StartBurnDeath(CActor& actor);
  void Render(const CStateManager& mgr, const CActor& actor) const;
  void AddStragglersToRenderer(const CStateManager& mgr) const;
  rstl::list< CItem >::iterator FindSystem(TUniqueId uid);
  rstl::list< CItem >::const_iterator FindSystem(TUniqueId uid) const;
  rstl::list< CItem >::iterator FindOrCreateSystem(CActor& actor);
  void SetupHook(TUniqueId uid) const;
  uint PointGenerator(uint seed, const CVector3f* vertices, const CVector3f* normals, int count);
  void RemoveRainSplashGenerator(CActor& actor);
  void AddRainSplashGenerator(CActor& actor, CStateManager& mgr, int maxSplashes, int genRate,
                              float minZ);
  void StopThermalHotParticles(CActor& actor);
  void LightDudeOnFire(CActor& actor);
  void StopElectric(CActor& actor);
  void LoadAndStartElectric(CActor& actor);
  void StartIce(CActor& actor, CStateManager& mgr);
  void EnsureElectricLoaded(CActor& actor);
  void EnsureFirePopLoaded(CActor& actor);
  void EnsureIceBreakLoaded(CActor& actor);
  void Update(float dt, CStateManager& mgr);

private:
  friend class CItem;

  rstl::list< CItem > x0_items;
  TToken< CGenDescription > x18_onFire;
  TToken< CGenDescription > x20_ash;
  TToken< CGenDescription > x28_iceBreak;
  TToken< CGenDescription > x30_firePop;
  TToken< CGenDescription > x38_icePop;
  TToken< CElectricDescription > x40_electric;
  TToken< CTexture > x48_ashy;
  rstl::reserved_vector< Dependency, 6 > x50_dgrps;
  bool xe4_loadingDeps;
  bool xe5_justLoadedDeps;
  bool xe6_loadedDeps;

  void UpdateLoad();
  void DecrementDependency(EDependency dep);
  void IncrementDependency(int dep);
  void LoadParticleDGRPs();
  Dependency GetParticleDGRPTokens(const rstl::string& name);

  rstl::auto_ptr< CElementGen > MakeOnFireGen();
  rstl::auto_ptr< CParticleElectric > MakeElectricGen();
  rstl::auto_ptr< CElementGen > MakeIcePopGen();
  rstl::auto_ptr< CElementGen > MakeFirePopGen();
  rstl::auto_ptr< CElementGen > MakeAshGen();
  rstl::auto_ptr< CElementGen > MakeIceGen();
};
NESTED_CHECK_SIZEOF(CActorModelParticles, Dependency, 0x18)
NESTED_CHECK_SIZEOF(CActorModelParticles, CItem, 0x138)
CHECK_SIZEOF(CActorModelParticles, 0xe8);

#endif // _CACTORMODELPARTICLES
