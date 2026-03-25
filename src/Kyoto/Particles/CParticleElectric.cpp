#include "Kyoto/Particles/CParticleElectric.hpp"

#pragma inline_max_size(222)

#include "Kyoto/Basics/CStopwatch.hpp"
#include "Kyoto/Particles/CElectricDescription.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "Kyoto/Particles/CParticleGlobals.hpp"
#include "Kyoto/Particles/CParticleSwoosh.hpp"
#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CLight.hpp"
#include "Kyoto/Math/CloseEnough.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "dolphin/gx/GXVert.h"

#include "float.h"
#include "math.h"

#include "rstl/math.hpp"

ushort CParticleElectric::sSeed = 99;

// ===== Getters at end of TU (bottom-up order) =====

const CVector3f& CParticleElectric::GetTranslation() const { return x38_translation; }

const CTransform4f& CParticleElectric::GetOrientation() const { return x44_orientation; }

const CVector3f& CParticleElectric::GetGlobalTranslation() const { return xa4_globalTranslation; }

const CTransform4f& CParticleElectric::GetGlobalOrientation() const {
  return xb0_globalOrientation;
}

void CParticleElectric::DestroyParticles() {}

uint CParticleElectric::Get4CharId() const { return 'ELSC'; }

void CParticleElectric::SetParticleEmission(bool emission) { x450_24_emitting = emission; }

CLight CParticleElectric::GetLight() const {
  if (x450_25_haveGPSM) {
    return x400_gpsmGenerators[0]->GetLight();
  }
  if (x450_26_haveEPSM) {
    return x410_epsmGenerators[0]->GetLight();
  }
  return CLight::BuildLocalAmbient(GetGlobalTranslation(), CColor::Orange());
}

bool CParticleElectric::SystemHasLight() const {
  if (x450_25_haveGPSM) {
    return x400_gpsmGenerators[0]->SystemHasLight();
  }
  if (x450_26_haveEPSM) {
    return x410_epsmGenerators[0]->SystemHasLight();
  }
  return false;
}

void CParticleElectric::UpdateCachedTransform() {
  xf8_cachedXf = CTransform4f::Translate(xa4_globalTranslation) * xb0_globalOrientation *
                 CTransform4f::Translate(x38_translation) * x44_orientation;
  x450_29_transformDirty = false;
}

void CParticleElectric::SetLocalScale(const CVector3f& scale) {
  xec_localScale = scale;
  x450_29_transformDirty = true;
  if (x450_27_haveSSWH) {
    for (AUTO(it, x3e8_electricManagers.begin()); it != x3e8_electricManagers.end(); ++it) {
      CParticleSwoosh& swoosh = *x1e0_swooshGenerators[it->x0_idx];
      swoosh.SetLocalScale(xec_localScale);
    }
  }
  if (x450_25_haveGPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      x400_gpsmGenerators[i]->SetLocalScale(xec_localScale);
    }
  }
  if (x450_26_haveEPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      x410_epsmGenerators[i]->SetLocalScale(xec_localScale);
    }
  }
}

void CParticleElectric::SetGlobalScale(const CVector3f& scale) {
  xe0_globalScale = scale;
  x450_29_transformDirty = true;
}

void CParticleElectric::SetGlobalOrientation(const CTransform4f& orientation) {
  xb0_globalOrientation = orientation.GetRotation();
  x450_29_transformDirty = true;
  if (x450_27_haveSSWH) {
    for (AUTO(it, x3e8_electricManagers.begin()); it != x3e8_electricManagers.end(); ++it) {
      CParticleSwoosh& swoosh = *x1e0_swooshGenerators[it->x0_idx];
      swoosh.SetGlobalOrientation(xb0_globalOrientation);
    }
  }
  if (x450_25_haveGPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      x400_gpsmGenerators[i]->SetGlobalOrientation(xb0_globalOrientation);
    }
  }
  if (x450_26_haveEPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      x410_epsmGenerators[i]->SetGlobalOrientation(xb0_globalOrientation);
    }
  }
}

void CParticleElectric::SetGlobalTranslation(const CVector3f& translation) {
  xa4_globalTranslation = translation;
  x450_29_transformDirty = true;
  if (x450_27_haveSSWH) {
    for (AUTO(it, x3e8_electricManagers.begin()); it != x3e8_electricManagers.end(); ++it) {
      CParticleSwoosh& swoosh = *x1e0_swooshGenerators[it->x0_idx];
      swoosh.SetGlobalTranslation(xa4_globalTranslation);
    }
  }
  if (x450_25_haveGPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      x400_gpsmGenerators[i]->SetGlobalTranslation(xa4_globalTranslation);
    }
  }
  if (x450_26_haveEPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      x410_epsmGenerators[i]->SetGlobalTranslation(xa4_globalTranslation);
    }
  }
}

void CParticleElectric::SetOrientation(const CTransform4f& orientation) {
  x44_orientation = orientation;
  x74_invOrientation = x44_orientation.GetQuickInverse();
  x450_29_transformDirty = true;
}

void CParticleElectric::SetTranslation(const CVector3f& translation) {
  x38_translation = translation;
  x450_29_transformDirty = true;
}

void CParticleElectric::ForceParticleCreation(int count) {
  CGlobalRandom gRnd(x14c_randState);
  CreateNewParticles(count);
}

int CParticleElectric::GetParticleCount() const {
  int ret = 0;
  if (!x3e8_electricManagers.empty()) {
    for (AUTO(it, x3e8_electricManagers.begin()); it != x3e8_electricManagers.end(); ++it) {
      if (x450_27_haveSSWH) {
        ret += x1e0_swooshGenerators[it->x0_idx]->GetParticleCount();
      }
      if (x450_28_haveLWD) {
        ret += x150_SSEG;
      }
    }
  }
  if (x450_25_haveGPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      ret += x400_gpsmGenerators[i]->GetParticleCount();
    }
  }
  if (x450_26_haveEPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      ret += x410_epsmGenerators[i]->GetParticleCount();
    }
  }
  return ret;
}

bool CParticleElectric::IsSystemDeletable() const {
  if (x450_24_emitting && x28_currentFrame < x2c_LIFE) {
    return false;
  }
  if (!x3e8_electricManagers.empty()) {
    return false;
  }
  if (x450_25_haveGPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      if (!x400_gpsmGenerators[i]->IsSystemDeletable()) {
        return false;
      }
    }
  }
  if (x450_26_haveEPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      if (!x410_epsmGenerators[i]->IsSystemDeletable()) {
        return false;
      }
    }
  }
  return true;
}

void CParticleElectric::SetModulationColor(const CColor& col) { x1b8_moduColor = col; }

rstl::optional_object< CAABox > CParticleElectric::GetBounds() const {
  if (GetParticleCount() <= 0) {
    return rstl::optional_object< CAABox >();
  }
  return rstl::optional_object< CAABox >(x160_systemBounds);
}

void CParticleElectric::BuildBounds() {
  if (GetParticleCount() <= 0) {
    x160_systemBounds = CAABox::MakeMaxInvertedBox();
    return;
  }

  x160_systemBounds = CAABox::MakeMaxInvertedBox();

  if (x450_27_haveSSWH) {
    for (rstl::list< CParticleElectricManager >::const_iterator it = x3e8_electricManagers.begin();
         it != x3e8_electricManagers.end(); ++it) {
      const CParticleSwoosh& swoosh = *x1e0_swooshGenerators[it->x0_idx];
      rstl::optional_object< CAABox > bounds = swoosh.GetBounds();
      if (bounds.valid()) {
        x160_systemBounds.Include(*bounds);
      }
    }
  } else if (x450_28_haveLWD) {
    CAABox tmp = CAABox::MakeMaxInvertedBox();
    for (rstl::list< CParticleElectricManager >::const_iterator it = x3e8_electricManagers.begin();
         it != x3e8_electricManagers.end(); ++it) {
      CAABox& aabb = x2e4_lineManagers[it->x0_idx]->x28_aabb;
      tmp.Include(aabb);
    }
    if (!tmp.Invalid()) {
      x160_systemBounds.Include(tmp.GetTransformedAABox(
          CTransform4f::Translate(xa4_globalTranslation) * xb0_globalOrientation *
          CTransform4f::Translate(x38_translation) * x44_orientation *
          CTransform4f::Scale(xe0_globalScale)));
    }
  }

  if (x450_25_haveGPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      rstl::optional_object< CAABox > bounds = x400_gpsmGenerators[i]->GetBounds();
      if (bounds.valid()) {
        x160_systemBounds.Include(*bounds);
      }
    }
  }

  if (x450_26_haveEPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      rstl::optional_object< CAABox > bounds = x410_epsmGenerators[i]->GetBounds();
      if (bounds.valid()) {
        x160_systemBounds.Include(*bounds);
      }
    }
  }
}

void CParticleElectric::UpdateLine(int idx, int frame) {
  CColorElement* lcl1 = x1c_elecDesc->x34_LCL1;
  CLineManager& line = *x2e4_lineManagers[idx];
  if (lcl1 != NULL) {
    lcl1->GetValue(frame, line.GetColor(0));
  }
  if (CColorElement* lcl2 = x1c_elecDesc->x38_LCL2) {
    lcl2->GetValue(frame, line.GetColor(1));
  }
  if (CColorElement* lcl3 = x1c_elecDesc->x3c_LCL3) {
    lcl3->GetValue(frame, line.GetColor(2));
  }
  if (CRealElement* lwd1 = x1c_elecDesc->x28_LWD1) {
    lwd1->GetValue(frame, line.x10_widths[0]);
  }
  if (CRealElement* lwd2 = x1c_elecDesc->x2c_LWD2) {
    lwd2->GetValue(frame, line.x10_widths[1]);
  }
  if (CRealElement* lwd3 = x1c_elecDesc->x30_LWD3) {
    lwd3->GetValue(frame, line.x10_widths[2]);
  }
}

void CParticleElectric::UpdateElectricalEffects() {
  for (AUTO(it, x3e8_electricManagers.begin()); it != x3e8_electricManagers.end();) {
    CParticleElectricManager& elec = *it;
    if (elec.x4_slif <= 1) {
      x1bc_allocated[elec.x0_idx] = false;
      if (elec.x10_gpsmIdx != -1) {
        x400_gpsmGenerators[elec.x10_gpsmIdx]->SetParticleEmission(false);
      }
      if (elec.x14_epsmIdx != -1) {
        x410_epsmGenerators[elec.x14_epsmIdx]->SetParticleEmission(false);
      }
      it = x3e8_electricManagers.erase(it);
      continue;
    }

    int frame = x28_currentFrame - elec.x8_startFrame;
    CParticleGlobals::SetParticleLifetime(elec.xc_endFrame - elec.x8_startFrame);
    CParticleGlobals::UpdateParticleLifetimeTweenValues(frame);

    if (x450_27_haveSSWH) {
      CParticleSwoosh& swoosh = *x1e0_swooshGenerators[elec.x0_idx];
      CColor color = CColor::White();
      if (CColorElement* colr = x1c_elecDesc->x14_COLR) {
        colr->GetValue(frame, color);
      }
      swoosh.SetModulationColor(CColor::Modulate(color, x1b8_moduColor));
    }

    if (x450_28_haveLWD) {
      UpdateLine(elec.x0_idx, frame);
    }

    elec.x4_slif -= 1;
    ++it;
  }
}

void CParticleElectric::CreateNewParticles(int count) {
  int allocIdx = 0;

  for (int i = 0; i < count; ++i) {
    if (x3e8_electricManagers.size() < x154_SCNT) {
      CTransform4f cachedRot = xf8_cachedXf.GetRotation();
      CVector3f cachedTrans = xf8_cachedXf.GetTranslation();

      for (; allocIdx < x1bc_allocated.size(); ++allocIdx) {
        if (x1bc_allocated[allocIdx]) {
          continue;
        }
        x1bc_allocated[allocIdx] = true;

        int lifetime = 1;
        if (CIntElement* slif = x1c_elecDesc->x4_SLIF) {
          slif->GetValue(x28_currentFrame, lifetime);
        }

        x3e8_electricManagers.push_back(
            CParticleElectricManager(allocIdx, lifetime, x28_currentFrame));
        CParticleElectricManager& elec = x3e8_electricManagers.back();
        int frame = x28_currentFrame - elec.x8_startFrame;
        CParticleGlobals::SetParticleLifetime(elec.xc_endFrame - elec.x8_startFrame);
        CParticleGlobals::UpdateParticleLifetimeTweenValues(frame);
        CalculatePoints();

        if (x450_27_haveSSWH) {
          CParticleSwoosh& swoosh = *x1e0_swooshGenerators[allocIdx];
          swoosh.SetParticleEmission(true);
          swoosh.SetGlobalTranslation(cachedTrans);
          swoosh.SetGlobalOrientation(cachedRot);
          swoosh.SetGlobalScale(xe0_globalScale);
          swoosh.SetLocalScale(xec_localScale);
          CColor color = CColor::White();
          if (CColorElement* colr = x1c_elecDesc->x14_COLR) {
            colr->GetValue(frame, color);
          }
          swoosh.SetModulationColor(CColor::Modulate(color, x1b8_moduColor));
          swoosh.ForceUpdate(x420_calculatedVerts);
        }

        if (x450_28_haveLWD) {
          CLineManager& line = *x2e4_lineManagers[allocIdx];
          line.x0_verts = x420_calculatedVerts;
          UpdateLine(allocIdx, 0);
          if (!x450_27_haveSSWH) {
            x130_buildBoundsMin = CVector3f(FLT_MAX, FLT_MAX, FLT_MAX);
            x13c_buildBoundsMax = CVector3f(-FLT_MAX, -FLT_MAX, -FLT_MAX);
            for (int k = 0; k < x420_calculatedVerts.size(); ++k) {
              const CVector3f& vert = x420_calculatedVerts[k];
              x13c_buildBoundsMax = CVector3f(
                  rstl::max_val(vert.GetX(), x13c_buildBoundsMax.GetX()),
                  rstl::max_val(vert.GetY(), x13c_buildBoundsMax.GetY()),
                  rstl::max_val(vert.GetZ(), x13c_buildBoundsMax.GetZ()));
              x130_buildBoundsMin = CVector3f(
                  rstl::min_val(vert.GetX(), x130_buildBoundsMin.GetX()),
                  rstl::min_val(vert.GetY(), x130_buildBoundsMin.GetY()),
                  rstl::min_val(vert.GetZ(), x130_buildBoundsMin.GetZ()));
            }
            line.x28_aabb = CAABox(x130_buildBoundsMin, x13c_buildBoundsMax);
          }
        }

        if (x450_25_haveGPSM) {
          for (int k = 0; k < x154_SCNT; ++k) {
            if (!x400_gpsmGenerators[k]->GetParticleEmission()) {
              CTransform4f scale =
                  CTransform4f::Scale(xe0_globalScale) * CTransform4f::Scale(xec_localScale);
              x400_gpsmGenerators[k]->SetTranslation(scale * x420_calculatedVerts[0]);
              x400_gpsmGenerators[k]->SetParticleEmission(true);
              elec.x10_gpsmIdx = k;
              break;
            }
          }
        }

        if (x450_26_haveEPSM) {
          for (int k = 0; k < x154_SCNT; ++k) {
            if (!x410_epsmGenerators[k]->GetParticleEmission()) {
              CTransform4f scale =
                  CTransform4f::Scale(xe0_globalScale) * CTransform4f::Scale(xec_localScale);
              x410_epsmGenerators[k]->SetTranslation(
                  scale * x420_calculatedVerts[x420_calculatedVerts.size() - 1]);
              x410_epsmGenerators[k]->SetParticleEmission(true);
              elec.x14_epsmIdx = k;
              break;
            }
          }
        }

        break;
      }
    }
  }
}

void CParticleElectric::AddElectricalEffects() {
  float genRate = 0.f;
  if (CRealElement* grat = x1c_elecDesc->x8_GRAT) {
    if (grat->GetValue(x28_currentFrame, genRate)) {
      AUTO(endIt, x3e8_electricManagers.end());
      for (AUTO(it, x3e8_electricManagers.begin()); it != endIt;) {
        it = x3e8_electricManagers.erase(it);
      }
      for (int i = 0; i < x1bc_allocated.size(); ++i) {
        x1bc_allocated[i] = false;
      }
      return;
    } else {
      genRate = rstl::max_val(0.f, genRate);
    }
  }

  x15c_genRem += genRate;
  int partCount = static_cast< int >(floor(x15c_genRem));
  x15c_genRem -= static_cast< float >(partCount);
  CreateNewParticles(partCount);
}

void CParticleElectric::DrawLineStrip(
    const rstl::vector< CVector3f, rstl::aligned_allocator >& verts, float width,
    const CColor& color) {
  CGraphics::SetLineWidth(width, kTO_Zero);
  CGX::SetTevKColor(GX_KCOLOR0, CColor::Modulate(GetModulationColor(), color).GetGXColor());
  int vertCount = verts.size();
  CGX::Begin(GX_LINESTRIP, GX_VTXFMT0, vertCount);
  for (int i = 0; i < vertCount; ++i) {
    const CVector3f& v = verts[i];
    GXPosition3f32(v[kDX], v[kDY], v[kDZ]);
  }
  CGX::End();
}

void CParticleElectric::SetupLineGXMaterial() {
  static const GXVtxDescList kVtxDescList[] = {
      {GX_VA_POS, GX_DIRECT},
      {GX_VA_NULL, GX_NONE},
  };
  CGX::SetVtxDescv(kVtxDescList);
  CGX::SetNumChans(1);
  CGX::SetNumTexGens(0);
  CGX::SetNumTevStages(1);
  CGX::SetChanCtrl(CGX::Channel0, false, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                   GX_AF_NONE);
  CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_KONST);
  CGX::SetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_KONST);
  CGX::SetStandardTevColorAlphaOp(GX_TEVSTAGE0);
  CGX::SetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K0);
  CGX::SetTevKAlphaSel(GX_TEVSTAGE0, GX_TEV_KASEL_K0_A);
}

void CParticleElectric::RenderLines() {
  CGraphics::DisableAllLights();
  CGraphics::SetDepthWriteMode(true, kE_LEqual, false);
  CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_One, kLO_Clear);
  CGraphics::SetModelMatrix(CTransform4f::Translate(xa4_globalTranslation) *
                            xb0_globalOrientation * CTransform4f::Translate(x38_translation) *
                            x44_orientation * CTransform4f::Scale(xe0_globalScale) *
                            CTransform4f::Scale(xec_localScale));
  CGraphics::SetCullMode(kCM_None);
  SetupLineGXMaterial();
  for (AUTO(it, x3e8_electricManagers.begin()); it != x3e8_electricManagers.end(); ++it) {
    CLineManager& line = *x2e4_lineManagers[it->x0_idx];
    if (x1c_elecDesc->x28_LWD1) {
      DrawLineStrip(line.x0_verts, line.x10_widths[0], line.GetColor(0));
    }
    if (x1c_elecDesc->x2c_LWD2) {
      DrawLineStrip(line.x0_verts, line.x10_widths[1], line.GetColor(1));
    }
    if (x1c_elecDesc->x30_LWD3) {
      DrawLineStrip(line.x0_verts, line.x10_widths[2], line.GetColor(2));
    }
  }
  CGraphics::SetCullMode(kCM_Front);
  CGraphics::SetLineWidth(1.f, kTO_Zero);
}

void CParticleElectric::RenderSwooshes() {
  for (AUTO(it, x3e8_electricManagers.begin()); it != x3e8_electricManagers.end(); ++it) {
    x1e0_swooshGenerators[it->x0_idx]->Render();
  }
}

void CParticleElectric::Render() {
  float startTime = CStopwatch::GetGlobalTime();
  if (!x3e8_electricManagers.empty()) {
    if (x450_29_transformDirty) {
      UpdateCachedTransform();
    }
    if (x450_27_haveSSWH) {
      RenderSwooshes();
    }
    if (x450_28_haveLWD) {
      RenderLines();
    }
  }
  if (x450_25_haveGPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      x400_gpsmGenerators[i]->Render();
    }
  }
  if (x450_26_haveEPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      x410_epsmGenerators[i]->Render();
    }
  }
  x12c = CStopwatch::GetGlobalTime() - startTime;
}

bool CParticleElectric::Update(double dt) {
  CGlobalRandom gr(x14c_randState);
  bool ret = false;

  if (x450_25_haveGPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      if (!x400_gpsmGenerators[i]->IsSystemDeletable()) {
        break;
      }
    }
  }

  if (x450_26_haveEPSM) {
    for (int i = 0; i < x154_SCNT; ++i) {
      if (!x410_epsmGenerators[i]->IsSystemDeletable()) {
        break;
      }
    }
  }

  bool emitting = x450_24_emitting && x28_currentFrame < x2c_LIFE;

  double evalTime = x28_currentFrame * (1.0 / 60.0);
  x30_curTime += dt;

  if (x450_29_transformDirty) {
    UpdateCachedTransform();
    CTransform4f globalOrient = xf8_cachedXf.GetRotation();
    CVector3f translation = xf8_cachedXf.GetTranslation();
    if (x450_27_haveSSWH) {
      for (AUTO(it, x3e8_electricManagers.begin()); it != x3e8_electricManagers.end(); ++it) {
        x1e0_swooshGenerators[it->x0_idx]->SetGlobalTranslation(translation);
        x1e0_swooshGenerators[it->x0_idx]->SetGlobalOrientation(globalOrient);
        x1e0_swooshGenerators[it->x0_idx]->SetGlobalScale(xe0_globalScale);
        x1e0_swooshGenerators[it->x0_idx]->SetLocalScale(xec_localScale);
      }
    }
    if (x450_25_haveGPSM) {
      for (int i = 0; i < x154_SCNT; ++i) {
        x400_gpsmGenerators[i]->SetGlobalTranslation(translation);
        x400_gpsmGenerators[i]->SetGlobalOrientation(globalOrient);
        x400_gpsmGenerators[i]->SetGlobalScale(xe0_globalScale);
        x400_gpsmGenerators[i]->SetLocalScale(xec_localScale);
      }
    }
    if (x450_26_haveEPSM) {
      for (int i = 0; i < x154_SCNT; ++i) {
        x410_epsmGenerators[i]->SetGlobalTranslation(translation);
        x410_epsmGenerators[i]->SetGlobalOrientation(globalOrient);
        x410_epsmGenerators[i]->SetGlobalScale(xe0_globalScale);
        x410_epsmGenerators[i]->SetLocalScale(xec_localScale);
      }
    }
    ret = true;
  }

  while (evalTime < x30_curTime) {
    CParticleGlobals::SetEmitterTime(x28_currentFrame);
    UpdateElectricalEffects();
    if (emitting)
      AddElectricalEffects();

    if (x450_25_haveGPSM) {
      if (x28_currentFrame >= x2c_LIFE) {
        for (int i = 0; i < x154_SCNT; ++i) {
          x400_gpsmGenerators[i]->EndLifetime();
        }
      }
      for (int i = 0; i < x154_SCNT; ++i) {
        x400_gpsmGenerators[i]->Update(1.0 / 60.0);
      }
    }

    if (x450_26_haveEPSM) {
      if (x28_currentFrame >= x2c_LIFE) {
        for (int i = 0; i < x154_SCNT; ++i) {
          x410_epsmGenerators[i]->EndLifetime();
        }
      }
      for (int i = 0; i < x154_SCNT; ++i) {
        x410_epsmGenerators[i]->Update(1.0 / 60.0);
      }
    }

    ret = true;
    evalTime += 1.0 / 60.0;
    x28_currentFrame += 1;
  }

  if (ret) {
    BuildBounds();
  }

  return ret;
}

void CParticleElectric::CalculateFractal(int start, int end, float ampl, float ampd) {
  float tmp;
  float valStart = x430_fractalMags[start];
  float valEnd = x430_fractalMags[end];
  int storeIdx = (start + end) / 2;
  float ratio = static_cast< float >(end - start) / static_cast< float >(x430_fractalMags.size());
  tmp = ratio * ampl;
  float partial = (valStart + valEnd) / 2.f + tmp * x14c_randState.Float() - tmp / 2.f;
  x430_fractalMags[storeIdx] = partial + (ampd * x14c_randState.Float() - ampd / 2.f);
  if ((start + end) % 2 == 1) {
    x430_fractalMags[end - 1] = x430_fractalMags[end];
  }
  if (storeIdx - start > 1) {
    CalculateFractal(start, storeIdx, ampl, ampd);
  }
  if (end - storeIdx > 1) {
    CalculateFractal(storeIdx, end, ampl, ampd);
  }
}

void CParticleElectric::CalculatePoints() {
  rstl::reserved_vector< CVector3f, 4 > points;
  CVector3f pos = CVector3f::Zero();
  CVector3f vel = CVector3f::Zero();
  if (CEmitterElement* iemt = x1c_elecDesc->x18_IEMT) {
    iemt->GetValue(x28_currentFrame, pos, vel);
  }
  if (x178_overrideIPos.valid()) {
    pos = *x178_overrideIPos;
  }
  if (x188_overrideIVel.valid()) {
    vel = *x188_overrideIVel;
  }

  if (vel.IsNonZero()) {
    points.push_back(pos);
    points.push_back(pos + vel);
    points.push_back(pos + vel * 2.f);
  } else {
    points.push_back(pos);
  }

  CVector3f fpos(0.f, 1.f, 0.f);
  CVector3f fvel = CVector3f::Zero();
  if (CEmitterElement* femt = x1c_elecDesc->x1c_FEMT) {
    femt->GetValue(x28_currentFrame, fpos, fvel);
  }
  if (x198_overrideFPos.valid()) {
    fpos = *x198_overrideFPos;
  }
  if (x1a8_overrideFVel.valid()) {
    fvel = *x1a8_overrideFVel;
  }

  if (fvel.IsNonZero()) {
    if (points.size() == 3) {
      points[2] = fpos + fvel;
      points.push_back(fpos);
    } else {
      points.push_back(fpos + fvel * 2.f);
      points.push_back(fpos + fvel);
      points.push_back(fpos);
    }
  } else {
    points.push_back(fpos);
  }

  if (points.size() == 4) {
    int segs = x150_SSEG - 1;
    float segDiv = 1.f / static_cast< float >(segs);
    x420_calculatedVerts[0] = points[0];
    float curDiv = segDiv;
    for (int i = 1; i < segs; ++i) {
      float t = segDiv * x14c_randState.Range(-0.45f, 0.45f) + curDiv;
      x420_calculatedVerts[i] =
          CMath::GetBezierPoint(points[0], points[1], points[2], points[3], t);
      curDiv += segDiv;
    }
    x420_calculatedVerts[segs] = points[3];
  } else {
    x420_calculatedVerts[0] = pos;
    int segs = x150_SSEG - 1;
    float segDiv = 1.f / static_cast< float >(segs);
    CVector3f accum = x420_calculatedVerts[0];
    CVector3f segDelta = (fpos - pos) * segDiv;
    for (int i = 1; i < segs; ++i) {
      float r = x14c_randState.Range(-0.45f, 0.45f);
      x420_calculatedVerts[i] = accum + segDelta * r;
      accum += segDelta;
    }
    x420_calculatedVerts[segs] = fpos;
  }

  for (int i = 0; i < x150_SSEG; ++i) {
    x430_fractalMags[i] = 0.f;
  }

  float amplVal = 1.f;
  if (CRealElement* ampl = x1c_elecDesc->x20_AMPL) {
    ampl->GetValue(x28_currentFrame, amplVal);
    amplVal *= 2.f;
  }

  float ampdVal = 0.f;
  if (CRealElement* ampd = x1c_elecDesc->x24_AMPD) {
    ampd->GetValue(x28_currentFrame, ampdVal);
  }

  CalculateFractal(0, x420_calculatedVerts.size() - 1, amplVal, ampdVal);

  CVector3f v0 = x420_calculatedVerts[0] - x420_calculatedVerts[1];
  CVector3f v1 = x420_calculatedVerts[x420_calculatedVerts.size() - 1] - x420_calculatedVerts[1];
  CVector3f upVec = CVector3f::Up();
  if (v0.CanBeNormalized() && v1.CanBeNormalized()) {
    v0.Normalize();
    v1.Normalize();
    float dot = CVector3f::Dot(v0, v1);
    if (dot < 0.f) {
      dot = -dot;
    }
    if (close_enough(dot, 1.f)) {
      upVec = CTransform4f::LookAt(x420_calculatedVerts[0], x420_calculatedVerts[1]).GetUp();
    } else {
      upVec = CVector3f::Cross(v0, v1).AsNormalized();
    }
  } else if (!(x420_calculatedVerts[0] == x420_calculatedVerts[1])) {
    upVec = CTransform4f::LookAt(x420_calculatedVerts[0], x420_calculatedVerts[1]).GetUp();
  }

  float commonRand = x14c_randState.Range(0.f, 360.f);

  for (int i = 1; i < x420_calculatedVerts.size() - 1; ++i) {
    CVector3f delta = x420_calculatedVerts[i] - x420_calculatedVerts[i - 1];
    if (delta.IsNonZero()) {
      float angMul = x430_fractalMags[i] / amplVal * 16.f * x14c_randState.Range(-1.f, 1.f);
      CRelAngle angle = CRelAngle::FromDegrees(angMul + commonRand);
      CQuaternion q = CQuaternion::AxisAngle(CUnitVector3f(delta), angle);
      x440_fractalOffsets[i] = q.Transform(x430_fractalMags[i] * upVec);
    }
  }

  for (int i = 1; i < x420_calculatedVerts.size() - 1; ++i) {
    x420_calculatedVerts[i] += x440_fractalOffsets[i];
  }

  if (x1c_elecDesc->x70_ZERY) {
    for (int i = 0; i < x420_calculatedVerts.size(); ++i) {
      x420_calculatedVerts[i].SetY(0.f);
    }
  }
}

CParticleElectric::~CParticleElectric() {}

CParticleElectric::CParticleElectric(TToken< CElectricDescription > desc)
: x1c_elecDesc(desc)
, x28_currentFrame(0)
, x2c_LIFE(0)
, x30_curTime(0.0)
, x38_translation(CVector3f::Zero())
, x44_orientation(CTransform4f::Identity())
, x74_invOrientation(CTransform4f::Identity())
, xa4_globalTranslation(CVector3f::Zero())
, xb0_globalOrientation(CTransform4f::Identity())
, xe0_globalScale(1.f, 1.f, 1.f)
, xec_localScale(1.f, 1.f, 1.f)
, xf8_cachedXf(CTransform4f::Identity())
, x128(0.f)
, x12c(0.f)
, x130_buildBoundsMin(CVector3f::Zero())
, x13c_buildBoundsMax(CVector3f::Zero())
, x148(0.f)
, x14c_randState(sSeed++)
, x150_SSEG(8)
, x154_SCNT(1)
, x158(0)
, x15c_genRem(0.f)
, x160_systemBounds(CAABox::MakeMaxInvertedBox())
, x1b8_moduColor(CColor::White())
, x1bc_allocated(false)
, x450_24_emitting(true)
, x450_25_haveGPSM(false)
, x450_26_haveEPSM(false)
, x450_27_haveSSWH(false)
, x450_28_haveLWD(false)
, x450_29_transformDirty(true) {

  if (CIntElement* sseg = x1c_elecDesc->x10_SSEG) {
    sseg->GetValue(x28_currentFrame, x150_SSEG);
  }

  if (CIntElement* scnt = x1c_elecDesc->xc_SCNT) {
    scnt->GetValue(x28_currentFrame, x154_SCNT);
  }

  if (x154_SCNT > 32) {
    x154_SCNT = 32;
  }

  if (CIntElement* life = x1c_elecDesc->x0_LIFE) {
    life->GetValue(0, x2c_LIFE);
  } else {
    x2c_LIFE = 0x7FFFFF;
  }

  if (x1c_elecDesc->x40_SSWH.valid()) {
    x450_27_haveSSWH = true;
    for (int i = 0; i < x154_SCNT; ++i) {
      x1e0_swooshGenerators.push_back(rstl::auto_ptr< CParticleSwoosh >(
          rs_new CParticleSwoosh(*x1c_elecDesc->x40_SSWH, x150_SSEG)));
      CParticleSwoosh* lastSwoosh = x1e0_swooshGenerators.back().operator->();
      int swooshCount = lastSwoosh->GetSwooshCount();
      for (int j = 0; j < swooshCount; ++j) {
        lastSwoosh->SetWarmUp();
        lastSwoosh->Update(0.0);
      }
    }
  }

  ++x150_SSEG;
  x420_calculatedVerts = rstl::vector< CVector3f, rstl::aligned_allocator >(
      x150_SSEG, CVector3f::Zero());
  x440_fractalOffsets =
      rstl::vector< CVector3f >(x150_SSEG, CVector3f::Zero());
  x430_fractalMags = rstl::vector< float >(x150_SSEG, 0.f);

  if (x1c_elecDesc->x50_GPSM.valid()) {
    x450_25_haveGPSM = true;
    x400_gpsmGenerators.reserve(x154_SCNT);
    for (int i = 0; i < x154_SCNT; ++i) {
      x400_gpsmGenerators.push_back(rstl::auto_ptr< CElementGen >(
          rs_new CElementGen(*x1c_elecDesc->x50_GPSM)));
      x400_gpsmGenerators.back()->SetParticleEmission(false);
    }
  }

  if (x1c_elecDesc->x60_EPSM.valid()) {
    x450_26_haveEPSM = true;
    x410_epsmGenerators.reserve(x154_SCNT);
    for (int i = 0; i < x154_SCNT; ++i) {
      x410_epsmGenerators.push_back(rstl::auto_ptr< CElementGen >(
          rs_new CElementGen(*x1c_elecDesc->x60_EPSM)));
      x410_epsmGenerators.back()->SetParticleEmission(false);
    }
  }

  if (x1c_elecDesc->x28_LWD1 || x1c_elecDesc->x2c_LWD2 || x1c_elecDesc->x30_LWD3) {
    x450_28_haveLWD = true;
    for (int i = 0; i < x154_SCNT; ++i) {
      x2e4_lineManagers.push_back(
          rstl::auto_ptr< CLineManager >(rs_new CLineManager()));
    }
  }
}


