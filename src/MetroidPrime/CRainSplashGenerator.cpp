#include "MetroidPrime/CRainSplashGenerator.hpp"

#include "MetroidPrime/CEnvFxManager.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"

#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"

#include "rstl/math.hpp"

GXVtxDescList vtxDescv[] = {
    {GX_VA_POS, GX_DIRECT},
    {GX_VA_CLR0, GX_DIRECT},
    {GX_VA_NULL, GX_NONE},
};

int CRainSplashGenerator::GetNextBestPt(int pt, const CVector3f* vertices, const CVector3f* normals,
                                        int count, CRandom16& rand, float minZ) {
  const CVector3f& refVert = vertices[pt];
  float maxDist = 0.f;
  int nextPt = pt;
  for (int i = 0; i < 3; ++i) {
    bool goodNorm = false;
    const int idx = rand.Range(0, count - 1);
    const CVector3f& vert = vertices[idx];
    const CVector3f& norm = normals[idx];

    const float distSq = (refVert - vert).MagSquared();
    const float normDot = CVector3f::Dot(norm, CVector3f::Up());

    if (0.0f <= normDot && normDot <= 1.0f) {
      goodNorm = true;
    }

    bool goodZ = minZ < 0.0f || minZ < vert.GetZ();

    if (distSq > maxDist && goodNorm && goodZ) {
      nextPt = idx;
      maxDist = distSq;
    }
  }
  return nextPt;
}

CRainSplashGenerator::CRainSplashGenerator(const CVector3f& scale, int maxSplashes, int genRate,
                                           float minZ, float alpha)
: x14_scale(scale)
, x20_generateTimer(0.f)
, x28_dt(0.f)
, x2c_minZ(minZ)
, x30_alpha(alpha > 1.0f ? 255.f : alpha * 255.f)
, x34_curPoint(0)
, x38_queueTail(0)
, x3c_queueHead(0)
, x40_queueSize(0)
, x44_genRate(rstl::min_val(maxSplashes, genRate)) {
  x0_rainSplashes.reserve(maxSplashes);
  for (int i = 0; i < maxSplashes; ++i)
    x0_rainSplashes.push_back(SRainSplash());
}

// CRainSplashGenerator::SSplashLine::SSplashLine() {}

void CRainSplashGenerator::AddPoint(const CVector3f& pos) {
  if (x38_queueTail >= x0_rainSplashes.size())
    x38_queueTail = 0;
  x0_rainSplashes[x38_queueTail].SetPoint(pos);
  x40_queueSize += 1;
  x38_queueTail += 1;
}

void CRainSplashGenerator::GeneratePoints(const CVector3f* vertices, const CVector3f* normals, int count) {
  if (!x48_25_raining)
    return;

  if (x20_generateTimer > x24_generateInterval) {
    int pt = x34_curPoint;
    for (int i = 0; i < x44_genRate; ++i) {
      if (x40_queueSize >= x0_rainSplashes.size())
        break;
      pt = GetNextBestPt(x34_curPoint, vertices, normals, count, x10_random, x2c_minZ);
      AddPoint(CVector3f::ByElementMultiply(x14_scale, vertices[pt]));
    }
    x34_curPoint = pt;
    x20_generateTimer = 0.f;
  }
}

void CRainSplashGenerator::UpdateRainSplashRange(CStateManager& mgr, int start, int end, float dt) {
  for (int i = start; i < end; ++i) {
    SRainSplash& set = x0_rainSplashes[i];
    set.Update(dt, mgr);
    if (!set.IsActive()) {
      x40_queueSize -= 1;
      x3c_queueHead += 1;
      if (x3c_queueHead >= x0_rainSplashes.size())
        x3c_queueHead = 0;
    }
  }
}

void CRainSplashGenerator::UpdateRainSplashes(CStateManager& mgr, float magnitude, float dt) {
  x20_generateTimer += dt;
  x24_generateInterval = 1.f / (70.f * magnitude);
  if (x40_queueSize > 0) {
    if (x38_queueTail <= x3c_queueHead) {
      UpdateRainSplashRange(mgr, x3c_queueHead, int(x0_rainSplashes.size()), dt);
      UpdateRainSplashRange(mgr, 0, x38_queueTail, dt);
    } else {
      UpdateRainSplashRange(mgr, x3c_queueHead, x38_queueTail, dt);
    }
  }
}

void CRainSplashGenerator::Update(float dt, CStateManager& mgr) {
  EEnvFxType neededFx = mgr.GetWorld()->GetNeededEnvFx();
  x28_dt = dt;
  x48_25_raining = false;
  if (neededFx != kEFX_None && mgr.GetEnvFxManager()->IsSplashActive()) {
    if (mgr.GetEnvFxManager()->GetRainMagnitude() != 0.f) {
      switch (neededFx) {
      case kEFX_Rain:
        UpdateRainSplashes(mgr, mgr.GetEnvFxManager()->GetRainMagnitude(), dt);
        x48_25_raining = true;
        break;
      default:
        break;
      }
    }
  }
}

void CRainSplashGenerator::Draw(const CTransform4f& xf) const {
  if (!x48_25_raining) {
    return;
  }

  DoDraw(xf);
}

void CRainSplashGenerator::DoDraw(const CTransform4f& xf) const {
  if (!(x28_dt <= 0.0f)) {
    CGX::SetVtxDescv(vtxDescv);
    CGX::SetNumChans(1);
    CGX::SetNumTevStages(1);
    CGX::SetChanCtrl(CGX::Channel0, false, GX_SRC_VTX, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE,
                     GX_AF_NONE);
    CGX::SetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
    CGX::SetNumTexGens(0);
    CGX::SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
    CGX::SetZMode(true, GX_LEQUAL, false);
    CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvPassthru);
    CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);
    CGraphics::SetModelMatrix(xf);
    if (x40_queueSize > 0) {
      if (x38_queueTail <= x3c_queueHead) {
        for (int i = x3c_queueHead; i < x0_rainSplashes.size(); ++i) {
          const SRainSplash& splash = x0_rainSplashes[i];
          splash.Draw(x30_alpha, x28_dt, splash.x64_pos);
        }
        for (int i = 0; i < x38_queueTail; ++i) {
          const SRainSplash& splash = x0_rainSplashes[i];
          splash.Draw(x30_alpha, x28_dt, splash.x64_pos);
        }
      } else {
        for (int i = x3c_queueHead; i < x38_queueTail; ++i) {
          const SRainSplash& splash = x0_rainSplashes[i];
          splash.Draw(x30_alpha, x28_dt, splash.x64_pos);
        }
      }
    }
    CGX::SetLineWidth(6, GX_TO_ZERO);
  }
}

void CRainSplashGenerator::SSplashLine::SetActive() { x16_active = true; }

void CRainSplashGenerator::SSplashLine::Update(float dt, CStateManager& mgr) {
  if (!x16_active)
    return;
  if (x0_t <= 0.8f) {
    x14_ = u8(5.f * (1.f - x0_t) + 3.f * x0_t);
    x0_t += dt * xc_speed;
  } else if (x15_length != 0) {
    x15_length -= 1;
  } else {
    x16_active = false;
    xc_speed = mgr.Random()->Range(4.0f, 8.0f);
    x10_zParabolaHeight = mgr.Random()->Range(0.015625f, 0.03125f);
    x4_xEnd = mgr.Random()->Range(-0.125f, 0.125f);
    x8_yEnd = mgr.Random()->Range(-0.125f, 0.125f);
    x15_length = u8(mgr.Random()->Range(1, 2));
  }
}

void CRainSplashGenerator::SSplashLine::Draw(float alpha, float dt, const CVector3f& pos) const {
  if (x0_t > 0.f) {
    float delta = dt * xc_speed;
    float vt = x0_t - delta * x15_length;
    if (vt < 0.0f) {
      vt = 0.0f;
    }
    int vertCount = int((x0_t - vt) / delta + 1.f);

    CGX::SetLineWidth(x14_ * 6, GX_TO_ZERO);
    CGX::Begin(GX_LINESTRIP, GX_VTXFMT0, vertCount);

    int i = 0;
    while (i < vertCount) {
      GXPosition3f32(vt * x4_xEnd + pos.GetX(), vt * x8_yEnd + pos.GetY(),
                     -4.f * vt * (vt - 1.f) * x10_zParabolaHeight + pos.GetZ());
      uint a = vt * alpha;
      vt += delta;
      i++;
      GXColor1u32(a | 0xffffff00);
    }
    CGX::End();
  }
}

CRainSplashGenerator::SRainSplash::SRainSplash()
: x0_lines(SSplashLine()), x64_pos(CVector3f::Zero()), x70_(0.0f) {}

void CRainSplashGenerator::SRainSplash::Update(float dt, CStateManager& mgr) {
  for (rstl::reserved_vector< SSplashLine, 4 >::iterator it = x0_lines.begin();
       it != x0_lines.end(); +it)
    it->Update(dt, mgr);
}

void CRainSplashGenerator::SRainSplash::Draw(float alpha, float dt, const CVector3f& pos) const {
  for (rstl::reserved_vector< SSplashLine, 4 >::const_iterator it = x0_lines.begin();
       it != x0_lines.end(); +it) {
    it->Draw(alpha, dt, pos);
  }
}

bool CRainSplashGenerator::SRainSplash::IsActive() const {
  bool ret = false;
  for (rstl::reserved_vector< SSplashLine, 4 >::const_iterator it = x0_lines.begin();
       it != x0_lines.end(); +it) {
    ret |= it->x16_active;
  }
  return ret;
}

void CRainSplashGenerator::SRainSplash::SetPoint(const CVector3f& pos) {
  for (rstl::reserved_vector< SSplashLine, 4 >::iterator it = x0_lines.begin();
       it != x0_lines.end(); +it)
    it->SetActive();
  x64_pos = pos;
}
