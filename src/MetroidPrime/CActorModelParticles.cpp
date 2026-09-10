#include "MetroidPrime/CActorModelParticles.hpp"

#include "Kyoto/Animation/CSkinnedModel.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/CDependencyGroup.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "Kyoto/Particles/CParticleElectric.hpp"
#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CEntity.hpp"
#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CRainSplashGenerator.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/SFX/Misc.h"

static const char* const skParticleNames[] = {
    "Effect_OnFire",  "Effect_IceBreak", "Effect_Ash",
    "Effect_FirePop", "Effect_Electric", "Effect_IcePop",
};

static bool IsMediumOrLarge(const CActor& actor) {
  if (const CPatterned* patterned = TCastToConstPtr< CPatterned >(&actor)) {
    return patterned->GetKnockBackCtrl().GetCreatureSize() != kCS_Small;
  }
  return false;
}

CActorModelParticles::CSystem::CSystem(const char* name) : x10_refCount(0), x14_loaded(false) {
  TLockedToken< CDependencyGroup > group = gpSimplePool->GetObj(name);
  const rstl::vector< SObjectTag >& tags = group->GetObjectTagVector();
  x0_tokens.reserve(tags.size());
  for (AUTO(it, tags.begin()); it != tags.end(); ++it) {
    x0_tokens.push_back(gpSimplePool->GetObj(*it));
  }
}

void CActorModelParticles::CSystem::AddRef() {
  ++x10_refCount;
  if (x10_refCount == 1) {
    Lock();
  }
}

void CActorModelParticles::CSystem::DelRef() {
  --x10_refCount;
  if (x10_refCount <= 0) {
    Unlock();
  }
}

void CActorModelParticles::CSystem::Lock() {
  bool loading = false;
  for (AUTO(it, x0_tokens.begin()); it != x0_tokens.end(); ++it) {
    if (!it->IsLocked()) {
      it->Lock();
      loading = true;
    } else if (!it->IsLoaded()) {
      loading = true;
    }
  }
  if (!loading) {
    x14_loaded = true;
  }
}

void CActorModelParticles::CSystem::Unlock() {
  for (AUTO(it, x0_tokens.begin()); it != x0_tokens.end(); ++it) {
    it->Unlock();
  }
  x14_loaded = false;
}

void CActorModelParticles::CSystem::Update() {
  if (x14_loaded || x10_refCount == 0) {
    return;
  }
  bool loading = false;
  for (AUTO(it, x0_tokens.begin()); it != x0_tokens.end(); ++it) {
    if (!it->IsLoaded()) {
      loading = true;
      break;
    }
  }
  if (!loading) {
    x14_loaded = true;
  }
}

CActorModelParticles::CItem::CItem(const CEntity& ent, CActorModelParticles& parent)
: x0_id(ent.GetUniqueId())
, x4_areaId(ent.GetCurrentAreaId())
, x8_onFireGens(
      rstl::pair< rstl::auto_ptr< CElementGen >, uint >(rstl::auto_ptr< CElementGen >(), 0))
, x6c_onFireDelayTimer(0.f)
, x70_onFire(false)
, x80_ashPointIterator(0)
, x84_ashMaxParticles(-1)
, x88_ashSeed(99)
, xb0_icePointIterator(-1)
, xb4_iceSeed(99)
, xc8_electricPointIterator(0)
, xcc_electricSeed(99)
, xd0_electricColor(CColor::White())
, xdc_ashy(parent.x48_ashy)
, xec_particleOffsetScale(1.f, 1.f, 1.f)
, xf8_iceXf(CTransform4f::Identity())
, x128_parent(&parent)
, x12c_24_thermalCold(false)
, x12c_25_thermalHot(false)
, x130_remTime(10.f)
, x134_lockDeps(0) {}

CActorModelParticles::CItem::~CItem() {
  if (x74_sfx) {
    CSfxManager::RemoveEmitter(x74_sfx);
  }
  if (x134_lockDeps != 0) {
    for (int i = 0; i < 6; ++i) {
      if (x134_lockDeps & (1 << i)) {
        x128_parent->DelTypeRef(static_cast< ESystemTypes >(i));
      }
    }
  }
}

bool CActorModelParticles::CItem::Update(float dt, CStateManager& mgr) {
  bool active = false;
  CActor* actor = static_cast< CActor* >(mgr.ObjectById(x0_id));
  if (actor != nullptr && actor->HasModelData()) {
    xec_particleOffsetScale = actor->GetModelScale();
    xf8_iceXf = actor->GetTransform();
    x4_areaId = actor->GetCurrentAreaId();
  } else {
    x0_id = kInvalidUniqueId;
    x84_ashMaxParticles = 0;
    xb0_icePointIterator = -1;
    if (!xc0_electricGen.null()) {
      xc0_electricGen->SetParticleEmission(false);
    }
    if (x74_sfx) {
      CSfxManager::RemoveEmitter(x74_sfx);
      x74_sfx.Clear();
    }
    x130_remTime -= dt;
    if (x130_remTime <= 0.f) {
      return false;
    }
  }
  if (UpdateOnFire(dt, actor, mgr)) {
    active = true;
  }
  if (UpdateAshGen(dt, actor, mgr)) {
    active = true;
  }
  if (UpdateIce(dt, actor, mgr)) {
    active = true;
  }
  if (UpdateFirePop(dt, actor)) {
    active = true;
  }
  if (UpdateElectric(dt, actor, mgr)) {
    active = true;
  }
  if (UpdateRainSplash(dt, actor, mgr)) {
    active = true;
  }
  if (UpdateBurn(dt, actor, mgr)) {
    active = true;
  }
  if (UpdateIcePop(dt, actor)) {
    active = true;
  }
  return active;
}

bool CActorModelParticles::CItem::UpdateElectric(float dt, const CActor* actor,
                                                 CStateManager& mgr) {
  if (!xc0_electricGen.null()) {
    if (xc0_electricGen->IsSystemDeletable()) {
      xc0_electricGen = rstl::auto_ptr< CParticleElectric >();
    } else {
      if (actor != nullptr && actor->GetActive()) {
        xc0_electricGen->SetGlobalOrientation(actor->GetTransform().GetRotation());
        xc0_electricGen->SetGlobalTranslation(actor->GetTranslation());
      }
      if (actor == nullptr || actor->GetActive()) {
        xc0_electricGen->SetModulationColor(xd0_electricColor);
        xc0_electricGen->Update(dt);
        return true;
      }
    }
  } else if (x134_lockDeps & (1 << kST_Electric)) {
    if (x128_parent->xe6_loadedDeps & (1 << kST_Electric)) {
      CParticleElectric* gen = x128_parent->MakeElectricGen();
      gen->SetModulationColor(xd0_electricColor);
      xc0_electricGen = gen;
      xc8_electricPointIterator = 0;
      xcc_electricSeed = mgr.Random()->Next();
    }
    return true;
  }
  DontUseType(kST_Electric);
  return false;
}

bool CActorModelParticles::CItem::UpdateRainSplash(float dt, const CActor* actor,
                                                   CStateManager& mgr) {
  if (!xd4_rainSplashGen.null()) {
    if (!xd4_rainSplashGen->IsRaining()) {
      xd4_rainSplashGen = rstl::auto_ptr< CRainSplashGenerator >();
    } else {
      xd4_rainSplashGen->Update(dt, mgr);
      return true;
    }
  }
  return false;
}

bool CActorModelParticles::CItem::UpdateIce(float dt, const CActor* actor, CStateManager& mgr) {
  if (xb0_icePointIterator != -1) {
    return true;
  }
  if (!x8c_iceGens.empty()) {
    bool active = false;
    for (AUTO(it, x8c_iceGens.begin()); it != x8c_iceGens.end(); ++it) {
      CElementGen* gen = it->get();
      if (!gen->IsSystemDeletable()) {
        active = true;
      }
      gen->Update(dt);
    }
    if (!active) {
      x8c_iceGens.clear();
    } else {
      return true;
    }
  } else if ((x134_lockDeps & (1 << kST_Ice)) && actor != nullptr) {
    if (x128_parent->xe6_loadedDeps & (1 << kST_Ice)) {
      xb0_icePointIterator = 0;
      xb4_iceSeed = mgr.Random()->Next();
    }
    return true;
  }
  DontUseType(kST_Ice);
  return false;
}

bool CActorModelParticles::CItem::UpdateFirePop(float dt, const CActor* actor) {
  if (!xb8_firePopGen.null()) {
    if (xb8_firePopGen->IsSystemDeletable()) {
      xb8_firePopGen = rstl::auto_ptr< CElementGen >();
    } else {
      xb8_firePopGen->Update(dt);
      return true;
    }
  } else if ((x134_lockDeps & (1 << kST_FirePop)) && actor != nullptr) {
    if (x128_parent->xe6_loadedDeps & (1 << kST_FirePop)) {
      CElementGen* gen = x128_parent->MakeFirePopGen();
      gen->SetGlobalOrientation(actor->GetTransform());
      gen->SetGlobalTranslation(actor->GetRenderBoundsCached().GetCenterPoint());
      xb8_firePopGen = gen;
    }
    return true;
  }
  DontUseType(kST_FirePop);
  return false;
}

bool CActorModelParticles::CItem::UpdateIcePop(float dt, const CActor* actor) {
  if (!xe4_icePopGen.null()) {
    if (xe4_icePopGen->IsSystemDeletable()) {
      xe4_icePopGen = rstl::auto_ptr< CElementGen >();
    } else {
      xe4_icePopGen->Update(dt);
      return true;
    }
  } else if ((x134_lockDeps & (1 << kST_IcePop)) && actor != nullptr) {
    if (x128_parent->xe6_loadedDeps & (1 << kST_IcePop)) {
      CElementGen* gen = x128_parent->MakeIcePopGen();
      gen->SetGlobalOrientation(actor->GetTransform());
      gen->SetGlobalTranslation(actor->GetRenderBoundsCached().GetCenterPoint());
      xe4_icePopGen = gen;
    }
    return true;
  }
  DontUseType(kST_IcePop);
  return false;
}

bool CActorModelParticles::CItem::UpdateAshGen(float dt, const CActor* actor, CStateManager& mgr) {
  if (!x78_ashGen.null()) {
    if (x84_ashMaxParticles == 0 && x78_ashGen->IsSystemDeletable()) {
      x78_ashGen = rstl::auto_ptr< CElementGen >();
    } else {
      if (actor != nullptr) {
        x78_ashGen->SetGlobalOrientAndTrans(actor->GetTransform());
      }
      x78_ashGen->Update(dt);
      return true;
    }
  } else if ((x134_lockDeps & (1 << kST_Ash)) && actor != nullptr) {
    if (x128_parent->xe6_loadedDeps & (1 << kST_Ash)) {
      CElementGen* gen = x128_parent->MakeAshGen();
      x78_ashGen = gen;
      x80_ashPointIterator = 0;
      gen->SetGlobalOrientAndTrans(actor->GetTransform());
      float scale = IsMediumOrLarge(*actor) ? 1.f : 0.3f;
      x84_ashMaxParticles = static_cast< uint >(scale * gen->GetMaxParticles());
      x88_ashSeed = mgr.Random()->Next();
    }
    return true;
  }
  DontUseType(kST_Ash);
  return false;
}

bool CActorModelParticles::CItem::UpdateOnFire(float dt, CActor* actor, CStateManager& mgr) {
  bool sfxActive = false;
  bool effectActive = false;
  x6c_onFireDelayTimer -= dt;
  if (x6c_onFireDelayTimer < 0.f) {
    x6c_onFireDelayTimer = 0.f;
  }
  if (x134_lockDeps & (1 << kST_OnFire)) {
    if (x128_parent->xe6_loadedDeps & (1 << kST_OnFire)) {
      if (x70_onFire && actor != nullptr) {
        bool create = true;
        if (!x78_ashGen.null() || xdc_ashy.IsLocked()) {
          create = false;
        } else if (!IsMediumOrLarge(*actor)) {
          int count = 0;
          for (int i = 0; i < 8; ++i) {
            if (!x8_onFireGens[i].first.null()) {
              ++count;
            }
          }
          if (count >= 4) {
            create = false;
          }
        }
        if (create) {
          for (int i = 0; i < 8; ++i) {
            rstl::pair< rstl::auto_ptr< CElementGen >, uint >& pair = x8_onFireGens[i];
            if (pair.first.null()) {
              pair.second = mgr.Random()->Next();
              pair.first = x128_parent->MakeOnFireGen();
              x6c_onFireDelayTimer = 0.3f;
              break;
            }
          }
        }
        if (!x74_sfx) {
          const int sfx = IsMediumOrLarge(*actor) ? SFXeff_x_fire_lp_00 : SFXeff_x_fire_lp_01;
          x74_sfx =
              CSfxManager::AddEmitter(sfx, actor->GetTranslation(), CVector3f::Zero(), true, true);
        }
        x70_onFire = false;
      }
      for (int i = 0; i < 8; ++i) {
        if (!x8_onFireGens[i].first.null()) {
          CElementGen* const gen = x8_onFireGens[i].first.get();
          if (gen->IsSystemDeletable()) {
            x8_onFireGens[i].first = rstl::auto_ptr< CElementGen >();
          } else {
            if (actor != nullptr) {
              gen->SetGlobalOrientAndTrans(actor->GetTransform());
            }
            gen->Update(dt);
            effectActive = true;
            sfxActive = true;
          }
        }
      }
    } else {
      effectActive = true;
    }
  }
  if (x74_sfx) {
    if (sfxActive) {
      CSfxManager::UpdateEmitter(x74_sfx, xf8_iceXf.GetTranslation(), CVector3f::Zero(), 0x7f);
    } else {
      CSfxManager::RemoveEmitter(x74_sfx);
      x74_sfx.Clear();
    }
  }
  if (!effectActive) {
    DontUseType(kST_OnFire);
  }
  return effectActive;
}

bool CActorModelParticles::CItem::UpdateBurn(float dt, const CActor* actor, CStateManager& mgr) {
  if (actor == nullptr) {
    xdc_ashy.Unlock();
  }
  return xdc_ashy.IsLocked();
}

void CActorModelParticles::CItem::UseType(ESystemTypes dep) {
  const uchar mask = 1 << dep;
  if (!(x134_lockDeps & mask)) {
    x128_parent->AddTypeRef(dep);
    x134_lockDeps |= mask;
  }
}

void CActorModelParticles::CItem::DontUseType(ESystemTypes dep) {
  const uchar mask = 1 << dep;
  if (x134_lockDeps & mask) {
    x128_parent->DelTypeRef(dep);
    x134_lockDeps &= ~mask;
  }
}

void CActorModelParticles::PointGenerator(uint context, const CVector3f* vertices,
                                          const CVector3f* normals, int count) {
  reinterpret_cast< CItem* >(context)->GeneratePoints(vertices, normals, count);
}

void CActorModelParticles::SetupHook(TUniqueId uid) const {
  AUTO(it, FindSystem(uid));
  if (it != x0_items.end()) {
    CSkinnedModel::SetPointGeneratorFunc(
        const_cast< CItem* >(&*it),
        reinterpret_cast< void (*)(void*, const CVector3f*, const CVector3f*, int) >(
            PointGenerator));
  }
}

rstl::list< CActorModelParticles::CItem >::iterator
CActorModelParticles::FindOrCreateSystem(CActor& actor) {
  const TUniqueId uid = actor.GetUniqueId();
  if (actor.GetPointGeneratorParticles()) {
    for (AUTO(it, x0_items.begin()); it != x0_items.end(); ++it) {
      if (it->x0_id == uid) {
        return it;
      }
    }
  }
  actor.SetPointGeneratorParticles(true);
  return x0_items.insert(x0_items.begin(), CItem(actor, *this));
}

rstl::list< CActorModelParticles::CItem >::const_iterator
CActorModelParticles::FindSystem(TUniqueId uid) const {
  for (AUTO(it, x0_items.begin()); it != x0_items.end(); ++it) {
    if (it->x0_id == uid) {
      return it;
    }
  }
  return x0_items.end();
}

rstl::list< CActorModelParticles::CItem >::iterator
CActorModelParticles::FindSystem(TUniqueId uid) {
  for (AUTO(it, x0_items.begin()); it != x0_items.end(); ++it) {
    if (it->x0_id == uid) {
      return it;
    }
  }
  return x0_items.end();
}

CElementGen* CActorModelParticles::MakeAshGen() { return rs_new CElementGen(x20_ash); }

CElementGen* CActorModelParticles::MakeFirePopGen() { return rs_new CElementGen(x30_firePop); }

CElementGen* CActorModelParticles::MakeIcePopGen() { return rs_new CElementGen(x38_icePop); }

CParticleElectric* CActorModelParticles::MakeElectricGen() {
  return rs_new CParticleElectric(x40_electric);
}

CElementGen* CActorModelParticles::MakeOnFireGen() { return rs_new CElementGen(x18_onFire); }

void CActorModelParticles::StartAsh(CActor& actor) {
  AUTO(it, FindOrCreateSystem(actor));
  it->UseType(kST_Ash);
}

void CActorModelParticles::DoFirePop(CActor& actor) {
  AUTO(it, FindOrCreateSystem(actor));
  it->UseType(kST_FirePop);
}

void CActorModelParticles::DoIcePop(CActor& actor) {
  AUTO(it, FindOrCreateSystem(actor));
  it->UseType(kST_IcePop);
}

void CActorModelParticles::StartIce(CActor& actor) {
  AUTO(it, FindOrCreateSystem(actor));
  it->UseType(kST_Ice);
}

void CActorModelParticles::StartElectric(CActor& actor) {
  AUTO(it, FindOrCreateSystem(actor));
  if (it->xc0_electricGen.get() == nullptr) {
    it->UseType(kST_Electric);
  } else {
    CParticleElectric* gen = it->xc0_electricGen.get();
    if (!gen->GetParticleEmission()) {
      gen->SetParticleEmission(true);
    }
  }
}

void CActorModelParticles::StopElectric(CActor& actor) {
  if (actor.GetPointGeneratorParticles()) {
    AUTO(it, FindSystem(actor.GetUniqueId()));
    if (it != x0_items.end() && !it->xc0_electricGen.null()) {
      it->xc0_electricGen->SetParticleEmission(false);
    }
  }
}

void CActorModelParticles::LightDudeOnFire(CActor& actor) {
  AUTO(it, FindOrCreateSystem(actor));
  it->UseType(kST_OnFire);
  if (it->x6c_onFireDelayTimer <= 0.f) {
    it->x70_onFire = true;
  }
}

void CActorModelParticles::StopFire(CActor& actor) {
  if (actor.GetPointGeneratorParticles()) {
    AUTO(it, FindSystem(actor.GetUniqueId()));
    if (it != x0_items.end()) {
      for (int i = 0; i < 8; ++i) {
        CElementGen* gen = it->x8_onFireGens[i].first.get();
        if (gen != nullptr) {
          gen->SetParticleEmission(false);
        }
      }
    }
  }
}

void CActorModelParticles::AddRainSplashGenerator(CActor& actor, CStateManager& mgr,
                                                  int maxSplashes, int genRate, float minZ) {
  AUTO(it, FindOrCreateSystem(actor));
  if (it->xd4_rainSplashGen.null() && actor.HasModelData()) {
    it->xd4_rainSplashGen =
        rs_new CRainSplashGenerator(actor.GetModelScale(), maxSplashes, genRate, minZ, 0.1875f);
  }
}

void CActorModelParticles::RemoveRainSplashGenerator(CActor& actor) {
  AUTO(it, FindOrCreateSystem(actor));
  if (!it->xd4_rainSplashGen.null()) {
    it->xd4_rainSplashGen = rstl::auto_ptr< CRainSplashGenerator >();
  }
}

CElementGen* CActorModelParticles::MakeIceGen() { return rs_new CElementGen(x28_iceBreak); }

CActorModelParticles::CActorModelParticles()
: x18_onFire(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName(skParticleNames[0])))
, x20_ash(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName(skParticleNames[2])))
, x28_iceBreak(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName(skParticleNames[1])))
, x30_firePop(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName(skParticleNames[3])))
, x38_icePop(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName(skParticleNames[5])))
, x40_electric(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName(skParticleNames[4])))
, x48_ashy(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName("TXTR_Ashy"))) {
  InitializeSystemTypes();
}

void CActorModelParticles::InitializeSystemTypes() {
  for (int i = 0; i < 6; ++i) {
    const rstl::string name = rstl::string_l(skParticleNames[i]) + rstl::string_l("_DGRP");
    x50_dgrps.push_back(CSystem(name.data()));
  }
}

void CActorModelParticles::AddTypeRef(ESystemTypes dep) {
  const uchar mask = 1 << dep;
  x50_dgrps[dep].AddRef();
  if (!(xe6_loadedDeps & mask)) {
    xe4_loadingDeps |= mask;
  }
}

void CActorModelParticles::DelTypeRef(ESystemTypes dep) {
  CSystem& system = x50_dgrps[dep];
  system.DelRef();
  if (system.x10_refCount == 0) {
    const uchar mask = ~(1 << dep);
    xe4_loadingDeps &= mask;
    xe6_loadedDeps &= mask;
    xe5_justLoadedDeps &= mask;
  }
}

void CActorModelParticles::UpdateSystemTypes() {
  if (xe4_loadingDeps != 0) {
    xe5_justLoadedDeps = 0;
    for (int i = 0; i < 6; ++i) {
      const uchar mask = 1 << i;
      CSystem& system = x50_dgrps[i];
      if (xe4_loadingDeps & mask) {
        system.Update();
        if (system.x14_loaded) {
          xe5_justLoadedDeps |= mask;
          xe4_loadingDeps &= ~mask;
        }
      }
    }
    xe6_loadedDeps |= xe5_justLoadedDeps;
  }
}

void CActorModelParticles::StartBurnDeath(CActor& actor) {
  AUTO(it, FindOrCreateSystem(actor));
  const short sfx = IsMediumOrLarge(actor) ? SFXeff_x_ash_00 : SFXeff_x_ash_01;
  CSfxManager::AddEmitter(sfx, actor.GetTranslation(), CVector3f::Zero(), true, false);
  it->xdc_ashy.Lock();
}

CTexture* CActorModelParticles::GetAshyTexture(const CActor& actor) const {
  AUTO(it, FindSystem(actor.GetUniqueId()));
  if (it != x0_items.end() && it->xdc_ashy.IsLocked() && it->xdc_ashy.IsLoaded()) {
    return *TToken< CTexture >(it->xdc_ashy);
  }
  return nullptr;
}

void CActorModelParticles::Update(float dt, CStateManager& mgr) {
  UpdateSystemTypes();
  AUTO(it, x0_items.begin());
  while (it != x0_items.end()) {
    if (!it->Update(dt, mgr)) {
      if (CActor* actor = static_cast< CActor* >(mgr.ObjectById(it->x0_id))) {
        actor->SetPointGeneratorParticles(false);
      }
      it = x0_items.erase(it);
    } else {
      ++it;
    }
  }
}

static int GetNextBestPt(int start, const CVector3f* vertices, int count, CRandom16& random) {
  int best = start;
  const CVector3f& startVec = vertices[start];
  float maxDistance = 0.f;
  for (int i = 0; i < 10; ++i) {
    const int index = random.Range(0, count - 1);
    const CVector3f& point = vertices[index];
    const CVector3f& delta = startVec - point;
    const float distance = delta.MagSquared();
    if (distance > maxDistance) {
      best = index;
      maxDistance = distance;
    }
  }
  return best;
}

void CActorModelParticles::CItem::GeneratePoints(const CVector3f* vertices,
                                                 const CVector3f* normals, int count) {
  for (int i = 0; i < 8; ++i) {
    CElementGen* const gen = x8_onFireGens[i].first.get();
    if (gen != nullptr) {
      CRandom16 random(x8_onFireGens[i].second);
      const float randomValue = random.Float();
      const int index = randomValue * (count - 1);
      gen->SetTranslation(CVector3f::ByElementMultiply(xec_particleOffsetScale, vertices[index]));
    }
  }
  if (x84_ashMaxParticles > 0) {
    CRandom16 random(x88_ashSeed);
    const int numParticles = rstl::min_val(16, x84_ashMaxParticles);
    int previousIndex = x80_ashPointIterator;
    for (int i = 0; i < numParticles; ++i) {
      const int index = GetNextBestPt(previousIndex, vertices, count, random);
      x78_ashGen->SetTranslation(
          CVector3f::ByElementMultiply(xec_particleOffsetScale, vertices[index]));
      CVector3f normal = normals[index];
      normal.SetZ(0.f);
      if (normal.CanBeNormalized()) {
        normal.Normalize();
        const CVector3f& right = CVector3f::Cross(normal, CVector3f::Up());
        CElementGen* gen = x78_ashGen.get();
        gen->SetOrientation(CTransform4f::FromColumns(right, normal, CVector3f::Up(), CVector3f::Zero()));
      }
      x78_ashGen->ForceParticleCreation(1);
      previousIndex = index;
    }
    x84_ashMaxParticles -= numParticles;
    x88_ashSeed = random.GetSeed();
    x80_ashPointIterator = previousIndex;
  }
  if (xb0_icePointIterator != -1) {
    CRandom16 random(xb4_iceSeed);
    CElementGen* gen = x128_parent->MakeIceGen();
    gen->SetGlobalOrientAndTrans(xf8_iceXf);
    const int index = GetNextBestPt(xb0_icePointIterator, vertices, count, random);
    gen->SetTranslation(CVector3f::ByElementMultiply(xec_particleOffsetScale, vertices[index]));
    const CUnitVector3f normal(normals[index]);
    gen->SetOrientation(CTransform4f::MakeRotationsBasedOnY(normal));
    x8c_iceGens.push_back(gen);
    if (x8c_iceGens.size() == 4) {
      xb0_icePointIterator = -1;
    } else {
      xb0_icePointIterator = index;
    }
  }
  if (!xc0_electricGen.null() && xc0_electricGen->GetParticleEmission()) {
    CRandom16 random(xcc_electricSeed);
    const int numParticles = rstl::min_val(1, 4);
    int previousIndex = xc8_electricPointIterator;
    for (int i = 0; i < numParticles; ++i) {
      const int initialIndex = random.Range(0, count - 1);
      xc0_electricGen->SetOverrideIPos(
          CVector3f::ByElementMultiply(xec_particleOffsetScale, vertices[initialIndex]));
      const int index = random.Range(0, count - 1);
      xc0_electricGen->SetOverrideFPos(
          CVector3f::ByElementMultiply(xec_particleOffsetScale, vertices[index]));
      xc0_electricGen->ForceParticleCreation(1);
      previousIndex = index;
    }
    xcc_electricSeed = random.GetSeed();
    xc8_electricPointIterator = previousIndex;
  }
  if (!xd4_rainSplashGen.null()) {
    xd4_rainSplashGen->GeneratePoints(vertices, normals, count);
  }
}

void CActorModelParticles::AddStragglersToRenderer(const CStateManager& mgr) const {
  const bool notCold = mgr.GetThermalDrawFlag() != kTD_Cold;
  const bool notHot = mgr.GetThermalDrawFlag() != kTD_Hot;
  for (AUTO(it, x0_items.begin()); it != x0_items.end(); ++it) {
    const CItem& item = *it;
    if (item.x4_areaId != kInvalidAreaId) {
      const CGameArea& area = mgr.GetWorld()->GetAreaAlways(item.x4_areaId);
      if (!area.IsPostConstructed() || area.GetOcclusionState() == CGameArea::kOS_Occluded) {
        continue;
      }
    }
    if (mgr.GetObjectById(item.x0_id) &&
        ((notCold && item.x12c_24_thermalCold) || (notHot && item.x12c_25_thermalHot))) {
      item.x12c_25_thermalHot = item.x12c_24_thermalCold = false;
      continue;
    }
    if (notCold) {
      for (int i = 0; i < 8; ++i) {
        if (!item.x8_onFireGens[i].first.null()) {
          gpRender->AddParticleGen(*item.x8_onFireGens[i].first);
        }
      }
      if (mgr.GetThermalDrawFlag() != kTD_Hot && !item.x78_ashGen.null()) {
        gpRender->AddParticleGen(*item.x78_ashGen);
      }
      if (!item.xb8_firePopGen.null()) {
        gpRender->AddParticleGen(*item.xb8_firePopGen);
      }
      if (!item.xc0_electricGen.null()) {
        gpRender->AddParticleGen(*item.xc0_electricGen);
      }
    }
    if (notHot) {
      for (AUTO(gen, item.x8c_iceGens.begin()); gen != item.x8c_iceGens.end(); ++gen) {
        gpRender->AddParticleGen(**gen);
      }
      if (!item.xe4_icePopGen.null()) {
        gpRender->AddParticleGen(*item.xe4_icePopGen);
      }
    }
    if (notCold) {
      item.x12c_25_thermalHot = item.x12c_24_thermalCold = false;
    }
  }
}

void CActorModelParticles::Render(const CStateManager& mgr, const CActor& actor) const {
  const CTransform4f modelMatrix = CGraphics::GetModelMatrix();
  const TUniqueId uid = actor.GetUniqueId();
  AUTO(it, FindSystem(uid));
  if (it == x0_items.end()) {
    return;
  }
  const CItem& item = *it;
  if (item.x4_areaId != kInvalidAreaId) {
    const CGameArea& area = mgr.GetWorld()->GetAreaAlways(item.x4_areaId);
    if (!area.IsPostConstructed() || area.GetOcclusionState() == CGameArea::kOS_Occluded) {
      return;
    }
  }
  const bool notCold = mgr.GetThermalDrawFlag() != kTD_Cold;
  const bool notHot = mgr.GetThermalDrawFlag() != kTD_Hot;
  if (notCold) {
    for (int i = 0; i < 8; ++i) {
      if (!item.x8_onFireGens[i].first.null()) {
        item.x8_onFireGens[i].first->Render();
      }
    }
    if (mgr.GetThermalDrawFlag() != kTD_Hot && !item.x78_ashGen.null()) {
      item.x78_ashGen->Render();
    }
    if (!item.xb8_firePopGen.null()) {
      item.xb8_firePopGen->Render();
    }
    if (!item.xc0_electricGen.null()) {
      item.xc0_electricGen->Render();
    }
    item.x12c_24_thermalCold = true;
  }
  if (notHot) {
    for (AUTO(gen, item.x8c_iceGens.begin()); gen != item.x8c_iceGens.end(); ++gen) {
      (*gen)->Render();
    }
    if (!item.xd4_rainSplashGen.null() && actor.HasModelData()) {
      item.xd4_rainSplashGen->Draw(actor.GetTransform());
    }
    if (!item.xe4_icePopGen.null()) {
      item.xe4_icePopGen->Render();
    }
    item.x12c_25_thermalHot = true;
  }
  CGraphics::SetModelMatrix(modelMatrix);
}
