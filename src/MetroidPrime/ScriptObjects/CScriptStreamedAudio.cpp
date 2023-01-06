#include "MetroidPrime/ScriptObjects/CScriptStreamedAudio.hpp"

#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CInGameTweakManager.hpp"
#include "MetroidPrime/CWorld.hpp"

#include "Kyoto/CDvdFile.hpp"
#include "Kyoto/Audio/CStreamAudioManager.hpp"
#include "Kyoto/rstl/StringExtras.hpp"

extern "C" void nullsub_42(CScriptStreamedMusic*);
int sub_8020c154(const rstl::string&, int, int);

extern "C" int sub_8020c844(int* a, int* b) {
  return b[1] - a[1];
}

rstl::string sub_8020c7f0(const rstl::string&) {
  sub_8020c844(nullptr, nullptr);
}

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
  nullsub_42(this);
}

extern "C" void nullsub_42(CScriptStreamedMusic*) {}

bool CScriptStreamedMusic::IsDSPFile(const rstl::string& fileName) {
  return !CStringExtras::CompareCaseInsensitive(fileName, rstl::string_l("sw")) ||
         CStringExtras::IndexOfSubstring(fileName, rstl::string_l(".dsp")) != -1;
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
  case kSM_Deactivate:
    if (((x45_fileIsDsp == false) && (x44_noStopOnDeactivate == false)) ||
        (x45_fileIsDsp != false)) {
      Stop(stateMgr);
    }
    break;

  case kSM_Increment:
    if (x45_fileIsDsp) {
      CStreamAudioManager::FadeBackIn(IsOneShot(x46_loop), x48_fadeIn);
    } else {
      CStreamAudioManager::sub_803653f8(x48_fadeIn);
    }

    break;

  case kSM_Decrement:
    if (x45_fileIsDsp) {
      CStreamAudioManager::TemporaryFadeOut(IsOneShot(x46_loop), x4c_fadeOut);
    } else {
      CStreamAudioManager::sub_80365424(x4c_fadeOut);
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
    sub_8020c414(mgr);
  }
}

void CScriptStreamedMusic::Stop(CStateManager& mgr) {
  if (x45_fileIsDsp) {
    StopStream(mgr);
  } else {
    sub_8020c3f0(mgr);
  }
}

void CScriptStreamedMusic::sub_8020c414(CStateManager& mgr) {
  uint volume = x50_volume;
  if (x44_noStopOnDeactivate) {
    CStreamAudioManager::SetDefaultAudio(x34_fileName, x4c_fadeOut, x48_fadeIn, volume);
  } else {
    CStreamAudioManager::SetCurrentAudio(x34_fileName, x4c_fadeOut, x48_fadeIn, volume);
  }
}

void CScriptStreamedMusic::sub_8020c3f0(CStateManager& mgr) {
  CStreamAudioManager::sub_8036590c(x4c_fadeOut);
}

void CScriptStreamedMusic::StartStream(CStateManager& mgr) {
  CStreamAudioManager::Start(IsOneShot(x46_loop), x34_fileName, x50_volume & 0xff, x47_music,
                             x48_fadeIn, x4c_fadeOut);
}

void CScriptStreamedMusic::StopStream(CStateManager& mgr) {
  CStreamAudioManager::Stop(IsOneShot(x46_loop), x34_fileName);
}

void CScriptStreamedMusic::TweakOverride(CStateManager& mgr) {
  const CWorld* wld = mgr.GetWorld();
  const CGameArea& area = wld->GetAreaAlways(GetCurrentAreaId());
  rstl::string twkName = CInGameTweakManager::sub_8021cb38(area.GetAreaAssetId(), GetDebugName());
  if (gpTweakManager->HasTweakValue(twkName)) {
    const CTweakValue::Audio& audio = gpTweakManager->GetTweakValue(twkName)->GetAudio();
    float volume = audio.GetVolume() * 127.f;

    x34_fileName = audio.GetFileName();
    x45_fileIsDsp = IsDSPFile(x34_fileName);
    x48_fadeIn = audio.GetFadeIn();
    x50_volume = volume;
    x4c_fadeOut = audio.GetFadeOut();
    nullsub_42(this);
    sub_8020be90();
  }
}

int sub_8020c154(const rstl::string&, int, int) {}

void CScriptStreamedMusic::sub_8020be90() {
  if (x45_fileIsDsp && sub_8020c154(x34_fileName, 0x7c, 0) == -1 && x34_fileName.size() >= 4) {
    if (CStringExtras::CompareCaseInsensitive(
            rstl::string_l(x34_fileName.data() + (x34_fileName.size() - 5)),
            rstl::string_l("L.dsp")) == 0) {

        sub_8020c7f0(x34_fileName);
        rstl::string file = x34_fileName + "R.dsp";
        if (CDvdFile::FileExists(file.data())) {
          x34_fileName = x34_fileName + '|' + file;
        }
    }
  }
}
