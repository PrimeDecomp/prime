#ifndef _CSAMUSDOLL_HPP
#define _CSAMUSDOLL_HPP

#include "MetroidPrime/Player/CPlayerState.hpp"

#include "Kyoto/CDependencyGroup.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

class CSamusDoll {
public:
  CSamusDoll(const CDependencyGroup& suitDgrp, const CDependencyGroup& ballDgrp,
             const CPlayerState::EPlayerSuit suit, const CPlayerState::EBeamId beam,
             const bool hasSpiderBall, const bool hasGrappleBeam);
  bool TryFinishLoad();

private:
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

  static const CVector3f skUnk;
  static const CVector3f skInitialOffset;
};
#endif // _CSAMUSDOLL_HPP
