#include "MetroidPrime/BodyState/CBSDie.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/BodyState/CBodyController.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CPASDatabase.hpp"

CBSDie::CBSDie() : x4_remTime(0.0f), x8_isDead(false) {}

void CBSDie::Start(CBodyController& bc, CStateManager& mgr) override {
  const CPASDatabase& db = bc.GetPASDatabase();
  int fallState = bc.GetFallState();
  
  bool shouldReset = true;

  if (bc.ShouldPlayDeathAnims()) {
    const CPASAnimParmData parms(pas::kAS_Death, CPASAnimParm::FromEnum(fallState));
    const rstl::pair<float, int> best = db.FindBestAnimation(parms, *mgr.Random(), -1);
    if (best.first > 0.f) {
      const CAnimPlaybackParms playParms(best.second, -1, 1.f, true);
      bc.SetCurrentAnimation(playParms, false, false);
      x4_remTime = bc.GetAnimTimeRemaining();
      shouldReset = false;
    }
  }

  if (shouldReset) {
    bc.EnableAnimation(false);
    x4_remTime = bc.ShouldPlayDeathAnims() ? 3.f : 4.f;
  }

  x8_isDead = false;
}

pas::EAnimationState CBSDie::UpdateBody(float dt, CBodyController& bc,
                                        CStateManager& mgr) override {
  x4_remTime -= dt;
  if (x4_remTime <= 0.f) {
    bc.EnableAnimation(false);
    x8_isDead = true;
  }
  return pas::kAS_Invalid;
}

void CBSDie::Shutdown(CBodyController&) override {}

bool CBSDie::IsDying() const override { return true; }

bool CBSDie::IsDead() const override { return x8_isDead; }

CBSDie::~CBSDie() {}
