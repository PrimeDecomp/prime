#ifndef _CSAMUSDOLL
#define _CSAMUSDOLL

#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/CModelData.hpp"
#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Graphics/CLight.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "rstl/single_ptr.hpp"

#include "Kyoto/CDependencyGroup.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

class CActorLights;
class CAnimCharacterSet;
class CElementGen;
class CGenDescription;

class CSamusDoll {
public:
  CSamusDoll(const CDependencyGroup& suitDgrp, const CDependencyGroup& ballDgrp,
             const CPlayerState::EPlayerSuit suit, const CPlayerState::EBeamId beam,
             const bool hasSpiderBall, const bool hasGrappleBeam);
  ~CSamusDoll();
  bool CheckLoadComplete();
  bool IsLoaded() const;
  float GetViewInterpolation() const { return xc4_viewInterp; }
  bool IsViewInterpolating() const { return xc4_viewInterp != 0.f && xc4_viewInterp != 1.f; }
  void Update(float dt, CRandom16& rand);
  void Draw(const CStateManager& mgr, float alpha);
  void Touch();
  void CheckTransition(const bool morphball);
  void SetRotation(float xDelta, float zDelta, float dt);
  void SetOffset(const CVector3f& offset, float dt);
  void BeginViewInterpolate(bool zoomIn);
  void SetPulseBeam(const bool pulse);
  void SetPulseGrapple(const bool pulse);
  void SetPulseBoots(const bool pulse);
  void SetPulseVisor(const bool pulse);
  void SetPulseSuit(const bool pulse);

private:
  static CModelData BuildSuitModelData1(CPlayerState::EPlayerSuit suit);
  static CModelData BuildSuitModelDataBoots(CPlayerState::EPlayerSuit suit);
  void SetupLights();
  void SetTransitionAnimation();
  void SetOffsetSfxPlaying(bool playing);
  void SetZoomSfxPlaying(const bool playing);
  void SetRotationSfxPlaying(bool playing);

  rstl::vector< CToken > x0_depTokens;
  CTransform4f x10_ballTransform;
  float x40_alphaIn;
  CPlayerState::EPlayerSuit x44_suit;
  CPlayerState::EBeamId x48_beam;
  bool x4c_completedMorphball;
  bool x4d_selectedMorphball;
  float x50_totalTransitionTime;
  float x54_remTransitionTime;
  float x58_suitPulseFactor;
  float x5c_beamPulseFactor;
  float x60_grapplePulseFactor;
  float x64_bootsPulseFactor;
  float x68_visorPulseFactor;
  float x6c_ballPulseFactor;
  CQuaternion x70_fixedRot;
  float x80_fixedZoom;
  CVector3f x84_interpStartOffset;
  CQuaternion x90_userInterpRot;
  float xa0_userInterpZoom;
  CVector3f xa4_offset;
  CQuaternion xb0_userRot;
  float xc0_userZoom;

  float xc4_viewInterp;
  rstl::optional_object< CModelData > xc8_suitModel0;
  rstl::reserved_vector< TLockedToken< CSkinnedModel >, 2 > x118_suitModel1and2;
  rstl::optional_object< CModelData > x134_suitModelBoots;
  rstl::optional_object< CModelData > x184_ballModelData;
  TCachedToken< CModel > x1d4_spiderBallGlass;
  uint x1e0_ballMatIdx;
  uint x1e4_glassMatIdx;
  uint x1e8_ballGlowColorIdx;
  CToken x1ec_itemScreenSamus;
  TCachedToken< CModel > x1f4_invBeam;
  TCachedToken< CModel > x200_invVisor;
  TCachedToken< CModel > x20c_invGrappleBeam;
  TCachedToken< CModel > x218_invFins;
  TToken< CGenDescription > x224_ballInnerGlow;
  rstl::single_ptr< CElementGen > x22c_ballInnerGlowGen;
  TToken< CGenDescription > x230_ballTransitionFlash;
  rstl::single_ptr< CElementGen > x238_ballTransitionFlashGen;
  rstl::vector< CLight > x23c_lights;
  rstl::single_ptr< CActorLights > x24c_actorLights;
  rstl::optional_object< TCachedToken< CTexture > > x250_phazonIndirectTexture;
  float x260_phazonOffsetAngle;
  CSfxHandle x264_offsetSfx;
  CSfxHandle x268_rotateSfx;
  CSfxHandle x26c_zoomSfx;
  bool x270_24_hasSpiderBall : 1;
  bool x270_25_hasGrappleBeam : 1;
  bool x270_26_pulseSuit : 1;
  bool x270_27_pulseBeam : 1;
  bool x270_28_pulseGrapple : 1;
  bool x270_29_pulseBoots : 1;
  bool x270_30_pulseVisor : 1;
  bool x270_31_loaded : 1;
};
CHECK_SIZEOF(CSamusDoll, 0x274)

#endif // _CSAMUSDOLL
