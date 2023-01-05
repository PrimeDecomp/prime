#ifndef _CSCRIPTSTREAMEDAUDIO
#define _CSCRIPTSTREAMEDAUDIO

#include "MetroidPrime/CEntity.hpp"

class CScriptStreamedMusic : public CEntity {
public:
  CScriptStreamedMusic(TUniqueId id, const CEntityInfo& info, const rstl::string& name, bool active,
                       const rstl::string& fileName, bool noStopOnDeactivate, float fadeIn,
                       float fadeOut, uint volume, bool loop, bool music);
  ~CScriptStreamedMusic() {}

  void Stop(CStateManager& mgr);
  void Play(CStateManager& mgr);
  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId, CStateManager& stateMgr) override;

private:
  rstl::string x34_fileName;
  bool x44_noStopOnDeactivate;
  bool x45_fileIsDsp; // As opposed to .adp for DTK streaming
  bool x46_loop;
  bool x47_music;
  float x48_fadeIn;
  float x4c_fadeOut;
  uint x50_volume;

  static bool IsDSPFile(const rstl::string& fileName);
  static int IsOneShot(bool);
  void StopStream(CStateManager& mgr);
  void StartStream(CStateManager& mgr);
  void TweakOverride(CStateManager& mgr);

  void sub_8020c3f0(CStateManager& mgr);
  void sub_8020c414(CStateManager& mgr);
  rstl::string sub_8020be90();
};

#endif // _CSCRIPTSTREAMEDAUDIO
