#ifndef _CMORPHBALL
#define _CMORPHBALL

class CMorphBall {
public:
  enum EBallBoostState { kBBS_BoostAvailable, kBBS_BoostDisabled };

  enum ESpiderBallState { kSBS_Inactive, kSBS_Active };

  enum EBombJumpState { kBJS_BombJumpAvailable, kBJS_BombJumpDisabled };

  //
  
  float GetBallRadius() const;

  EBallBoostState GetBallBoostState() const; // { return x1e3c_boostState; }
  void SetBallBoostState(EBallBoostState state);
  EBombJumpState GetBombJumpState() const; // { return x1e40_bombJumpState; }
  void SetBombJumpState(EBombJumpState state);
  void LoadMorphBallModel(CStateManager& mgr);

};

#endif // _CMORPHBALL
