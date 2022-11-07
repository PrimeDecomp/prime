#ifndef _CGSCOMBOFIRE
#define _CGSCOMBOFIRE

class CAnimData;
class CStateManager;
class CGSComboFire {
public:
  CGSComboFire();

  bool IsComboOver() const { return x10_24_over; }
  int GetLoopState() const { return x4_loopState; }
  void SetLoopState(int l) { x4_loopState = l; }
  void SetIdle(bool i) { x10_25_idle = i; }
  int GetGunId() const { return xc_gunId; }
  bool Update(CAnimData& data, float dt, CStateManager& mgr);
  int SetAnim(CAnimData& data, int gunId, int loopState, CStateManager& mgr, float delay);

private:
  float x0_delay;
  int x4_loopState; // In, loop, out
  int x8_cueAnimId;
  int xc_gunId;
  bool x10_24_over : 1;
  bool x10_25_idle : 1;
};

#endif // _CGSCOMBOFIRE
