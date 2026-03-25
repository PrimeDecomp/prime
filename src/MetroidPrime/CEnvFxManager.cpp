#include "MetroidPrime/CEnvFxManager.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/CRandom16.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Particles/CGenDescription.hpp"
#include "Kyoto/Particles/CParticleGen.hpp"
#include "MetaRender/CCubeRenderer.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/ScriptObjects/CHUDBillboardEffect.hpp"
#include "MetroidPrime/ScriptObjects/CScriptTrigger.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWater.hpp"
#include "MetroidPrime/TCastTo.hpp"

#include "Collision/CCollidableAABox.hpp"
#include "Collision/CMaterialFilter.hpp"
#include "MetroidPrime/CGameCollision.hpp"

#include "Kyoto/Graphics/CGX.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/math.hpp"

#include "dolphin/gx/GXGeometry.h"
#include "dolphin/gx/GXTev.h"

#include <float.h>

#pragma inline_max_size(250)

static const float gkReal32Max = FLT_MAX;
static float g_SnowForces[256][2];

CEnvFxManagerGrid::CEnvFxManagerGrid(const CVector2i& position, const CVector2i& extent,
                                     const rstl::vector< CVectorFixed8_8 >& initialParticles,
                                     int reserve)
: x0_24_blockDirty(true)
, x4_position(position)
, xc_extent(extent)
, x14_block(false, gkReal32Max)
, x1c_particles(initialParticles) {
  x1c_particles.reserve(reserve);
}

CEnvFxManager::CEnvFxManager()
: x0_particleBounds(CVector3f(-63.5f, -63.5f, -63.5f), CVector3f(63.5f, 63.5f, 63.5f))
, x18_focusCellPosition(CVector3f::Zero())
, x24_enableSplash(false)
, x28_firstSnowForce(0.f)
, x2c_lastBlockedGridIdx(-1)
, x30_fxDensity(0.f)
, x34_targetFxDensity(0.f)
, x38_maxDensityDeltaSpeed(0.f)
, x3c_snowflakeTextureMipBlanked(false)
, x40_txtrEnvGradient(TLockedToken< CTexture >(gpSimplePool->GetObj("TXTR_EnvGradient")))
, xb58_envRainSplash(TLockedToken< CGenDescription >(gpSimplePool->GetObj("PART_EnvRainSplash")))
, xb68_envRainSplashId(kInvalidUniqueId)
, xb6a_rainSoundActive(false)
, xb74_txtrSnowFlake(TLockedToken< CTexture >(gpSimplePool->GetObj("TXTR_SnowFlake")))
, xc48_underwaterFlake(TLockedToken< CTexture >(gpSimplePool->GetObj("TXTR_UnderwaterFlake"))) {
  CRandom16 random(0);
  for (int i = 0; i < 8; ++i) {
    for (int j = 0; j < 8; ++j) {
      x50_grids.push_back(CEnvFxManagerGrid(CVector2i(j * 0x800, i * 0x800),
                                            CVector2i(0x800, 0x800),
                                            rstl::vector< CVectorFixed8_8 >(), 0xab));
    }
  }
  for (int i = 15; i >= 0; --i) {
    xb84_snowZDeltas.push_back(CVector3f(0.f, 0.f, random.Range(-2.f, -4.f)));
  }
}

void CEnvFxManagerGrid::RenderRainParticles(const CTransform4f& camXf) {
  int particleCount = x1c_particles.size();
  float absDot = CMath::AbsF(CVector3f::Dot(camXf.GetUp(), CVector3f::Up()));
  CGX::Begin(GX_LINES, GX_VTXFMT6, particleCount * 2);
  short zOffset = static_cast< short >(512.f * (1.f - absDot) + 256.f);
  for (int i = 0; i < particleCount; ++i) {
    CVectorFixed8_8 p = x1c_particles[i];
    RSPosition3s16(p.x, p.y, p.z);
    RSTexCoord1s16(10);
    RSPosition3s16(p.x, p.y, p.z + zOffset);
    RSTexCoord1s16(0);
  }
  CGX::End();
}

void CEnvFxManagerGrid::RenderSnowParticles(const CTransform4f& camXf) {
  int particleCount = x1c_particles.size();
  short zx = real_to_fixed8_8(0.2f * camXf.Get02());
  short zy = real_to_fixed8_8(0.2f * camXf.Get12());
  short zz = real_to_fixed8_8(0.2f * camXf.Get22());
  short xx = real_to_fixed8_8(0.2f * camXf.Get00());
  short xy = real_to_fixed8_8(0.2f * camXf.Get10());
  short xz = real_to_fixed8_8(0.2f * camXf.Get20());
  CGX::Begin(GX_QUADS, GX_VTXFMT6, particleCount * 4);
  for (int i = particleCount - 1; i >= 0; --i) {
    CVectorFixed8_8 p = x1c_particles[i];
    RSPosition3s16(p.x, p.y, p.z);
    RSTexCoord2u8(0, 0);
    p.x += zx;
    p.y += zy;
    p.z += zz;
    RSPosition3s16(p.x, p.y, p.z);
    RSTexCoord2u8(0, 2);
    p.x += xx;
    p.y += xy;
    p.z += xz;
    RSPosition3s16(p.x, p.y, p.z);
    RSTexCoord2u8(2, 2);
    p.x -= zx;
    p.y -= zy;
    p.z -= zz;
    RSPosition3s16(p.x, p.y, p.z);
    RSTexCoord2u8(2, 0);
  }
  CGX::End();
}

void CEnvFxManagerGrid::RenderUnderwaterParticles(const CTransform4f& camXf) {
  int particleCount = x1c_particles.size();
  short zx = real_to_fixed8_8(0.5f * camXf.Get02());
  short zy = real_to_fixed8_8(0.5f * camXf.Get12());
  short zz = real_to_fixed8_8(0.5f * camXf.Get22());
  short xx = real_to_fixed8_8(0.5f * camXf.Get00());
  short xy = real_to_fixed8_8(0.5f * camXf.Get10());
  short xz = real_to_fixed8_8(0.5f * camXf.Get20());
  CGX::Begin(GX_QUADS, GX_VTXFMT6, particleCount * 4);
  for (int i = particleCount - 1; i >= 0; --i) {
    CVectorFixed8_8 p = x1c_particles[i];
    RSPosition3s16(p.x, p.y, p.z);
    RSTexCoord2u8(0, 0);
    p.x += zx;
    p.y += zy;
    p.z += zz;
    RSPosition3s16(p.x, p.y, p.z);
    RSTexCoord2u8(0, 2);
    p.x += xx;
    p.y += xy;
    p.z += xz;
    RSPosition3s16(p.x, p.y, p.z);
    RSTexCoord2u8(2, 2);
    p.x -= zx;
    p.y -= zy;
    p.z -= zz;
    RSPosition3s16(p.x, p.y, p.z);
    RSTexCoord2u8(2, 0);
  }
  CGX::End();
}

void CEnvFxManagerGrid::Render(const CTransform4f& xf, const CTransform4f& invXf,
                               const CTransform4f& camXf, float fxDensity, EEnvFxType fxType) {
  if (!x1c_particles.empty() && x14_block.first) {
    float gridX = fixed8_8_to_real(x4_position.GetX());
    float gridY = fixed8_8_to_real(x4_position.GetY());
    CTransform4f gridXf = xf * CTransform4f::Translate(gridX, gridY, 0.f);
    gpRender->SetModelMatrix(gridXf);

    if (fxType == kEFX_Snow || fxType == kEFX_Rain) {
      CVector3f localUp = invXf * (x14_block.second * CVector3f::Up());
      float texMtx[2][4] = {
          {0.f, 0.f, 0.f, 0.f},
          {0.f, 0.f, 10.f, 0.f},
      };
      texMtx[1][3] = -(10.f * localUp.GetZ() + 0.5f);
      GXLoadTexMtxImm(texMtx, GX_TEXMTX5, GX_MTX2x4);
    }

    switch (fxType) {
    case kEFX_Snow:
      RenderSnowParticles(camXf);
      break;
    case kEFX_Rain:
      RenderRainParticles(camXf);
      break;
    case kEFX_UnderwaterFlake:
      RenderUnderwaterParticles(camXf);
      break;
    default:
      break;
    }
  }
}

CVector3f CEnvFxManager::GetParticleBoundsToWorldScale() const {
  return (x0_particleBounds.GetMaxPoint() - x0_particleBounds.GetMinPoint()) / 127.f;
}

void CEnvFxManager::MoveWrapCells(int moveX, int moveY) {
  if (moveX == 0 && moveY == 0)
    return;

  bool moveAll = CMath::AbsD(static_cast< double >(moveX)) >= 1.0 ||
                 CMath::AbsD(static_cast< double >(moveY)) >= 1.0;

  int moveYMaj = moveY << 11;
  int moveXMaj = moveX << 11;

  for (int i = 0; i < 8; ++i) {
    for (int j = 0; j < 8; ++j) {
      CEnvFxManagerGrid& grid = x50_grids[i * 8 + j];
      int startX = grid.GetStart().GetX();
      int startY = grid.GetStart().GetY();
      int srcCol = j - moveX;
      int srcRow = i - moveY;

      if (!moveAll && j >= 0 && j < 8 && i >= 0 && i < 8) {
        int srcOff = srcRow;
        srcOff <<= 3;
        grid.SetVisibility(x50_grids[srcCol + srcOff].GetVisibility());
      } else {
        grid.SetDirty(true);
      }

      grid.SetStart(CVector2i((moveXMaj + startX) & 0x3FFF, (moveYMaj + startY) & 0x3FFF));
    }
  }
}

void CEnvFxManager::AsyncLoadResources(CStateManager& mgr) {
  xb68_envRainSplashId = mgr.AllocateUniqueId();
  CHUDBillboardEffect* effect = rs_new CHUDBillboardEffect(
      rstl::optional_object< TToken< CGenDescription > >(*xb58_envRainSplash),
      rstl::optional_object< TToken< CElectricDescription > >(), xb68_envRainSplashId, true,
      rstl::string_l("VisorRainSplashes"), CHUDBillboardEffect::GetNearClipDistance(mgr),
      CHUDBillboardEffect::GetScaleForPOV(mgr), CColor(1.f, 1.f, 1.f, 1.f),
      CVector3f(1.f, 1.f, 1.f), CVector3f(0.f, 0.f, 0.f));
  effect->SetRunIndefinitely(true);
  mgr.AddObject(effect);
}

void CEnvFxManager::Initialize() {
  const SObjectTag* tag = gpResourceFactory->GetResourceIdByName("DUMB_SnowForces");
  rstl::auto_ptr< CInputStream > stream(
      gpResourceFactory->GetResLoader().LoadNewResourceSync(*tag, NULL));
  for (int i = 0; i < 256; ++i) {
    for (int j = 0; j < 2; ++j) {
      g_SnowForces[i][j] = stream->ReadFloat();
    }
  }
}

void CEnvFxManager::Cleanup() {
  xb68_envRainSplashId = kInvalidUniqueId;
  xb6a_rainSoundActive = false;
  xb6c_leftRainSound.Clear();
  xb70_rightRainSound.Clear();
}

void CEnvFxManager::Update(float dt, CStateManager& mgr) {
  EEnvFxType fxType = mgr.GetWorld()->GetNeededEnvFx();
  CTransform4f camXf(mgr.GetCameraManager()->GetCurrentCameraTransform(mgr));

  if (mgr.GetCameraManager()->GetFluidCounter() != 0) {
    x2c_lastBlockedGridIdx = -1;
    x24_enableSplash = false;
    SetSplashEffectRate(0.f, mgr);
  }

  UpdateRainSounds(mgr);
  UpdateVisorSplash(mgr, dt, camXf);

  if (fxType == kEFX_None) {
    for (int i = x50_grids.size() - 1; i >= 0; --i) {
      if (x50_grids[i].GetVisibility().first) {
        x50_grids[i].Particles() = rstl::vector< CVectorFixed8_8 >();
      }
    }
  } else {
    float densityDelta = x34_targetFxDensity - x30_fxDensity;
    float densityDamper = rstl::min_val(1.f, CMath::AbsF(densityDelta) / 0.15f);
    float maxDensityDelta = dt * (x38_maxDensityDeltaSpeed / 11000.f);
    float clampedDelta;
    if (fabs(densityDelta) > maxDensityDelta) {
      clampedDelta = maxDensityDelta * CMath::Sign(densityDelta);
    } else {
      clampedDelta = densityDelta;
    }
    x30_fxDensity += densityDamper * clampedDelta;

    CVector3f pbtws = GetParticleBoundsToWorldScale();
    CVector3f oopbtws(1.f / pbtws.GetX(), 1.f / pbtws.GetY(), 1.f / pbtws.GetZ());

    CVector3f forwardPoint = camXf.GetTranslation() + camXf.GetForward() * 23.8125f;
    CVector3f cellBase = forwardPoint - CVector3f(CMath::ModF(forwardPoint.GetX(), 7.9375f),
                                                  CMath::ModF(forwardPoint.GetY(), 7.9375f), 0.f);
    CVector3f delta = x18_focusCellPosition - CVector3f(cellBase.GetX(), cellBase.GetY(), 0.f);

    float oldFocusZ = x18_focusCellPosition.GetZ();
    x18_focusCellPosition = cellBase;

    MoveWrapCells(static_cast< int >(delta.GetX() / 7.9375f),
                  static_cast< int >(delta.GetY() / 7.9375f));

    CVectorFixed8_8 zVec(real_to_fixed8_8(oopbtws.GetX() * 0.f),
                         real_to_fixed8_8(oopbtws.GetY() * 0.f),
                         real_to_fixed8_8(oopbtws.GetZ() * (oldFocusZ - cellBase.GetZ())));
    if (fxType == kEFX_UnderwaterFlake) {
      zVec.z += real_to_fixed8_8(0.5f * dt);
    }

    rstl::reserved_vector< CVectorFixed8_8, 256 > snowForces;
    CalculateSnowForces(zVec, snowForces, fxType, oopbtws, dt);

    CTransform4f xf = GetParticleBoundsToWorldTransform();
    CTransform4f invXf = xf.GetInverse();
    UpdateBlockedGrids(mgr, fxType, camXf, xf, invXf);
    CreateNewParticles(fxType);

    switch (fxType) {
    case kEFX_Snow:
      UpdateSnowParticles(snowForces);
      break;
    case kEFX_Rain:
      UpdateRainParticles(zVec, oopbtws, dt);
      break;
    case kEFX_UnderwaterFlake:
      UpdateUnderwaterParticles(zVec);
      break;
    default:
      break;
    }

    if (fxType == kEFX_Snow) {
      x28_firstSnowForce = CMath::ModF(1.f + x28_firstSnowForce, 256.f);
    } else {
      x28_firstSnowForce = CMath::ModF(0.125f + x28_firstSnowForce, 256.f);
    }
  }
}

void CEnvFxManager::CreateNewParticles(EEnvFxType type) {
  int maxParticleCount;
  if (type == kEFX_Snow)
    maxParticleCount = 0x1c98;
  else if (type == kEFX_Rain)
    maxParticleCount = 0x2af8;
  else
    maxParticleCount = (type == kEFX_UnderwaterFlake) ? 0x1fd6 : 0;

  maxParticleCount /= 64;
  int cellParticleCount = static_cast< int >(x30_fxDensity * maxParticleCount);

  static uint newParticlesSeed = 0;
  CRandom16 random(newParticlesSeed);

  for (int i = x50_grids.size() - 1; i >= 0; --i) {
    const rstl::pair< bool, float >& vis = x50_grids[i].GetVisibility();
    if (vis.first) {
      rstl::vector< CVectorFixed8_8 >& particles = x50_grids[i].x1c_particles;
      if (cellParticleCount > particles.x4_count) {
        if (cellParticleCount > particles.x8_capacity) {
          particles.reserve(maxParticleCount);
        }
        int remCount = cellParticleCount - particles.x4_count;
        for (int j = 0; j < remCount; ++j) {
          float zRand = random.Range(0.f, 63.f);
          int y = static_cast< int >(
              random.Range(0.f, static_cast< float >(x50_grids[i].xc_extent.GetY())));
          int x = static_cast< int >(
              random.Range(0.f, static_cast< float >(x50_grids[i].xc_extent.GetX())));
          int z = static_cast< int >(256.f * zRand);
          particles.push_back(CVectorFixed8_8(x, y, z));
        }
      } else {
        particles.resize(cellParticleCount);
      }
    }
  }

  newParticlesSeed = random.GetSeed();
}

void CEnvFxManager::CalculateSnowForces(const CVectorFixed8_8& zVec,
                                        rstl::reserved_vector< CVectorFixed8_8, 256 >& snowForces,
                                        EEnvFxType type, const CVector3f& oopbtws, float dt) {
  if (type == kEFX_Snow) {
    CVector3f vec = CVector3f::Zero();
    CVectorFixed8_8 prev;
    const float (*forces)[2] = (type == kEFX_Snow) ? g_SnowForces : nullptr;
    if (forces != nullptr) {
      for (int i = 255; i >= 0; --i) {
        vec +=
            CVector3f::ByElementMultiply(oopbtws, dt * CVector3f(forces[i][0], forces[i][1], 0.f));
        CVectorFixed8_8 cur = CVectorFixed8_8::FromCVector3f(vec);
        snowForces.push_back(cur - prev);
        prev = cur;
      }
    }
  }
  if (type == kEFX_Snow) {
    for (int i = 0; i < snowForces.size(); ++i) {
      const CVector3f& adjusted =
          CVector3f::ByElementMultiply(oopbtws, dt * xb84_snowZDeltas[i & 0xf]);
      snowForces[i] = snowForces[i] + CVectorFixed8_8::FromCVector3f(adjusted) + zVec;
    }
  }
}

void CEnvFxManager::UpdateBlockedGrids(CStateManager& mgr, EEnvFxType type,
                                       const CTransform4f& camXf, const CTransform4f& xf,
                                       const CTransform4f& invXf) {
  const CPlayer* player = mgr.GetPlayer();
  CVector3f playerPos = (player->GetMorphballTransitionState() == CPlayer::kMS_Unmorphed)
                            ? camXf.GetTranslation()
                            : player->GetBallPosition();

  CVector3f localPos = CVector3f(invXf * playerPos);
  CVector2i localPlayerPos(real_to_fixed8_8(localPos.GetX()), real_to_fixed8_8(localPos.GetY()));

  x2c_lastBlockedGridIdx = -1;
  x24_enableSplash = false;

  rstl::reserved_vector< TUniqueId, 1024 > blockList;
  bool blockListBuilt = false;
  int blockedGrids = 0;

  for (int i = 0; i < x50_grids.size(); ++i) {
    CEnvFxManagerGrid& grid = x50_grids[i];

    if (blockedGrids < 8 && grid.IsDirty()) {
      if (type == kEFX_UnderwaterFlake) {
        grid.SetVisibility(rstl::pair< bool, float >(true, -FLT_MAX));
      } else {
        CMaterialFilter filter = CMaterialFilter::MakeIncludeExclude(
            CMaterialList(kMT_Solid, kMT_Trigger),
            CMaterialList(kMT_ProjectilePassthrough, kMT_SeeThrough));

        CVector2i gridPos = grid.x4_position + grid.xc_extent * 0;
        float gx = fixed8_8_to_real(gridPos.GetX());
        float gy = fixed8_8_to_real(gridPos.GetY());

        CVector3f pos = xf * CVector3f(gx, gy, 0.f) + CVector3f::Up() * 500.f;
        CVector3f down = CVector3f::Down();

        CRayCastResult result =
            CGameCollision::RayStaticIntersection(mgr, pos, down, 1000.f, filter);
        CRayCastResult bestResult = result;

        if (result.IsValid()) {
          if (!blockListBuilt) {
            BuildBlockObjectList(blockList, mgr);
            blockListBuilt = true;
          }

          for (AUTO(it, blockList.begin()); it != blockList.end(); ++it) {
            if (const CScriptTrigger* trig =
                    TCastToConstPtr< CScriptTrigger >(mgr.GetObjectById(*it))) {
              AUTO(tb, trig->GetTouchBounds());
              if (tb) {
                CCollidableAABox caabb(*tb, CMaterialList(kMT_Trigger));
                CRayCastResult result2 =
                    caabb.CastRay(pos, down, 1000.f, filter, CTransform4f::Identity());
                if (result2.IsValid() && result2.GetTime() < bestResult.GetTime()) {
                  bestResult = result2;
                }
              }
            }
          }
        }

        ++blockedGrids;
        grid.SetVisibility(
            rstl::pair< bool, float >(bestResult.GetValid(), bestResult.GetPoint().GetZ()));
      }
      grid.SetDirty(false);
    }

    CVector2i gridEnd = grid.x4_position + grid.xc_extent;
    if (localPlayerPos.GetX() >= grid.x4_position.GetX() &&
        localPlayerPos.GetY() >= grid.x4_position.GetY() &&
        localPlayerPos.GetX() < gridEnd.GetX() && localPlayerPos.GetY() < gridEnd.GetY() &&
        grid.GetVisibility().first && grid.GetVisibility().second <= playerPos.GetZ()) {
      x24_enableSplash = true;
      x2c_lastBlockedGridIdx = i;
    }
  }
}

void CEnvFxManager::UpdateSnowParticles(rstl::reserved_vector< CVectorFixed8_8, 256 >& snowForces) {
  for (int i = x50_grids.size() - 1; i >= 0; --i) {
    int forceIdx = static_cast< int >(x28_firstSnowForce);
    if (x50_grids[i].GetVisibility().first) {
      for (int j = x50_grids[i].x1c_particles.size() - 1; j >= 0; --j) {
        CVectorFixed8_8 newP = x50_grids[i].x1c_particles[j] + snowForces[forceIdx];
        newP.z &= 0x3FFF;
        x50_grids[i].x1c_particles[j] = newP;
        forceIdx = (forceIdx + 1) & 0xFF;
      }
    }
  }
}

void CEnvFxManager::UpdateRainParticles(const CVectorFixed8_8& zVec, const CVector3f& oopbtws,
                                        float dt) {
  short deltaZ = zVec.GetZ() + real_to_fixed8_8(-40.f * dt * oopbtws.GetZ());
  for (int i = x50_grids.size() - 1; i >= 0; --i) {
    if (x50_grids[i].GetVisibility().first) {
      for (int j = x50_grids[i].x1c_particles.size() - 1; j >= 0; --j) {
        x50_grids[i].x1c_particles[j].z = (deltaZ + x50_grids[i].x1c_particles[j].z) & 0x3fff;
      }
    }
  }
}

void CEnvFxManager::UpdateUnderwaterParticles(const CVectorFixed8_8& zVec) {
  short zVal = zVec.GetZ();
  for (int i = x50_grids.size() - 1; i >= 0; --i) {
    for (int j = x50_grids[i].x1c_particles.size() - 1; j >= 0; --j) {
      x50_grids[i].x1c_particles[j].z = (zVal + x50_grids[i].x1c_particles[j].z) & 0x3fff;
    }
  }
}

void CEnvFxManager::UpdateVisorSplash(CStateManager& mgr, float dt, const CTransform4f& camXf) {
  EEnvFxType fxType = mgr.GetWorld()->GetNeededEnvFx();
  if (xb68_envRainSplashId != kInvalidUniqueId) {
    if (CHUDBillboardEffect* splashEffect =
            TCastToPtr< CHUDBillboardEffect >(mgr.ObjectById(xb68_envRainSplashId))) {
      mgr.SetActorAreaId(*splashEffect, mgr.GetNextAreaId());
    }
  }

  float camUpness = CVector3f::Dot(camXf.GetForward(), CVector3f::Up());

  float splashRateFactor;
  if (x24_enableSplash) {
    splashRateFactor = x30_fxDensity * rstl::max_val(0.f, camUpness);
  } else {
    splashRateFactor = 0.f;
  }

  float forwardRateFactor = 0.f;
  if (x24_enableSplash && camUpness >= -0.1f) {
    CVector3f pRelVel =
        mgr.GetPlayer()->GetTransform().TransposeRotate(mgr.GetPlayer()->GetVelocityWR());
    if (pRelVel.CanBeNormalized()) {
      float velMag = pRelVel.Magnitude();
      const CVector3f& normRelVel = pRelVel / velMag;
      forwardRateFactor =
          rstl::min_val(1.f, velMag / 60.f) * CVector3f::Dot(normRelVel, CVector3f::Forward());
    }
  }

  float rate = xb54_baseSplashRate;
  float additionalFactor;
  if (fxType == kEFX_Rain) {
    additionalFactor = splashRateFactor + forwardRateFactor;
  } else {
    additionalFactor = 0.f;
  }
  rate += additionalFactor;
  SetSplashEffectRate(rate, mgr);
  xb54_baseSplashRate = 0.f;
}

void CEnvFxManager::SetSplashEffectRate(float rate, CStateManager& mgr) {
  if (CHUDBillboardEffect* splashEffect =
          TCastToPtr< CHUDBillboardEffect >(mgr.ObjectById(xb68_envRainSplashId))) {
    if (splashEffect->IsElementGen()) {
      splashEffect->GetParticleGen()->SetGeneratorRate(rate);
    }
  }
}

CTransform4f CEnvFxManager::GetParticleBoundsToWorldTransform() const {
  CVector3f offset(-31.75f, -31.75f, -31.75f);
  return CTransform4f::Translate(x18_focusCellPosition) * CTransform4f::Translate(offset) *
         CTransform4f::Scale(GetParticleBoundsToWorldScale());
}

void CEnvFxManager::BlankFirstSnowflakeMip(CTexture& tex) {
  if (!x3c_snowflakeTextureMipBlanked) {
    void* data = tex.Lock();
    int size = tex.GetWidth() * tex.GetHeight() * tex.GetBitsPerPixel() / 8;
    uchar* ptr = static_cast< uchar* >(data);
    for (int i = 0; i < size; ++i) {
      ptr[i] = 0;
    }
    tex.UnLock();
    x3c_snowflakeTextureMipBlanked = true;
  }
}

static const GXVtxDescList skSnowDesc[] = {
    {GX_VA_POS, GX_DIRECT},
    {GX_VA_TEX0, GX_DIRECT},
    {GX_VA_NULL, GX_NONE},
};

void CEnvFxManager::SetupSnowTevs(CStateManager& mgr) {
  const CCameraManager* camMgr = mgr.GetCameraManager();
  camMgr->GetCurrentCamera(mgr);

  uint colorVal = CColor::White().GetColor_u32();
  if (camMgr->GetFluidCounter() != 0) {
    gpRender->SetWorldFog(kRFM_PerspExp, 0.f, 35.f, CColor::Black());
    CColor modColor(1.f, 1.f, 1.f, 0.5f);
    colorVal = modColor.GetColor_u32();
  } else {
    gpRender->SetWorldFog(kRFM_PerspLin, 52.f, 57.f, CColor::Black());
  }

  CGX::SetVtxDescv(skSnowDesc);
  GXSetVtxAttrFmt(GX_VTXFMT6, GX_VA_POS, GX_POS_XYZ, GX_S16, 8);
  GXSetVtxAttrFmt(GX_VTXFMT6, GX_VA_TEX0, GX_TEX_ST, GX_S8, 1);
  CGX::SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_CLEAR);
  CGX::SetNumChans(0);
  CGX::SetNumTexGens(2);
  CGX::SetNumTevStages(2);

  CGX::SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
  CGX::SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
  CGX::SetStandardTevColorAlphaOp(GX_TEVSTAGE0);
  CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_KONST, GX_CC_TEXC, GX_CC_ZERO);
  CGX::SetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_KONST, GX_CA_TEXA, GX_CA_ZERO);

  CGX::SetTevKColor(GX_KCOLOR0, *reinterpret_cast< const GXColor* >(&colorVal));
  CGX::SetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K0);
  CGX::SetTevKAlphaSel(GX_TEVSTAGE0, GX_TEV_KASEL_K0_A);

  BlankFirstSnowflakeMip(***xb74_txtrSnowFlake);
  (*xb74_txtrSnowFlake)->Load(GX_TEXMAP0, CTexture::kCM_Repeat);

  CGX::SetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_POS, GX_TEXMTX5, GX_FALSE, GX_PTIDENTITY);
  CGX::SetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR_NULL);
  CGX::SetStandardTevColorAlphaOp(GX_TEVSTAGE1);
  CGX::SetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_ZERO);
  CGX::SetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA);

  (*x40_txtrEnvGradient)->Load(GX_TEXMAP1, CTexture::kCM_Clamp);
}

static const GXVtxDescList skUnderwaterDesc[] = {
    {GX_VA_POS, GX_DIRECT},
    {GX_VA_TEX0, GX_DIRECT},
    {GX_VA_NULL, GX_NONE},
};

static const float skUnderwaterTexMtx[2][4] = {
    {0.f, 0.f, 0.f, 0.f},
    {0.f, 0.f, -10.f, 0.f},
};

void CEnvFxManager::SetupUnderwaterTevs(const CTransform4f& invXf, CStateManager& mgr) {
  CGX::SetVtxDescv(skUnderwaterDesc);
  GXSetVtxAttrFmt(GX_VTXFMT6, GX_VA_POS, GX_POS_XYZ, GX_S16, 8);
  GXSetVtxAttrFmt(GX_VTXFMT6, GX_VA_TEX0, GX_TEX_ST, GX_S8, 1);
  CGX::SetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
  CGX::SetNumChans(0);
  CGX::SetNumTexGens(2);
  CGX::SetNumTevStages(2);

  CGX::SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
  CGX::SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
  CGX::SetStandardTevColorAlphaOp(GX_TEVSTAGE0);
  CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_TEXC);
  CGX::SetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA);

  BlankFirstSnowflakeMip(***xc48_underwaterFlake);
  (*xc48_underwaterFlake)->Load(GX_TEXMAP0, CTexture::kCM_Repeat);

  CGX::SetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_POS, GX_TEXMTX5, GX_FALSE, GX_PTIDENTITY);
  CGX::SetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR_NULL);

  float waterTop = gkReal32Max;
  const CObjectList& objList = mgr.GetObjectListById(kOL_All);
  for (int idx = objList.GetFirstObjectIndex(); idx != -1; idx = objList.GetNextObjectIndex(idx)) {
    CEntity* ent = const_cast< CEntity* >(objList[idx]);
    if (TCastToPtr< CScriptWater >(ent)) {
      rstl::optional_object< CAABox > tb = static_cast< CActor* >(ent)->GetTouchBounds();
      if (tb) {
        waterTop = rstl::min_val(tb->GetMaxPoint().GetZ(), waterTop);
      }
    }
  }

  CVector3f localWaterTop = invXf * (waterTop * CVector3f::Up());

  float texMtx[2][4] = {
      {0.f, 0.f, 0.f, 0.f},
      {0.f, 0.f, -10.f, 0.f},
  };
  texMtx[1][3] = -(-10.f * localWaterTop.GetZ() + 0.5f);
  CGX::LoadTexMtxImm(texMtx, GX_TEXMTX5, GX_MTX2x4);

  CGX::SetStandardTevColorAlphaOp(GX_TEVSTAGE1);
  CGX::SetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_ONE, GX_CC_CPREV, GX_CC_ZERO);
  CGX::SetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_TEXA, GX_CA_APREV, GX_CA_ZERO);
  GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP1, GX_TEV_SWAP1);
  (*x40_txtrEnvGradient)->Load(GX_TEXMAP1, CTexture::kCM_Clamp);
}

static const GXVtxDescList skRainDesc[] = {
    {GX_VA_POS, GX_DIRECT},
    {GX_VA_CLR0, GX_DIRECT},
    {GX_VA_NULL, GX_NONE},
};

void CEnvFxManager::SetupDefaultTevSwapMode() {
  GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP0);
}

void CEnvFxManager::SetupRainTevs() {
  CGX::SetVtxDescv(skRainDesc);
  GXSetVtxAttrFmt(GX_VTXFMT6, GX_VA_POS, GX_POS_XYZ, GX_S16, 8);
  GXSetVtxAttrFmt(GX_VTXFMT6, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA4, 0);
  CGX::SetLineWidth(6, GX_MAX_TEXOFFSET);
  CGX::SetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_ONE, GX_LO_CLEAR);
  CGX::SetNumChans(1);
  CGX::SetChanCtrl(CGX::Channel0, GX_TRUE, GX_SRC_VTX, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE,
                   GX_AF_NONE);
  CGX::SetNumTexGens(1);
  CGX::SetNumTevStages(1);
  CGX::SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_POS, GX_TEXMTX5, GX_FALSE, GX_PTIDENTITY);
  CGX::SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
  CGX::SetStandardTevColorAlphaOp(GX_TEVSTAGE0);
  CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_TEXC);
  CGX::SetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_RASA, GX_CA_KONST, GX_CA_ZERO);
  CGX::SetTevKAlphaSel(GX_TEVSTAGE0, GX_TEV_KASEL_K0_A);
  uint colorVal;
  CColor kColor(1.f, 1.f, 1.f, 0.15f);
  colorVal = kColor.GetColor_u32();
  CGX::SetTevKColor(GX_KCOLOR0, *reinterpret_cast< const GXColor* >(&colorVal));
  (*x40_txtrEnvGradient)->Load(GX_TEXMAP0, CTexture::kCM_Clamp);
}

void CEnvFxManager::Render(const CStateManager& mgr) {
  EEnvFxType fxType = mgr.GetWorld()->GetNeededEnvFx();
  if (fxType != kEFX_None) {
    if (mgr.GetPlayer()->GetMorphballTransitionState() != CPlayer::kMS_Unmorphed ||
        (mgr.GetPlayerState()->GetCurrentVisor() != CPlayerState::kPV_Thermal &&
         (fxType != kEFX_Snow ||
          mgr.GetPlayerState()->GetCurrentVisor() != CPlayerState::kPV_XRay))) {
      CGraphics::SetCullMode(kCM_None);
      gpRender->SetDepthReadWrite(true, false);
      CTransform4f xf = GetParticleBoundsToWorldTransform();
      CTransform4f invXf = xf.GetInverse();
      CTransform4f camXf = mgr.GetCameraManager()->GetCurrentCameraTransform(mgr);
      switch (fxType) {
      case kEFX_Snow:
        SetupSnowTevs(const_cast< CStateManager& >(mgr));
        break;
      case kEFX_Rain:
        SetupRainTevs();
        break;
      case kEFX_UnderwaterFlake:
        SetupUnderwaterTevs(invXf, const_cast< CStateManager& >(mgr));
        break;
      default:
        break;
      }
      for (int i = 0; i < x50_grids.size(); ++i) {
        x50_grids[i].Render(xf, invXf, camXf, x30_fxDensity, fxType);
      }
      CGraphics::SetCullMode(kCM_Front);
      if (fxType == kEFX_UnderwaterFlake) {
        SetupDefaultTevSwapMode();
      }
    }
  }
}

static int CalcRainVolume(float f) {
  float result;
  if (f < 0.1f) {
    result = 74.f * (f / 0.1f);
  } else {
    result = 21.f * (f / 0.9f) + 74.f;
  }
  return static_cast< int >(result);
}

static short CalcRainPitch(float f) { return static_cast< short >(8192.f * f); }

void CEnvFxManager::UpdateRainSounds(CStateManager& mgr) {
  if (mgr.GetWorld()->GetNeededEnvFx() == kEFX_Rain) {
    CTransform4f camXf(mgr.GetCameraManager()->GetCurrentCameraTransform(mgr));
    int rainVol = CalcRainVolume(x30_fxDensity);
    if (!xb6a_rainSoundActive) {
      xb6c_leftRainSound =
          CSfxManager::AddEmitter(0x9f0, CVector3f::Zero(), CVector3f::Zero(), false, true,
                                  CSfxManager::kMaxPriority, CSfxManager::kAllAreas);
      xb70_rightRainSound =
          CSfxManager::AddEmitter(0x9f1, CVector3f::Zero(), CVector3f::Zero(), false, true,
                                  CSfxManager::kMaxPriority, CSfxManager::kAllAreas);
      xb6a_rainSoundActive = true;
    }
    CSfxManager::UpdateEmitter(xb6c_leftRainSound, camXf.GetTranslation() - camXf.GetRight(),
                               camXf.GetRight(), rainVol);
    CSfxManager::UpdateEmitter(xb70_rightRainSound, camXf.GetTranslation() + camXf.GetRight(),
                               -camXf.GetRight(), rainVol);
    short rainPitch = CalcRainPitch(x30_fxDensity);
    CSfxManager::PitchBend(xb6c_leftRainSound, rainPitch);
    CSfxManager::PitchBend(xb70_rightRainSound, rainPitch);
  } else if (xb6a_rainSoundActive) {
    CSfxManager::RemoveEmitter(xb6c_leftRainSound);
    CSfxManager::RemoveEmitter(xb70_rightRainSound);
    xb6a_rainSoundActive = false;
  }
}

void CEnvFxManager::SetFxDensity(int val, float density) {
  x34_targetFxDensity = density;
  x38_maxDensityDeltaSpeed = val;
}

void CEnvFxManager::BuildBlockObjectList(rstl::reserved_vector< TUniqueId, 1024 >& list,
                                         CStateManager& mgr) {
  const CObjectList& objList = mgr.GetObjectListById(kOL_All);
  for (int idx = objList.GetFirstObjectIndex(); idx != -1; idx = objList.GetNextObjectIndex(idx)) {
    const CEntity* ent = objList[idx];
    const CScriptTrigger* trig = TCastToConstPtr< CScriptTrigger >(ent);
    if (trig != nullptr && (trig->x12c_flags & kTFL_BlockEnvironmentalEffects) != 0) {
      list.push_back(ent->GetUniqueId());
    } else {
      const CScriptWater* water = TCastToConstPtr< CScriptWater >(ent);
      if (water != nullptr) {
        list.push_back(ent->GetUniqueId());
      }
    }
  }
}

void CEnvFxManager::AreaLoaded() {
  for (int i = 0; i < x50_grids.size(); ++i) {
    x50_grids[i].SetDirty(true);
  }
}
