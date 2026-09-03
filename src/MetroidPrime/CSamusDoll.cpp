#include "MetroidPrime/CSamusDoll.hpp"

#include "Kyoto/Math/CRelAngle.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"

const CVector3f CSamusDoll::skUnk(1.f, 1.f, 1.f);
const CVector3f CSamusDoll::skInitialOffset(0.f, 0.f, 0.8f);

CSamusDoll::CSamusDoll(const CDependencyGroup& suitDgrp, const CDependencyGroup& ballDgrp,
                       const CPlayerState::EPlayerSuit suit, const CPlayerState::EBeamId beam,
                       const bool hasSpiderBall, const bool hasGrappleBeam)
: x10_ballTransform(
      CTransform4f::Translate(0.f, 0.f, 0.625f * gpTweakPlayer->GetPlayerBallHalfExtent()))
, x40_alphaIn(0.f)
, x44_suit(suit)
, x48_beam(beam)
, x4c_completedMorphball(false)
, x4d_selectedMorphball(false)
, x50_totalTransitionTime(1.f)
, x54_remTransitionTime(0.f)
, x58_suitPulseFactor(0.f)
, x5c_beamPulseFactor(0.f)
, x60_grapplePulseFactor(0.f)
, x64_bootsPulseFactor(0.f)
, x68_visorPulseFactor(0.f)
, x6c_ballPulseFactor(0.f)
, x70_fixedRot(CQuaternion::ZRotation(CRelAngle::FromDegrees(180.f)))
, x80_fixedZoom(-3.6f)
, x84_interpStartOffset(skInitialOffset)
, x90_userInterpRot(x70_fixedRot)
, xa0_userInterpZoom(-3.6f)
, xa4_offset(skInitialOffset)
, xb0_userRot(x70_fixedRot)
, xc0_userZoom(-3.6f){}