#ifndef _CSCRIPTSOUND
#define _CSCRIPTSOUND

#include <MetroidPrime/CActor.hpp>

class CScriptSound : public CActor {
public:
  CScriptSound(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
               const CTransform4f& xf, const ushort soundId, bool active, const float maxDist,
               const float distComp, const float startDelay, const uint minVol, const uint vol,
               const uint w3, const uint prio, const uint pan, const uint w6, const bool looped,
               const bool nonEmitter, const bool autoStart, const bool occlusionTest,
               const bool acoustics, const bool worldSfx, const bool allowDuplicates,
               const int pitch);
  ~CScriptSound();

  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&) override;
  void PreThink(float dt, CStateManager& mgr) override;
  void Think(float dt, CStateManager&) override;
  void AddToRenderer(const CFrustumPlanes& planes, const CStateManager& mgr) const override;
  void Accept(IVisitor& visitor) override;

  void PlaySound(CStateManager& mgr);
  void StopSound(CStateManager& mgr);

  static float GetOccludedVolumeAmount(const CVector3f& pos, const CStateManager& mgr);

  ushort GetSoundId() const { return x100_soundId; }

private:
  static bool sFirstInFrame;

  float xe8_occUpdateTimer;
  CSfxHandle xec_sfxHandle;
  short xf0_maxVol;
  short xf2_maxVolUpd;
  short xf4_maxVolUpdDelta;
  float xf8_updateTimer;
  float xfc_startDelay;
  ushort x100_soundId;
  float x104_maxDist;
  float x108_distComp;
  short x10c_minVol;
  short x10e_vol;
  short x110_;
  short x112_prio;
  ushort x114_pan;
  short x116_;
  uint x118_pitch;
  bool x11c_24_playRequested : 1;
  bool x11c_25_looped : 1;
  bool x11c_26_nonEmitter : 1;
  bool x11c_27_autoStart : 1;
  bool x11c_28_occlusionTest : 1;
  bool x11c_29_acoustics : 1;
  bool x11c_30_worldSfx : 1;
  bool x11c_31_selfFree : 1;
  bool x11d_24_allowDuplicates : 1;
  bool x11d_25_processedThisFrame : 1;
};

#endif // _CSCRIPTSOUND
