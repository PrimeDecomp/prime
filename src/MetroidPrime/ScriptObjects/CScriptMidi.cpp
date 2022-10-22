#include "MetroidPrime/ScriptObjects/CScriptMidi.hpp"

#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CInGameTweakManager.hpp"
#include "MetroidPrime/CWorld.hpp"

CScriptMidi::CScriptMidi(TUniqueId id, const CEntityInfo& info, const rstl::string& name,
                         bool active, CAssetId csng, float fadeIn, float fadeOut, int volume)
: CEntity(id, info, active, name)
, x34_song(gpSimplePool->GetObj(SObjectTag('CSNG', csng)))
, x3c_handle()
, x40_fadeInTime(fadeIn)
, x44_fadeOutTime(fadeOut)
, x48_volume(volume) {}

void CScriptMidi::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CScriptMidi::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId,
                                  CStateManager& stateMgr) {
  CEntity::AcceptScriptMsg(msg, objId, stateMgr);
  switch (msg) {
  case kSM_Play:
    if (GetActive()) {
      Play(stateMgr, x40_fadeInTime);
    }
    break;
  case kSM_Stop:
    if (GetActive()) {
      Stop(stateMgr, x44_fadeOutTime);
    }
    break;
  case kSM_Deactivate:
    StopInternal(0.f);
    break;
  default:
    break;
  }
}

CScriptMidi::~CScriptMidi() { StopInternal(0.f); }

void CScriptMidi::Play(CStateManager& mgr, float fadeTime) {
  short volume = x48_volume;

  const CWorld* wld = mgr.GetWorld();
  const CGameArea& area = wld->GetAreaAlways(GetCurrentAreaId());
  rstl::string twkName = CInGameTweakManager::GetIdentifierForMidiEvent(
      wld->GetWorldAssetId(), area.GetAreaAssetId(), GetDebugName());

  if (gpTweakManager->HasTweakValue(twkName)) {
    const CTweakValue::Audio& audio = gpTweakManager->GetTweakValue(twkName)->GetAudio();
    x34_song = gpSimplePool->GetObj(SObjectTag('CSNG', audio.GetResId()));
    fadeTime = audio.GetFadeIn();
    volume = static_cast< short >(audio.GetVolume() * 127.f);
  }

  x3c_handle = CMidiManager::Play(**x34_song, CCast::FtoUS(fadeTime * 1000.f), false, volume);
}

void CScriptMidi::Stop(CStateManager& mgr, float fadeTime) {
  const CWorld* wld = mgr.GetWorld();
  const CGameArea& area = wld->GetAreaAlways(GetCurrentAreaId());
  const rstl::string twkName = CInGameTweakManager::GetIdentifierForMidiEvent(
      wld->GetWorldAssetId(), area.GetAreaAssetId(), GetDebugName());

  if (gpTweakManager->HasTweakValue(twkName)) {
    const CTweakValue::Audio& audio = gpTweakManager->GetTweakValue(twkName)->GetAudio();
    fadeTime = audio.GetFadeOut();
  }

  StopInternal(fadeTime);
}

void CScriptMidi::StopInternal(float fadeTime) {
  if (x3c_handle != CSfxHandle::NullHandle()) {
    CMidiManager::Stop(x3c_handle, CCast::FtoUS(fadeTime * 1000.f));
  }
  x3c_handle.Clear();
}
