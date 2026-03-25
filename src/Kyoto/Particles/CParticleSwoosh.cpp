#include "Kyoto/Particles/CParticleSwoosh.hpp"

#include "Kyoto/Basics/CCast.hpp"
#include "Kyoto/Basics/CStopwatch.hpp"
#include "float.h"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CLight.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Particles/CParticleGlobals.hpp"
#include "Kyoto/Particles/CSwooshDescription.hpp"

#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "rstl/math.hpp"
#include "rstl/reserved_vector.hpp"
#include "dolphin/gx/GXVert.h"

#pragma inline_max_size(250)
uint CParticleSwoosh::mSwooshAliveCount = 0;

CParticleSwoosh::CParticleSwoosh(const TToken< CSwooshDescription > desc, const int leng)
: x1c_desc(desc)
, x28_curFrame(0)
, x2c_PSLT(0)
, x30_curTime(0.0)
, x38_translation(0.f, 0.f, 0.f)
, x44_orientation(CTransform4f::Identity())
, x74_invOrientation(CTransform4f::Identity())
, xa4_globalTranslation(0.f, 0.f, 0.f)
, xb0_globalOrientation(CTransform4f::Identity())
, xe0_globalScale(1.f, 1.f, 1.f)
, xec_scaleXf(CTransform4f::Identity())
, x11c_invScaleXf(CTransform4f::Identity())
, x14c_localScale(1.f, 1.f, 1.f)
, x158_curParticle(0)
, x1ac_particleCount(0)
, x1b0_SPLN(0)
, x1c0_rand(
      CCast::ToInt16(x1c_desc->x45_26_CRND ? CCast::ToInt16(CStopwatch::GetGlobalMicros()) : 99))
, x1c4_(0.f)
, x1c8_(0.f)
, x1d0_24_emitting(true)
, x1d0_26_forceOneUpdate(false)
, x1d0_27_renderGaps(false)
, x1d0_31_constantTex(false)
, x1d1_24_constantUv(false)
, x1d4_uvXMin(0.f)
, x1d8_uvYMin(0.f)
, x1dc_uvXMax(0.f)
, x1e0_uvYMax(0.f)
, x1e4_tex(nullptr)
, x1e8_uvSpan(1.f)
, x1ec_TSPN(0)
, x1f0_aabbMin(CVector3f::Zero())
, x1fc_aabbMax(CVector3f::Zero())
, x208_maxRadius(0.f)
, x20c_moduColor(0xffffffff) {
  CGlobalRandom _(x1c0_rand);
  mSwooshAliveCount++;

  if (leng > 0) {
    x1b4_LENG = leng;
  } else {
    if (x1c_desc->x10_LENG) {
      x1c_desc->x10_LENG->GetValue(0, x1b4_LENG);
    }
  }
  ++x1b4_LENG;

  if (x1c_desc->x18_SIDE) {
    x1c_desc->x18_SIDE->GetValue(0, x1b8_SIDE);
  }

  x1d0_28_LLRD = x1c_desc->x44_24_LLRD;
  x1d0_29_VLS1 = x1c_desc->x44_26_VLS1;
  x1d0_30_VLS2 = x1c_desc->x44_27_VLS2;

  if (IsLargeEnough()) {
    if (x1c_desc->x0_PSLT) {
      x1c_desc->x0_PSLT->GetValue(0, x2c_PSLT);
    } else {
      x2c_PSLT = 0x7fffff;
    }

    x1d0_25_AALP = x1c_desc->x44_31_AALP;

    if (x1c_desc->x38_SPLN) {
      x1c_desc->x38_SPLN->GetValue(0, x1b0_SPLN);
    }
    if (x1b0_SPLN < 0) {
      x1b0_SPLN = 0;
    }

    int i;
    x15c_swooshes.clear();
    x15c_swooshes.reserve(x1b4_LENG);
    for (i = 0; i < x15c_swooshes.capacity(); i++) {
      x15c_swooshes.push_back(SSwooshData());
    }

    SetOrientation(CTransform4f::Identity());

    x16c_p0.clear();
    x16c_p0.reserve(x1b8_SIDE);

    for (i = 0; i < x16c_p0.capacity(); i++) {
      x16c_p0.push_back(CVector3f::Zero());
    }
    x17c_p1.clear();
    x17c_p1.reserve(x1b8_SIDE);
    for (i = 0; i < x17c_p1.capacity(); i++) {
      x17c_p1.push_back(CVector3f::Zero());
    }

    x18c_p2.clear();
    x18c_p2.reserve(x1b8_SIDE);
    for (i = 0; i < x18c_p2.capacity(); i++) {
      x18c_p2.push_back(CVector3f::Zero());
    }
    x19c_p3.clear();
    x19c_p3.reserve(x1b8_SIDE);
    for (i = 0; i < x19c_p3.capacity(); i++) {
      x19c_p3.push_back(CVector3f::Zero());
    }
  }
}

CParticleSwoosh::~CParticleSwoosh() { --mSwooshAliveCount; }

bool CParticleSwoosh::IsLargeEnough() const { return x1b4_LENG >= 2 && x1b8_SIDE >= 2; }

static float kTickTime = 1.f / 60.f;

bool CParticleSwoosh::Update(double dt) {
  if (!IsLargeEnough()) {
    return false;
  }

  OSTime startTime = OSGetTime();

  CParticleGlobals::SetParticleLifetime(x1b4_LENG);
  CParticleGlobals::SetEmitterTime(x28_curFrame);
  CParticleGlobals::UpdateParticleLifetimeTweenValues(0);
  CGlobalRandom gr(x1c0_rand);

  double evalTime = static_cast< float >(static_cast< int >(x28_curFrame)) * kTickTime;

  float time = 1.f;
  if (x1c_desc->x4_TIME) {
    x1c_desc->x4_TIME->GetValue(x28_curFrame, time);
  }

  double timeDelta = dt * static_cast< double >(time);
  if (timeDelta < 0.0) {
    timeDelta = 0.0;
  }
  x30_curTime += timeDelta;

  while (x1d0_26_forceOneUpdate || evalTime < x30_curTime) {
    x1d0_26_forceOneUpdate = false;

    uint cp = x158_curParticle + 1;
    x158_curParticle = cp;
    if (static_cast< int >(cp) >= x15c_swooshes.capacity()) {
      x158_curParticle = 0;
    }

    if (x1d0_24_emitting && static_cast< int >(x28_curFrame) < x2c_PSLT) {
      UpdateSwooshTranslation(x38_translation);

      if (x1c_desc->x1c_IROT) {
        x1c_desc->x1c_IROT->GetValue(x28_curFrame, x15c_swooshes[x158_curParticle].mInitialRot);
      } else {
        x15c_swooshes[x158_curParticle].mInitialRot = 0.f;
      }

      x15c_swooshes[x158_curParticle].mRotm = 0.f;
      x15c_swooshes[x158_curParticle].mStartFrame = x28_curFrame;

      if (!x15c_swooshes[x158_curParticle].mActive) {
        x1ac_particleCount += 1;
        x15c_swooshes[x158_curParticle].mActive = true;
      }

      x15c_swooshes[x158_curParticle].mOrientation = x44_orientation;

      if (x1c_desc->x28_IVEL) {
        x1c_desc->x28_IVEL->GetValue(x28_curFrame, x15c_swooshes[x158_curParticle].mVelocity);
        const CVector3f& vel = x44_orientation * x15c_swooshes[x158_curParticle].mVelocity;
        x15c_swooshes[x158_curParticle].mVelocity = vel;
      }

      if (x1c_desc->x24_POFS) {
        x1c_desc->x24_POFS->GetValue(x28_curFrame, x15c_swooshes[x158_curParticle].mOffset);
      }

      x15c_swooshes[x158_curParticle].mUseOffset = x15c_swooshes[x158_curParticle].mOffset;

      if (x1c_desc->x14_COLR) {
        x1c_desc->x14_COLR->GetValue(x28_curFrame, x15c_swooshes[x158_curParticle].mColor);
      } else {
        x15c_swooshes[x158_curParticle].mColor = CColor(1.f, 1.f, 1.f, 1.f);
      }

      int tspn = 0;
      if (x1c_desc->x40_TSPN) {
        x1c_desc->x40_TSPN->GetValue(x28_curFrame, tspn);
      }
      x1cc_TSPN = CCast::ToReal32(tspn);
    } else if (x15c_swooshes[x158_curParticle].mActive) {
      x1ac_particleCount = rstl::max_val(0, static_cast< int >(x1ac_particleCount) - 1);
      x15c_swooshes[x158_curParticle].mActive = false;
    }

    UpdateTranslationAndOrientation();

    evalTime += static_cast< double >(kTickTime);
    x28_curFrame += 1;
  }

  OSTime endTime = OSGetTime();
  x1c4_ = CCast::QtoF(static_cast< s64 >(endTime - startTime)) * CStopwatch::mData.GetTimerPeriod();

  return false;
}

void CParticleSwoosh::SetOrientation(const CTransform4f& orientation) {
  x44_orientation = orientation;
  x74_invOrientation = x44_orientation.GetQuickInverse();
  x15c_swooshes[x158_curParticle].mOrientation = x44_orientation;
}

void CParticleSwoosh::UpdateTranslationAndOrientation() {
  if (static_cast< int >(x1ac_particleCount) <= 0) {
    return;
  }

  x208_maxRadius = 0.f;
  x1f0_aabbMin = CVector3f(FLT_MAX, FLT_MAX, FLT_MAX);
  x1fc_aabbMax = CVector3f(-FLT_MAX, -FLT_MAX, -FLT_MAX);

  CParticleGlobals::SetParticleLifetime(x1b4_LENG);
  CParticleGlobals::SetEmitterTime(x28_curFrame);

  CVector3f npos(0.f, 0.f, 0.f);
  CVector3f vel(0.f, 0.f, 0.f);
  CVector3f pos(0.f, 0.f, 0.f);

  for (int i = 0; i < static_cast< int >(x15c_swooshes.x8_capacity); ++i) {
    SSwooshData& sd = x15c_swooshes.xc_items[i];
    if (!sd.mActive) continue;

    sd.mFrame = x28_curFrame - sd.mStartFrame;
    CParticleGlobals::UpdateParticleLifetimeTweenValues(sd.mFrame);

    if (x1c_desc->x44_28_SROT == true) {
      if (x1c_desc->x1c_IROT) {
        x1c_desc->x1c_IROT->GetValue(x28_curFrame, sd.mInitialRot);
      }
      sd.mRotm = 0.f;
    } else {
      if (x1c_desc->x20_ROTM) {
        x1c_desc->x20_ROTM->GetValue(x28_curFrame, sd.mRotm);
      } else {
        sd.mRotm = 0.f;
      }
    }

    if (x1c_desc->x30_VELM) {
      if (x1d0_29_VLS1) {
        vel = x74_invOrientation * sd.mVelocity;
        pos = x74_invOrientation * (sd.mTranslation - x38_translation);
        x1c_desc->x30_VELM->GetValue(sd.mFrame, vel, pos);
        sd.mVelocity = x44_orientation * vel;
        sd.mTranslation = x44_orientation * pos + x38_translation;
      } else {
        x1c_desc->x30_VELM->GetValue(sd.mFrame, sd.mVelocity, sd.mTranslation);
      }
    }

    if (x1c_desc->x34_VLM2) {
      if (x1d0_30_VLS2) {
        vel = x74_invOrientation * sd.mVelocity;
        pos = x74_invOrientation * (sd.mTranslation - x38_translation);
        x1c_desc->x34_VLM2->GetValue(sd.mFrame, vel, pos);
        sd.mVelocity = x44_orientation * vel;
        sd.mTranslation = x44_orientation * pos + x38_translation;
      } else {
        x1c_desc->x34_VLM2->GetValue(sd.mFrame, sd.mVelocity, sd.mTranslation);
      }
    }

    if (sd.mFrame > 0) {
      sd.mTranslation += sd.mVelocity;
    }

    if (x1c_desc->x2c_NPOS) {
      x1c_desc->x2c_NPOS->GetValue(sd.mFrame, npos);
      sd.mUseOffset = sd.mOffset + npos;
    }

    if (x1c_desc->x14_COLR) {
      x1c_desc->x14_COLR->GetValue(sd.mFrame, sd.mColor);
    }

    sd.mLeftRad = GetLeftRadius(i);
    UpdateMaxRadius(sd.mLeftRad);

    if (x1d0_28_LLRD) {
      sd.mRightRad = sd.mLeftRad;
    } else {
      sd.mRightRad = GetRightRadius(i);
      UpdateMaxRadius(sd.mRightRad);
    }

    UpdateBounds(sd.mTranslation + sd.mUseOffset);
  }
}

void CParticleSwoosh::SetTranslation(const CVector3f& translation) {
  x38_translation = translation;
  UpdateSwooshTranslation(x38_translation);
}

void CParticleSwoosh::SetGlobalTranslation(const CVector3f& translation) {
  xa4_globalTranslation = translation;
}

void CParticleSwoosh::SetGlobalOrientation(const CTransform4f& orientation) {
  xb0_globalOrientation = orientation.GetRotation();
}

void CParticleSwoosh::SetLocalScale(const CVector3f& scale) {
  x14c_localScale = scale;
}

int CParticleSwoosh::GetParticleCount() const { return x1ac_particleCount; }

void CParticleSwoosh::SetModulationColor(const CColor& col) { x20c_moduColor = col; }

const CColor& CParticleSwoosh::GetModulationColor() const { return x20c_moduColor; }

bool CParticleSwoosh::IsSystemDeletable() const {
  if (x1d0_24_emitting && static_cast< int >(x28_curFrame) < x2c_PSLT)
    return false;
  if (GetParticleCount() >= 2)
    return false;
  return true;
}

void CParticleSwoosh::Render() {
  if (x1b4_LENG < 2)
    return;
  if (static_cast< int >(x1ac_particleCount) <= 1)
    return;

  OSTime startTime = OSGetTime();
  CParticleGlobals::SetParticleLifetime(x1b4_LENG);
  CGlobalRandom gr(x1c0_rand);
  CGraphics::DisableAllLights();
  CGraphics::SetDepthWriteMode(true, kE_LEqual, x1c_desc->x45_24_ZBUF);

  if (x1d0_25_AALP) {
    CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_One, kLO_Clear);
  } else {
    CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_InvSrcAlpha, kLO_Clear);
  }

  CGraphics::SetModelMatrix(
      CTransform4f::Translate(xa4_globalTranslation) * xb0_globalOrientation * xec_scaleXf *
      CTransform4f::Scale(x14c_localScale));
  CGraphics::SetCullMode(kCM_None);

  CUVElement* texr = x1c_desc->x3c_TEXR;
  if (texr != nullptr) {
    {
      TToken< CTexture > tex(texr->GetValueTexture(x28_curFrame));
      tex->Load(GX_TEXMAP0, CTexture::kCM_Repeat);
      x1e4_tex = *tex;
    }

    SUVElementSet uvs;
    x1c_desc->x3c_TEXR->GetValueUV(x28_curFrame, uvs);
    x1d4_uvXMin = uvs.xMin;
    x1d8_uvYMin = uvs.yMin;
    x1dc_uvXMax = uvs.xMax;
    x1e0_uvYMax = uvs.yMax;

    x1d0_31_constantTex = x1c_desc->x3c_TEXR->HasConstantTexture();
    x1d1_24_constantUv = x1c_desc->x3c_TEXR->HasConstantUV();

    if (x1c_desc->x40_TSPN != nullptr) {
      x1c_desc->x40_TSPN->GetValue(x28_curFrame, x1ec_TSPN);
    }

    if (x1ec_TSPN <= 0) {
      x1ec_TSPN = x15c_swooshes.size() - 1;
    }

    x1e8_uvSpan = 1.f;
    if (x1ec_TSPN > 0) {
      x1e8_uvSpan = 1.f / CCast::ToReal32(x1ec_TSPN);
    }

    CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulate);
  } else {
    CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvPassthru);
  }

  CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);

  if (x1b8_SIDE == 2) {
    if (x1b0_SPLN <= 0) {
      if (x1d0_27_renderGaps) {
        Render2SidedNoSplineGaps();
      } else {
        Render2SidedNoSplineNoGaps();
      }
    } else {
      Render2SidedSpline();
    }
  } else if (x1b8_SIDE == 3) {
    if (x1b0_SPLN > 0) {
      Render3SidedSolidSpline();
    } else {
      Render3SidedSolidNoSplineNoGaps();
    }
  } else {
    if (x1b0_SPLN > 0) {
      RenderNSidedSpline();
    } else {
      RenderNSidedNoSpline();
    }
  }

  OSTime endTime = OSGetTime();
  x1c8_ = CCast::QtoF(static_cast< s64 >(endTime - startTime)) *
           CStopwatch::mData.GetTimerPeriod();
  CGraphics::SetCullMode(kCM_Front);
}

static inline float fast_sine(float v) {
  float x2 = v * v;
  float x3 = v * x2;
  float x5 = x3 * x2;
  float x7 = x5 * x2;
  float s = v * 0.9998058677f;
  s += x3 * -0.1662165821f;
  s += x5 * 0.008087107912f;
  s += x7 * -0.0001529769943f;
  return s;
}

static inline float fast_cosine(float v) {
  float x2 = v * v;
  float x4 = x2 * x2;
  float x6 = x4 * x2;
  float x8 = x6 * x2;
  float c = 1.f;
  c += x2 * -0.4999800324f;
  c += x4 * 0.04162034392f;
  c += x6 * -0.001363610267f;
  c += x8 * 2.016943472e-05f;
  return c;
}

void CParticleSwoosh::Render2SidedNoSplineNoGaps() {
  CGraphics::StreamBegin(kP_TriangleStrip);

  CSwooshDescription* desc = x1c_desc.operator->();
  int particleCount = x1ac_particleCount;
  int curIdx = x158_curParticle;
  float uvOffset = 0.f;

  if (desc->x3c_TEXR != nullptr) {
    if (desc->x45_25_ORNT) {
      CTransform4f invXf =
          (CTransform4f::Translate(xa4_globalTranslation) * xb0_globalOrientation * xec_scaleXf)
              .GetInverse();
      CTransform4f viewToLocal = invXf * CGraphics::GetViewMatrix();

      CVector3f camPos = viewToLocal.GetTranslation();
      CVector3f dotVec = CVector3f::Zero();

      for (int i = 0; i < static_cast< int >(x15c_swooshes.size()); ++i) {
        SSwooshData& swoosh = x15c_swooshes[curIdx];
        curIdx -= 1;
        if (curIdx < 0) {
          curIdx = static_cast< int >(x15c_swooshes.size()) - 1;
        }

        if (swoosh.mActive) {
          int otherIdx = curIdx - 1;
          particleCount -= 1;
          if (otherIdx < 0) {
            otherIdx = static_cast< int >(x15c_swooshes.size()) - 1;
          }

          SSwooshData& otherSwoosh = x15c_swooshes[otherIdx];
          CVector3f delta = otherSwoosh.mTranslation - swoosh.mTranslation;
          if (otherIdx == static_cast< int >(x158_curParticle)) {
            delta = swoosh.mTranslation -
                    x15c_swooshes[(curIdx + 1) % static_cast< int >(x15c_swooshes.size())]
                        .mTranslation;
          }

          if (delta.CanBeNormalized()) {
            CVector3f deltaCross = CVector3f::Cross(delta, camPos - swoosh.mTranslation);
            if (deltaCross.CanBeNormalized()) {
              deltaCross.Normalize();

              float sign = (CVector3f::Dot(deltaCross, dotVec) < 0.f) ? -1.f : 1.f;
              dotVec = sign * deltaCross;

              CVector3f useOffset = swoosh.mTranslation + swoosh.mUseOffset;
              CVector3f v0 = useOffset + swoosh.mLeftRad * dotVec;
              CVector3f v1 = useOffset + -1.f * (swoosh.mRightRad * dotVec);

              CColor color = CColor::Modulate(swoosh.mColor, x20c_moduColor);
              CGraphics::StreamColor(color.GetColor_u32());
              CGraphics::StreamTexcoord(uvOffset, x1d8_uvYMin);
              CGraphics::StreamVertex(v0);
              CGraphics::StreamTexcoord(uvOffset, x1e0_uvYMax);
              CGraphics::StreamVertex(v1);

              if (uvOffset >= 1.f && particleCount != 0) {
                CGraphics::StreamEnd();
                CGraphics::StreamBegin(kP_TriangleStrip);
                uvOffset -= 1.f;
                CGraphics::StreamColor(color.GetColor_u32());
                CGraphics::StreamTexcoord(uvOffset, x1d8_uvYMin);
                CGraphics::StreamVertex(v0);
                CGraphics::StreamTexcoord(uvOffset, x1e0_uvYMax);
                CGraphics::StreamVertex(v1);
              }
            }
          }

          if (x1ec_TSPN > 0) {
            uvOffset += x1e8_uvSpan;
          } else {
            uvOffset = x1e8_uvSpan * static_cast< float >(i);
          }
        }
      }
    } else {
      for (int i = 0; i < static_cast< int >(x15c_swooshes.size()); ++i) {
        SSwooshData& swoosh = x15c_swooshes[curIdx];
        curIdx -= 1;
        if (curIdx < 0) {
          curIdx = static_cast< int >(x15c_swooshes.size()) - 1;
        }

        if (swoosh.mActive) {
          particleCount -= 1;
          float ang = M_PIF * (swoosh.mInitialRot + swoosh.mRotm) / 180.f;
          if (fabs(ang) > M_PI) {
            ang -= static_cast< int >(ang * (1.f / M_2PIF)) * M_2PIF;
            if (ang > M_PIF) {
              ang -= M_2PIF;
            } else if (ang < -M_PIF) {
              ang += M_2PIF;
            }
          }

          float x2 = ang * ang;
          float cosAng = 1.f;
          float sinAng = ang * 0.9998058677f;
          float x3 = ang * x2;
          cosAng += x2 * -0.4999800324f;
          float x4 = x2 * x2;
          sinAng += x3 * -0.1662165821f;
          float x5 = x3 * x2;
          cosAng += x4 * 0.04162034392f;
          float x6 = x4 * x2;
          sinAng += x5 * 0.008087107912f;
          float x7 = x5 * x2;
          cosAng += x6 * -0.001363610267f;
          sinAng += x7 * -0.0001529769943f;
          float x8 = x6 * x2;
          cosAng += x8 * 2.016943472e-05f;

          float leftRad = swoosh.mLeftRad;
          float rightRad = swoosh.mRightRad;
          CVector3f v0 =
              swoosh.mOrientation *
                  CVector3f(cosAng * leftRad, 0.f, sinAng * leftRad) +
              swoosh.mTranslation + swoosh.mUseOffset;
          CVector3f v1 =
              swoosh.mOrientation *
                  CVector3f(-cosAng * rightRad, 0.f, -sinAng * rightRad) +
              swoosh.mTranslation + swoosh.mUseOffset;

          CColor color = CColor::Modulate(swoosh.mColor, x20c_moduColor);
          CGraphics::StreamColor(color.GetColor_u32());
          CGraphics::StreamTexcoord(uvOffset, x1d8_uvYMin);
          CGraphics::StreamVertex(v0);
          CGraphics::StreamTexcoord(uvOffset, x1e0_uvYMax);
          CGraphics::StreamVertex(v1);

          if (uvOffset >= 1.f && particleCount != 0) {
            CGraphics::StreamEnd();
            CGraphics::StreamBegin(kP_TriangleStrip);
            uvOffset -= 1.f;
            CGraphics::StreamColor(color.GetColor_u32());
            CGraphics::StreamTexcoord(uvOffset, x1d8_uvYMin);
            CGraphics::StreamVertex(v0);
            CGraphics::StreamTexcoord(uvOffset, x1e0_uvYMax);
            CGraphics::StreamVertex(v1);
          }

          if (x1ec_TSPN > 0) {
            uvOffset += x1e8_uvSpan;
          } else {
            uvOffset = x1e8_uvSpan * static_cast< float >(i);
          }
        }
      }
    }
  } else {
    for (int i = 0; i < static_cast< int >(x15c_swooshes.size()); ++i) {
      SSwooshData& swoosh = x15c_swooshes.xc_items[curIdx];
      curIdx -= 1;
      if (curIdx < 0) {
        curIdx = static_cast< int >(x15c_swooshes.size()) - 1;
      }

      if (swoosh.mActive) {
        float ang = M_PIF * (swoosh.mInitialRot + swoosh.mRotm) / 180.f;
        if (fabs(ang) > M_PI) {
            ang -= static_cast< int >(ang * (1.f / M_2PIF)) * M_2PIF;
            if (ang > M_PIF) {
              ang -= M_2PIF;
            } else if (ang < -M_PIF) {
              ang += M_2PIF;
            }
        }

        float x2 = ang * ang;
        float cosAng = 1.f;
        float sinAng = ang * 0.9998058677f;
        float x3 = ang * x2;
        cosAng += x2 * -0.4999800324f;
        float x4 = x2 * x2;
        sinAng += x3 * -0.1662165821f;
        float x5 = x3 * x2;
        cosAng += x4 * 0.04162034392f;
        float x6 = x4 * x2;
        sinAng += x5 * 0.008087107912f;
        float x7 = x5 * x2;
        cosAng += x6 * -0.001363610267f;
        sinAng += x7 * -0.0001529769943f;
        float x8 = x6 * x2;
        cosAng += x8 * 2.016943472e-05f;

        float leftRad = swoosh.mLeftRad;
        float rightRad = swoosh.mRightRad;
        CVector3f v0 =
            swoosh.mOrientation *
                CVector3f(cosAng * leftRad, 0.f, sinAng * leftRad) +
            swoosh.mTranslation + swoosh.mUseOffset;
        CVector3f v1 =
            swoosh.mOrientation *
                CVector3f(-cosAng * rightRad, 0.f, -sinAng * rightRad) +
            swoosh.mTranslation + swoosh.mUseOffset;

        CColor color = CColor::Modulate(swoosh.mColor, x20c_moduColor);
        CGraphics::StreamColor(color.GetColor_u32());
        CGraphics::StreamVertex(v0);
        CGraphics::StreamVertex(v1);
      }
    }
  }

  CGraphics::StreamEnd();
}

void CParticleSwoosh::Render2SidedNoSplineGaps() {
  int i;
  bool streaming = false;
  int curIdx = x158_curParticle;

  for (i = 0; i < static_cast< int >(x15c_swooshes.size()); ++i) {
    SSwooshData& swoosh = x15c_swooshes.xc_items[curIdx];
    int otherIdx = WrapIndex(curIdx - 1);
    SSwooshData& otherSwoosh = x15c_swooshes.xc_items[otherIdx];

    curIdx -= 1;
    if (curIdx < 0) {
      curIdx = static_cast< int >(x15c_swooshes.size()) - 2;
    }

    if (!swoosh.mActive) {
      if (streaming == true) {
        streaming = false;
        CGraphics::StreamEnd();
      }
    } else {
      if (!streaming) {
        if (otherSwoosh.mActive != true ||
            i >= static_cast< int >(x15c_swooshes.size()) - 2) {
          continue;
        }
        streaming = true;
        CGraphics::StreamBegin(kP_TriangleStrip);
      }

      float ang = CRelAngle::FromDegrees(swoosh.mInitialRot + swoosh.mRotm).AsRadians();
      float wrappedAng;
      if (fabs(ang) > M_PI) {
        wrappedAng = CMath::FastFmod(ang, M_2PIF);
        if (wrappedAng > M_PIF) {
          wrappedAng -= M_2PIF;
        } else if (wrappedAng < -M_PIF) {
          wrappedAng += M_2PIF;
        }
      } else {
        wrappedAng = ang;
      }

      float x2 = wrappedAng * wrappedAng;
      float sinAng = wrappedAng * 0.9998058677f;
      float x3 = wrappedAng * x2;
      float cosAng = 1.f + x2 * -0.4999800324f;
      float x4 = x2 * x2;
      sinAng += x3 * -0.1662165821f;
      float x5 = x3 * x2;
      cosAng += x4 * 0.04162034392f;
      float x6 = x4 * x2;
      sinAng += x5 * 0.008087107912f;
      float x7 = x5 * x2;
      cosAng += x6 * -0.001363610267f;
      sinAng += x7 * -0.0001529769943f;
      float x8 = x6 * x2;
      cosAng += x8 * 2.016943472e-05f;

      float leftRad = swoosh.mLeftRad;
      float rightRad = swoosh.mRightRad;

      CVector3f v0 =
          swoosh.mOrientation *
              CVector3f(leftRad * cosAng, 0.f, leftRad * sinAng) +
          swoosh.mTranslation + swoosh.mUseOffset;
      CVector3f v1 =
          swoosh.mOrientation *
              CVector3f(-cosAng * rightRad, 0.f, -sinAng * rightRad) +
          swoosh.mTranslation + swoosh.mUseOffset;

      CColor color = CColor::Modulate(swoosh.mColor, x20c_moduColor);
      CGraphics::StreamColor(color.GetColor_u32());
      CGraphics::StreamTexcoord(1.f, x1d8_uvYMin);
      CGraphics::StreamVertex(v0);
      CGraphics::StreamTexcoord(1.f, x1e0_uvYMax);
      CGraphics::StreamVertex(v1);

      if (i < static_cast< int >(x15c_swooshes.size()) - 1) {
        CGraphics::StreamTexcoord(0.f, x1d8_uvYMin);
        CGraphics::StreamVertex(v0);
        CGraphics::StreamTexcoord(0.f, x1e0_uvYMax);
        CGraphics::StreamVertex(v1);
      }
    }
  }

  if (streaming == true) {
    CGraphics::StreamEnd();
  }
}

void CParticleSwoosh::Render2SidedSpline() { RenderNSidedSpline(); }

void CParticleSwoosh::Render3SidedSolidNoSplineNoGaps() {
  if (static_cast< int >(x15c_swooshes.size()) < 2) {
    return;
  }

  rstl::reserved_vector< CVector3f, 2 > p0;
  p0.push_back(CVector3f::Zero());
  p0.push_back(CVector3f::Zero());

  rstl::reserved_vector< CVector3f, 2 > p1;
  p1.push_back(CVector3f::Zero());
  p1.push_back(CVector3f::Zero());

  rstl::reserved_vector< CVector3f, 2 > p2;
  p2.push_back(CVector3f::Zero());
  p2.push_back(CVector3f::Zero());

  static const GXVtxDescList skDescList[] = {
      {GX_VA_POS, GX_DIRECT},
      {GX_VA_CLR0, GX_DIRECT},
      {GX_VA_TEX0, GX_DIRECT},
      {GX_VA_NULL, GX_NONE},
  };
  CGX::SetVtxDescv(skDescList);
  CGX::SetNumChans(1);
  CGX::SetNumTexGens(1);
  CGX::SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
  CGX::SetChanCtrl(CGX::Channel0, false, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE,
                   GX_AF_NONE);
  CGX::SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, false,
                      GX_PTIDENTITY);

  int curRing = 0;
  int prevRing = 1;
  uint curColor = 0;
  int curIdx = x158_curParticle;
  bool lastActive = false;
  float uv0 = -x1e8_uvSpan;

  for (int i = 0; i < static_cast< int >(x15c_swooshes.size()); ++i) {
    SSwooshData& swoosh = x15c_swooshes[curIdx];
    curIdx -= 1;
    if (curIdx < 0) {
      curIdx = static_cast< int >(x15c_swooshes.size()) - 1;
    }

    float rawAng = M_PIF * (swoosh.mInitialRot + swoosh.mRotm) / 180.f;
    float ang1;
    if (fabs(rawAng) > M_PI) {
      ang1 = rawAng - static_cast< int >(rawAng * (1.f / M_2PIF)) * M_2PIF;
      if (ang1 > M_PIF) {
        ang1 -= M_2PIF;
      } else if (ang1 < -M_PIF) {
        ang1 += M_2PIF;
      }
    } else {
      ang1 = rawAng;
    }

    float rad = swoosh.mLeftRad;

    CVector3f ang1Vec(fast_cosine(ang1) * rad, 0.f,
                      fast_sine(ang1) * rad);

    float ang2 = ang1 + 2.0943952f;
    if (ang2 > M_PIF) {
      ang2 -= M_2PIF;
    }

    CVector3f ang2Vec(fast_cosine(ang2) * rad, 0.f,
                      fast_sine(ang2) * rad);

    float ang3 = ang2 + 2.0943952f;
    if (ang3 > M_PIF) {
      ang3 -= M_2PIF;
    }

    CVector3f ang3Vec(fast_cosine(ang3) * rad, 0.f,
                      fast_sine(ang3) * rad);

    CVector3f useOffset = swoosh.mTranslation + swoosh.mUseOffset;
    p0[curRing] = swoosh.mOrientation * ang1Vec + useOffset;
    p1[curRing] = swoosh.mOrientation * ang2Vec + useOffset;
    p2[curRing] = swoosh.mOrientation * ang3Vec + useOffset;

    uint prevColor = curColor;

    if (!swoosh.mActive) {
      lastActive = false;
    } else if (!lastActive) {
      lastActive = true;
    } else {
      lastActive = true;
      CColor color = CColor::Modulate(swoosh.mColor, x20c_moduColor);
      float prevUv = uv0;
      curColor = color.GetColor_u32();
      uv0 += x1e8_uvSpan;

      CGX::Begin(GX_QUADS, GX_VTXFMT0, 12);

      GXPosition3f32(p0[curRing].GetX(), p0[curRing].GetY(), p0[curRing].GetZ());
      GXColor1u32(curColor);
      GXTexCoord2f32(uv0, x1d8_uvYMin);

      GXPosition3f32(p1[curRing].GetX(), p1[curRing].GetY(), p1[curRing].GetZ());
      GXColor1u32(curColor);
      GXTexCoord2f32(uv0, x1e0_uvYMax);

      GXPosition3f32(p1[prevRing].GetX(), p1[prevRing].GetY(), p1[prevRing].GetZ());
      GXColor1u32(prevColor);
      GXTexCoord2f32(prevUv, x1e0_uvYMax);

      GXPosition3f32(p0[prevRing].GetX(), p0[prevRing].GetY(), p0[prevRing].GetZ());
      GXColor1u32(prevColor);
      GXTexCoord2f32(prevUv, x1d8_uvYMin);

      GXPosition3f32(p1[curRing].GetX(), p1[curRing].GetY(), p1[curRing].GetZ());
      GXColor1u32(curColor);
      GXTexCoord2f32(uv0, x1d8_uvYMin);

      GXPosition3f32(p2[curRing].GetX(), p2[curRing].GetY(), p2[curRing].GetZ());
      GXColor1u32(curColor);
      GXTexCoord2f32(uv0, x1e0_uvYMax);

      GXPosition3f32(p2[prevRing].GetX(), p2[prevRing].GetY(), p2[prevRing].GetZ());
      GXColor1u32(prevColor);
      GXTexCoord2f32(prevUv, x1e0_uvYMax);

      GXPosition3f32(p1[prevRing].GetX(), p1[prevRing].GetY(), p1[prevRing].GetZ());
      GXColor1u32(prevColor);
      GXTexCoord2f32(prevUv, x1d8_uvYMin);

      GXPosition3f32(p2[curRing].GetX(), p2[curRing].GetY(), p2[curRing].GetZ());
      GXColor1u32(curColor);
      GXTexCoord2f32(uv0, x1d8_uvYMin);

      GXPosition3f32(p0[curRing].GetX(), p0[curRing].GetY(), p0[curRing].GetZ());
      GXColor1u32(curColor);
      GXTexCoord2f32(uv0, x1e0_uvYMax);

      GXPosition3f32(p0[prevRing].GetX(), p0[prevRing].GetY(), p0[prevRing].GetZ());
      GXColor1u32(prevColor);
      GXTexCoord2f32(prevUv, x1e0_uvYMax);

      GXPosition3f32(p2[prevRing].GetX(), p2[prevRing].GetY(), p2[prevRing].GetZ());
      GXColor1u32(prevColor);
      GXTexCoord2f32(prevUv, x1d8_uvYMin);

      CGX::End();
    }

    curRing += 1;
    curRing &= 1;
    prevRing += 1;
    prevRing &= 1;
  }
}

void CParticleSwoosh::Render3SidedSolidSpline() {
  if (static_cast< int >(x15c_swooshes.size()) < 2) {
    return;
  }

  static const GXVtxDescList skDescList[] = {
      {GX_VA_POS, GX_DIRECT},
      {GX_VA_CLR0, GX_DIRECT},
      {GX_VA_TEX0, GX_DIRECT},
      {GX_VA_NULL, GX_NONE},
  };
  CGX::SetVtxDescv(skDescList);
  CGX::SetNumChans(1);
  CGX::SetNumTexGens(1);
  CGX::SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
  CGX::SetChanCtrl(CGX::Channel0, false, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE,
                   GX_AF_NONE);
  CGX::SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, false,
                      GX_PTIDENTITY);

  float uvDelta = 0.f;
  int curIdx = x158_curParticle;
  float uv0 = -x1e8_uvSpan;
  uint prevColor = 0;
  uint curColor = 0;
  for (int i = 0; i < static_cast< int >(x15c_swooshes.size()); ++i) {
    SSwooshData& swoosh = x15c_swooshes[curIdx];
    curIdx -= 1;
    if (curIdx < 0) {
      curIdx = static_cast< int >(x15c_swooshes.size()) - 1;
    }

    float rawAng = M_PIF * (swoosh.mInitialRot + swoosh.mRotm) / 180.f;
    float ang1;
    if (fabs(rawAng) > M_PI) {
      ang1 = rawAng - static_cast< int >(rawAng * (1.f / M_2PIF)) * M_2PIF;
      if (ang1 > M_PIF) {
        ang1 -= M_2PIF;
      } else if (ang1 < -M_PIF) {
        ang1 += M_2PIF;
      }
    } else {
      ang1 = rawAng;
    }

    float rad = swoosh.mLeftRad;

    float cosAng1 = fast_cosine(ang1);
    float sinAng1 = fast_sine(ang1);
    CVector3f ang1Vec(cosAng1 * rad, 0.f, sinAng1 * rad);

    float ang2 = ang1 + 2.0943952f;
    if (ang2 > M_PIF) {
      ang2 -= M_2PIF;
    }

    float cosAng2 = fast_cosine(ang2);
    float sinAng2 = fast_sine(ang2);
    CVector3f ang2Vec(cosAng2 * rad, 0.f, sinAng2 * rad);

    float ang3 = ang2 + 2.0943952f;
    if (ang3 > M_PIF) {
      ang3 -= M_2PIF;
    }

    float cosAng3 = fast_cosine(ang3);
    float sinAng3 = fast_sine(ang3);
    CVector3f ang3Vec(cosAng3 * rad, 0.f, sinAng3 * rad);

    CVector3f useOffset = swoosh.mTranslation + swoosh.mUseOffset;

    if (i == 2) {
      x19c_p3[0] = x17c_p1[0] * 2.f - x16c_p0[0];
      x19c_p3[1] = x17c_p1[1] * 2.f - x16c_p0[1];
      x19c_p3[2] = x17c_p1[2] * 2.f - x16c_p0[2];
    } else {
      x19c_p3[0] = x18c_p2[0];
      x19c_p3[1] = x18c_p2[1];
      x19c_p3[2] = x18c_p2[2];
    }

    x18c_p2[0] = x17c_p1[0];
    x18c_p2[1] = x17c_p1[1];
    x18c_p2[2] = x17c_p1[2];

    x17c_p1[0] = x16c_p0[0];
    x17c_p1[1] = x16c_p0[1];
    x17c_p1[2] = x16c_p0[2];

    x16c_p0[0] = swoosh.mOrientation * ang1Vec + useOffset;
    x16c_p0[1] = swoosh.mOrientation * ang2Vec + useOffset;
    x16c_p0[2] = swoosh.mOrientation * ang3Vec + useOffset;

    uint prevPrevColor = prevColor;
    prevColor = curColor;

    if (swoosh.mActive) {
      float prevUv = uv0;
      CColor color = CColor::Modulate(swoosh.mColor, x20c_moduColor);
      curColor = color.GetColor_u32();
      uv0 += x1e8_uvSpan;

      if (i > 1) {
        CVector3f v01 = CVector3f::Zero();
        CVector3f v11 = CVector3f::Zero();
        CVector3f v21 = CVector3f::Zero();
        float uv1 = 0.f;
        uint c1 = 0;

        CGX::Begin(GX_QUADS, GX_VTXFMT0, (x1b0_SPLN + 1) * 12);
        uvDelta = prevUv - uv0;

        for (int j = 0; j < x1b0_SPLN + 1; ++j) {
          float t1 = static_cast< float >(j + 1) / static_cast< float >(x1b0_SPLN + 1);
          CVector3f v00 = v01;
          CVector3f v10 = v11;
          CVector3f v20 = v21;
          uint c0 = c1;
          float curSubUv = uv1;

          if (j == 0) {
            float t0 = static_cast< float >(j) / static_cast< float >(x1b0_SPLN + 1);
            v00 = GetSplinePoint(x16c_p0[0], x17c_p1[0], x18c_p2[0], x19c_p3[0], t0);
            v10 = GetSplinePoint(x16c_p0[1], x17c_p1[1], x18c_p2[1], x19c_p3[1], t0);
            v20 = GetSplinePoint(x16c_p0[2], x17c_p1[2], x18c_p2[2], x19c_p3[2], t0);
            c0 = CColor::Lerp(prevColor, prevPrevColor, t0);
            curSubUv = t0 * uvDelta + uv0;
          }

          v01 = GetSplinePoint(x16c_p0[0], x17c_p1[0], x18c_p2[0], x19c_p3[0], t1);
          v11 = GetSplinePoint(x16c_p0[1], x17c_p1[1], x18c_p2[1], x19c_p3[1], t1);
          v21 = GetSplinePoint(x16c_p0[2], x17c_p1[2], x18c_p2[2], x19c_p3[2], t1);
          c1 = CColor::Lerp(prevColor, prevPrevColor, t1);
          uv1 = t1 * uvDelta + uv0;

          // Face 1: p0 - p1
          GXPosition3f32(v00.GetX(), v00.GetY(), v00.GetZ());
          GXColor1u32(c0);
          GXTexCoord2f32(curSubUv, x1d8_uvYMin);

          GXPosition3f32(v10.GetX(), v10.GetY(), v10.GetZ());
          GXColor1u32(c0);
          GXTexCoord2f32(curSubUv, x1e0_uvYMax);

          GXPosition3f32(v11.GetX(), v11.GetY(), v11.GetZ());
          GXColor1u32(c1);
          GXTexCoord2f32(uv1, x1e0_uvYMax);

          GXPosition3f32(v01.GetX(), v01.GetY(), v01.GetZ());
          GXColor1u32(c1);
          GXTexCoord2f32(uv1, x1d8_uvYMin);

          // Face 2: p1 - p2
          GXPosition3f32(v10.GetX(), v10.GetY(), v10.GetZ());
          GXColor1u32(c0);
          GXTexCoord2f32(curSubUv, x1d8_uvYMin);

          GXPosition3f32(v20.GetX(), v20.GetY(), v20.GetZ());
          GXColor1u32(c0);
          GXTexCoord2f32(curSubUv, x1e0_uvYMax);

          GXPosition3f32(v21.GetX(), v21.GetY(), v21.GetZ());
          GXColor1u32(c1);
          GXTexCoord2f32(uv1, x1e0_uvYMax);

          GXPosition3f32(v11.GetX(), v11.GetY(), v11.GetZ());
          GXColor1u32(c1);
          GXTexCoord2f32(uv1, x1d8_uvYMin);

          // Face 3: p2 - p0
          GXPosition3f32(v20.GetX(), v20.GetY(), v20.GetZ());
          GXColor1u32(c0);
          GXTexCoord2f32(curSubUv, x1d8_uvYMin);

          GXPosition3f32(v00.GetX(), v00.GetY(), v00.GetZ());
          GXColor1u32(c0);
          GXTexCoord2f32(curSubUv, x1e0_uvYMax);

          GXPosition3f32(v01.GetX(), v01.GetY(), v01.GetZ());
          GXColor1u32(c1);
          GXTexCoord2f32(uv1, x1e0_uvYMax);

          GXPosition3f32(v21.GetX(), v21.GetY(), v21.GetZ());
          GXColor1u32(c1);
          GXTexCoord2f32(uv1, x1d8_uvYMin);
        }

        CGX::End();
      }
    }
  }
}

void CParticleSwoosh::RenderNSidedNoSpline() { RenderNSidedSpline(); }

void CParticleSwoosh::RenderNSidedSpline() {
  if (x1c_desc->x44_29_WIRE) {
    x1bc_prim = GX_LINES;
  } else {
    x1bc_prim = GX_QUADS;
  }

  CGraphics::StreamBegin(static_cast< ERglPrimitive >(x1bc_prim));

  bool cros = x1c_desc->x44_25_CROS;
  if (x1b8_SIDE < 4 || x1b8_SIDE % 2 != 0) {
    cros = false;
  }

  int curIdx = x158_curParticle;
  for (int i = 0; i < static_cast< int >(x15c_swooshes.size()) - 1; ++i) {
    bool prevActive = x15c_swooshes[WrapIndex(curIdx - 1)].mActive;
    bool curActive = x15c_swooshes[WrapIndex(curIdx)].mActive;

    if (curActive == false || (curActive == true && prevActive == false)) {
      curIdx -= 1;
      if (curIdx < 0) {
        curIdx = x15c_swooshes.size() - 1;
      }
      continue;
    }

    float sideDiv = 360.f / static_cast< float >(x1b8_SIDE);
    SSwooshData* curSwooshPtr = &x15c_swooshes[curIdx];

    for (int j = 0; j < 4; ++j) {
      int crossRefIdx = 0;
      if (j == 0) {
        crossRefIdx = WrapIndex(curIdx + 1);
        if (!x15c_swooshes[crossRefIdx].mActive) {
          crossRefIdx = curIdx;
        }
      } else if (j == 1) {
        crossRefIdx = WrapIndex(curIdx);
      } else if (j == 2) {
        crossRefIdx = WrapIndex(curIdx - 1);
      } else if (j == 3) {
        crossRefIdx = WrapIndex(curIdx - 2);
        if (!x15c_swooshes[crossRefIdx].mActive) {
          crossRefIdx = WrapIndex(curIdx - 1);
        }
      }

      if (x1b4_LENG == 2) {
        if (j == 0) {
          crossRefIdx = WrapIndex(curIdx);
        } else if (j == 3) {
          crossRefIdx = WrapIndex(curIdx - 1);
        }
      } else {
        if (curIdx == static_cast< int >(x158_curParticle) && j == 0) {
          crossRefIdx = x158_curParticle;
        } else {
          if (curIdx == WrapIndex(x158_curParticle + 2) && j == 3) {
            crossRefIdx = WrapIndex(x158_curParticle + 1);
          } else if (i == static_cast< int >(x1ac_particleCount) - 2 && j == 3) {
            crossRefIdx = 0;
          }
        }
      }

      SSwooshData& crossSwoosh = x15c_swooshes[crossRefIdx];
      const CTransform4f& orient = crossSwoosh.mOrientation;

      for (int k = 0; k < x1b8_SIDE; ++k) {
        float n = sideDiv * static_cast< float >(k);
        float ang = M_PIF * (crossSwoosh.mInitialRot + crossSwoosh.mRotm + n) / 180.f;
        if (fabs(ang) > M_PI) {
          ang -= static_cast< int >(ang * (1.f / M_2PIF)) * M_2PIF;
          if (ang > M_PIF) {
            ang -= M_2PIF;
          } else if (ang < -M_PIF) {
            ang += M_2PIF;
          }
        }

        float cosAng = fast_cosine(ang);
        float sinAng = fast_sine(ang);

        float rad;
        if (n > 0.f && n <= 180.f) {
          rad = crossSwoosh.mLeftRad;
        } else {
          rad = crossSwoosh.mRightRad;
        }

        float cosVal = rad * cosAng;
        float sinVal = rad * sinAng;

        CVector3f offset = crossSwoosh.mTranslation + crossSwoosh.mUseOffset;

        if (j == 0) {
          x16c_p0[k] = orient * CVector3f(cosVal, 0.f, sinVal) + offset;
        } else if (j == 1) {
          x17c_p1[k] = orient * CVector3f(cosVal, 0.f, sinVal) + offset;
        } else if (j == 2) {
          x18c_p2[k] = orient * CVector3f(cosVal, 0.f, sinVal) + offset;
        } else if (j == 3) {
          x19c_p3[k] = orient * CVector3f(cosVal, 0.f, sinVal) + offset;
        }
      }
    }

    if (x1c_desc->x3c_TEXR != nullptr) {
      if (x1ec_TSPN > 0) {
        x1d4_uvXMin = x1e8_uvSpan * static_cast< float >(i % x1ec_TSPN);
      } else {
        x1d4_uvXMin = static_cast< float >(i) * x1e8_uvSpan;
      }
    }

    float segUvSpan = x1e8_uvSpan / static_cast< float >(x1b0_SPLN + 1);

    for (int j = 0; j < x1b0_SPLN + 1; ++j) {
      float t0 = static_cast< float >(j) / static_cast< float >(x1b0_SPLN + 1);
      float t1 = static_cast< float >(j + 1) / static_cast< float >(x1b0_SPLN + 1);
      int faces = x1b8_SIDE;
      if (faces <= 2) {
        faces = 1;
      } else if (cros == true) {
        faces = faces / 2;
      }

      x1dc_uvXMax = x1d4_uvXMin + segUvSpan;

      for (int k = 0; k < faces; ++k) {
        int otherK = k + 1;
        if (otherK >= x1b8_SIDE) {
          otherK = 0;
        }

        CColor color = CColor::Modulate(curSwooshPtr->mColor, x20c_moduColor);

        if (cros) {
          otherK = k + x1b8_SIDE / 2;
          const CVector3f& p0k = x16c_p0[k];
          const CVector3f& p1k = x17c_p1[k];
          const CVector3f& p2k = x18c_p2[k];
          const CVector3f& p3k = x19c_p3[k];
          const CVector3f& p0o = x16c_p0[otherK];
          const CVector3f& p1o = x17c_p1[otherK];
          const CVector3f& p2o = x18c_p2[otherK];
          const CVector3f& p3o = x19c_p3[otherK];

          CVector3f v0 = GetSplinePoint(p0k, p1k, p2k, p3k, t0);
          CVector3f v1 = GetSplinePoint(p0o, p1o, p2o, p3o, t0);
          CVector3f v2 = GetSplinePoint(p0o, p1o, p2o, p3o, t1);
          CVector3f v3 = GetSplinePoint(p0k, p1k, p2k, p3k, t1);

          CGraphics::StreamColor(color.GetColor_u32());
          CGraphics::StreamTexcoord(x1d4_uvXMin, x1d8_uvYMin);
          CGraphics::StreamVertex(v0);
          CGraphics::StreamTexcoord(x1d4_uvXMin, x1e0_uvYMax);
          CGraphics::StreamVertex(v1);
          CGraphics::StreamTexcoord(x1dc_uvXMax, x1e0_uvYMax);
          CGraphics::StreamVertex(v2);
          CGraphics::StreamTexcoord(x1dc_uvXMax, x1d8_uvYMin);
          CGraphics::StreamVertex(v3);
        } else {
          const CVector3f& p0k = x16c_p0[k];
          const CVector3f& p1k = x17c_p1[k];
          const CVector3f& p2k = x18c_p2[k];
          const CVector3f& p3k = x19c_p3[k];
          const CVector3f& p0o = x16c_p0[otherK];
          const CVector3f& p1o = x17c_p1[otherK];
          const CVector3f& p2o = x18c_p2[otherK];
          const CVector3f& p3o = x19c_p3[otherK];

          CVector3f v0 = GetSplinePoint(p0k, p1k, p2k, p3k, t0);
          CVector3f v1 = GetSplinePoint(p0o, p1o, p2o, p3o, t0);
          CVector3f v2 = GetSplinePoint(p0o, p1o, p2o, p3o, t1);
          CVector3f v3 = GetSplinePoint(p0k, p1k, p2k, p3k, t1);

          if (x1bc_prim == GX_LINES) {
            CGraphics::StreamVertex(v0);
            CGraphics::StreamVertex(v1);
            CGraphics::StreamVertex(v1);
            CGraphics::StreamVertex(v2);
            CGraphics::StreamVertex(v2);
            CGraphics::StreamVertex(v0);
            CGraphics::StreamVertex(v0);
            CGraphics::StreamVertex(v2);
            CGraphics::StreamVertex(v2);
            CGraphics::StreamVertex(v3);
            CGraphics::StreamVertex(v3);
            CGraphics::StreamVertex(v0);
          } else if (x1bc_prim == GX_QUADS) {
            CGraphics::StreamColor(color.GetColor_u32());
            CGraphics::StreamTexcoord(x1d4_uvXMin, x1d8_uvYMin);
            CGraphics::StreamVertex(v0);
            CGraphics::StreamTexcoord(x1d4_uvXMin, x1e0_uvYMax);
            CGraphics::StreamVertex(v1);
            CGraphics::StreamColor(color.GetColor_u32());
            CGraphics::StreamTexcoord(x1dc_uvXMax, x1e0_uvYMax);
            CGraphics::StreamVertex(v2);
            CGraphics::StreamTexcoord(x1dc_uvXMax, x1d8_uvYMin);
            CGraphics::StreamVertex(v3);
          }
        }
      }

      if (x1c_desc->x3c_TEXR != nullptr && x1b0_SPLN > 0) {
        x1d4_uvXMin += segUvSpan;
      }
    }

    curIdx -= 1;
    if (curIdx < 0) {
      curIdx = x15c_swooshes.size() - 1;
    }
  }

  CGraphics::StreamEnd();
}

void CParticleSwoosh::SetParticleEmission(bool emission) { x1d0_24_emitting = emission; }

int CParticleSwoosh::WrapIndex(int i) {
  while (i < 0)
    i += x1b4_LENG;
  while (i >= x1b4_LENG)
    i -= x1b4_LENG;
  return i;
}

float CParticleSwoosh::GetLeftRadius(int i) {
  float ret = 0.f;
  if (x1c_desc->x8_LRAD) {
    x1c_desc->x8_LRAD->GetValue(x15c_swooshes[i].mFrame, ret);
  }
  return ret;
}

float CParticleSwoosh::GetRightRadius(int i) {
  float ret = 0.f;
  if (x1c_desc->xc_RRAD) {
    x1c_desc->xc_RRAD->GetValue(x15c_swooshes[i].mFrame, ret);
  }
  return ret;
}

CVector3f CParticleSwoosh::GetSplinePoint(const CVector3f& p0, const CVector3f& p1,
                                          const CVector3f& p2, const CVector3f& p3,
                                          float t) const {
  CVector3f result(p1);
  if (!(t <= 0.f)) {
    if (t >= 1.f) {
      result = p2;
    } else {
      float t2 = t * t;
      float t3 = t2 * t;
      float halft3 = 0.5f * t3;

      result = p0 * (-halft3 + t2 - 0.5f * t) +
               p1 * (1.5f * t3 + (-2.5f) * t2 + 1.f) +
               p2 * (-(1.5f * t3) + 2.f * t2 + 0.5f * t) +
               p3 * (halft3 - 0.5f * t2);
    }
  }
  return result;
}

rstl::optional_object< CAABox > CParticleSwoosh::GetBounds() const {
  if (GetParticleCount() <= 1) {
    const CVector3f& pt = x38_translation + xa4_globalTranslation;
    CVector3f copy(pt);
    return CAABox(copy, pt);
  }

  CVector3f radiusVec(x208_maxRadius, x208_maxRadius, x208_maxRadius);
  return CAABox(x1f0_aabbMin - radiusVec, x1fc_aabbMax + radiusVec)
      .GetTransformedAABox(
          CTransform4f::Translate(xa4_globalTranslation) * xb0_globalOrientation * xec_scaleXf);
}

void CParticleSwoosh::UpdateBounds(const CVector3f& pos) {
  x1fc_aabbMax = CVector3f(
    rstl::max_val(pos.GetX(), x1fc_aabbMax.GetX()),
    rstl::max_val(pos.GetY(), x1fc_aabbMax.GetY()),
    rstl::max_val(pos.GetZ(), x1fc_aabbMax.GetZ())
  );
  x1f0_aabbMin = CVector3f(
    rstl::min_val(pos.GetX(), x1f0_aabbMin.GetX()),
    rstl::min_val(pos.GetY(), x1f0_aabbMin.GetY()),
    rstl::min_val(pos.GetZ(), x1f0_aabbMin.GetZ())
  );
}

void CParticleSwoosh::UpdateMaxRadius(float r) {
  x208_maxRadius = rstl::max_val(x208_maxRadius, r);
}

CLight CParticleSwoosh::GetLight() const {
  return CLight::BuildLocalAmbient(CVector3f::Zero(), CColor::White());
}

uint CParticleSwoosh::Get4CharId() const { return 'SWHC'; }

void CParticleSwoosh::UpdateSwooshTranslation(const CVector3f& translation) {
  const CVector3f& scaledTranslation = x11c_invScaleXf * translation;
  x15c_swooshes[x158_curParticle].mTranslation = scaledTranslation;
}

void CParticleSwoosh::SetGlobalScale(const CVector3f& scale) {
  xe0_globalScale = scale;
  xec_scaleXf = CTransform4f::Scale(scale);
  x11c_invScaleXf = CTransform4f::Scale(1.f / scale.GetX(), 1.f / scale.GetY(), 1.f / scale.GetZ());
}

bool CParticleSwoosh::SystemHasLight() const { return false; }

void CParticleSwoosh::DestroyParticles() {}

bool CParticleSwoosh::GetParticleEmission() const { return x1d0_24_emitting; }

const CTransform4f& CParticleSwoosh::GetOrientation() const { return x44_orientation; }

const CVector3f& CParticleSwoosh::GetGlobalScale() const { return xe0_globalScale; }

const CTransform4f& CParticleSwoosh::GetGlobalOrientation() const { return xb0_globalOrientation; }

const CVector3f& CParticleSwoosh::GetGlobalTranslation() const { return xa4_globalTranslation; }

const CVector3f& CParticleSwoosh::GetTranslation() const { return x38_translation; }