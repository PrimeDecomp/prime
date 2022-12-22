#include "MetroidPrime/ScriptObjects/CScriptStreamedAudio.hpp"

#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/CInGameTweakManager.hpp"

#include "Kyoto/Audio/CStreamAudioManager.hpp"
#include "Kyoto/rstl/StringExtras.hpp"

extern "C" void nullsub_42();
extern "C" void sub_8020c414(CScriptStreamedMusic*, CStateManager& mgr);
extern "C" void sub_8020c3f0();
extern "C" void sub_8020c154();
extern "C" rstl::string sub_8020be90();

int CScriptStreamedMusic::IsOneShot(bool b) { return b == false; }

CScriptStreamedMusic::CScriptStreamedMusic(TUniqueId id, const CEntityInfo& info,
                                           const rstl::string& name, bool active,
                                           const rstl::string& fileName, bool noStopOnDeactivate,
                                           float fadeIn, float fadeOut, uint volume, bool loop,
                                           bool music)
: CEntity(id, info, active, name)
, x34_fileName(fileName)
, x44_noStopOnDeactivate(noStopOnDeactivate)
, x45_fileIsDsp(IsDSPFile(fileName))
, x46_loop(loop)
, x47_music(music)
, x48_fadeIn(fadeIn)
, x4c_fadeOut(fadeOut)
, x50_volume(volume) {
  nullsub_42();
}

extern "C" void nullsub_42() {}

bool CScriptStreamedMusic::IsDSPFile(const rstl::string& fileName) {
  if (CStringExtras::CompareCaseInsensitive(fileName, rstl::string_l("sw"))) {
    return true;
  }
  return CStringExtras::IndexOfSubstring(fileName, rstl::string_l(".dsp")) != -1;
}

void CScriptStreamedMusic::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId,
                                           CStateManager& stateMgr) {
  CEntity::AcceptScriptMsg(msg, objId, stateMgr);
  switch (msg) {
  case kSM_Play:
    if (GetActive()) {
      Play(stateMgr);
    }
    break;
  case kSM_Stop:
    if (GetActive()) {
      Stop(stateMgr);
    }
    break;
  case kSM_Increment:
    if (IsOneShot(x45_fileIsDsp)) {
      CStreamAudioManager::FadeBackIn(!x46_loop, x48_fadeIn);
    }
    break;
  case kSM_Decrement:
    if (IsOneShot(x45_fileIsDsp)) {
      CStreamAudioManager::TemporaryFadeOut(!x46_loop, x4c_fadeOut);
    }
    break;
  default:
    break;
  }
}

void CScriptStreamedMusic::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CScriptStreamedMusic::Play(CStateManager& mgr) {
  TweakOverride(mgr);
  if (x45_fileIsDsp) {
    StartStream(mgr);
  } else {
    sub_8020c414(this, mgr);
  }
}

void CScriptStreamedMusic::Stop(CStateManager& mgr) {
  if (x45_fileIsDsp) {
    StopStream(mgr);
  } else {
    sub_8020c3f0();
  }
}

extern "C" void sub_8020c414(CScriptStreamedMusic*, CStateManager& mgr) {}

extern "C" void sub_8020c3f0() {}

void CScriptStreamedMusic::StartStream(CStateManager& mgr) {
  CStreamAudioManager::Start(IsOneShot(x46_loop), x34_fileName, x50_volume, x47_music, x48_fadeIn,
                             x4c_fadeOut);
}

void CScriptStreamedMusic::StopStream(CStateManager& mgr) {
  CStreamAudioManager::Stop(IsOneShot(x46_loop), x34_fileName);
}

void CScriptStreamedMusic::TweakOverride(CStateManager& mgr) {
  const CWorld* wld = mgr.GetWorld();
  const CGameArea& area = wld->GetAreaAlways(GetCurrentAreaId());
  rstl::string twkName = CInGameTweakManager::sub_8021cb38();
  if (gpTweakManager->HasTweakValue(twkName)) {
    const CTweakValue::Audio& audio = gpTweakManager->GetTweakValue(twkName)->GetAudio();
    x34_fileName = audio.GetFileName();
    x45_fileIsDsp = IsDSPFile(x34_fileName);
    x48_fadeIn = audio.GetFadeIn();
    x4c_fadeOut = audio.GetFadeOut();
    x50_volume = audio.GetVolume() * 127.f;
    sub_8020be90();
  }
}

extern "C" void sub_8020c154() {
  
}

extern "C" rstl::string sub_8020be90() {

}
