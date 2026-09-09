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
  enum ESystemTypes {
    kST_OnFire,
    kST_Ice,
    kST_Ash,
    kST_FirePop,
    kST_Electric,
    kST_IcePop,
  };

  struct CSystem {
    rstl::vector< CToken > x0_tokens;
    int x10_refCount;
    bool x14_loaded;

    explicit CSystem(const char* name);

    void Update();
    void Unlock();
    void Lock();
    void DelRef();
    void AddRef();
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
    mutable bool x12c_24_thermalCold : 1;
    mutable bool x12c_25_thermalHot : 1;
    float x130_remTime;
    mutable uchar x134_lockDeps;

    bool UpdateOnFire(float dt, CActor* actor, CStateManager& mgr);
    bool UpdateAshGen(float dt, const CActor* actor, CStateManager& mgr);
    bool UpdateIcePop(float dt, const CActor* actor);
    bool UpdateFirePop(float dt, const CActor* actor);
    bool UpdateElectric(float dt, const CActor* actor, CStateManager& mgr);
    bool UpdateIce(float dt, const CActor* actor, CStateManager& mgr);
    bool UpdateRainSplash(float dt, const CActor* actor, CStateManager& mgr);
    bool UpdateBurn(float dt, const CActor* actor, CStateManager& mgr);
    void UseType(ESystemTypes dep);

  public:
    CItem(const CEntity& ent, CActorModelParticles& parent);
    ~CItem();

    void GeneratePoints(const CVector3f* vertices, const CVector3f* normals, int count);
    bool Update(float dt, CStateManager& mgr);
    void DontUseType(ESystemTypes dep);
  };

  CActorModelParticles();

  CTexture* GetAshyTexture(const CActor& actor) const;
  void StartBurnDeath(CActor& actor);
  void Render(const CStateManager& mgr, const CActor& actor) const;
  void AddStragglersToRenderer(const CStateManager& mgr) const;
  rstl::list< CItem >::iterator FindSystem(TUniqueId uid);
  rstl::list< CItem >::const_iterator FindSystem(TUniqueId uid) const;
  rstl::list< CItem >::iterator FindOrCreateSystem(CActor& actor);
  void SetupHook(TUniqueId uid) const;
  static void PointGenerator(uint context, const CVector3f* vertices, const CVector3f* normals,
                             int count);
  void RemoveRainSplashGenerator(CActor& actor);
  void AddRainSplashGenerator(CActor& actor, CStateManager& mgr, int maxSplashes, int genRate,
                              float minZ);
  void StopFire(CActor& actor);
  void LightDudeOnFire(CActor& actor);
  void StopElectric(CActor& actor);
  void StartElectric(CActor& actor);
  void StartIce(CActor& actor);
  void DoIcePop(CActor& actor);
  void DoFirePop(CActor& actor);
  void StartAsh(CActor& actor);
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
  CToken x48_ashy;
  rstl::reserved_vector< CSystem, 6 > x50_dgrps;
  uchar xe4_loadingDeps;
  uchar xe5_justLoadedDeps;
  uchar xe6_loadedDeps;

  void UpdateSystemTypes();
  void DelTypeRef(ESystemTypes dep);
  void AddTypeRef(ESystemTypes dep);
  void InitializeSystemTypes();

  CElementGen* MakeOnFireGen();
  CParticleElectric* MakeElectricGen();
  CElementGen* MakeIcePopGen();
  CElementGen* MakeFirePopGen();
  CElementGen* MakeAshGen();
  CElementGen* MakeIceGen();
};
NESTED_CHECK_SIZEOF(CActorModelParticles, CSystem, 0x18)
NESTED_CHECK_SIZEOF(CActorModelParticles, CItem, 0x138)
CHECK_SIZEOF(CActorModelParticles, 0xe8);

#endif // _CACTORMODELPARTICLES
