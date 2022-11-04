#include "MetroidPrime/ScriptObjects/CScriptRoomAcoustics.hpp"

#include "Kyoto/Audio/CAudioSys.hpp"

static TAreaId s_ActiveAcousticsAreaId = kInvalidAreaId;

CScriptRoomAcoustics::CScriptRoomAcoustics(
    TUniqueId uid, const rstl::string& name, const CEntityInfo& info, bool active, uint volScale,
    bool revHi, bool revHiDis, float revHiColoration, float revHiMix, float revHiTime,
    float revHiDamping, float revHiPreDelay, float revHiCrosstalk, bool chorus, float baseDelay,
    float variation, float period, bool revStd, bool revStdDis, float revStdColoration,
    float revStdMix, float revStdTime, float revStdDamping, float revStdPreDelay, bool delay,
    int delayL, int delayR, int delayS, int feedbackL, int feedbackR, int feedbackS, int outputL,
    int outputR, int outputS)
: CEntity(uid, info, active, name)
, x34_volumeScale(volScale)
, x38_revHi(revHi)
, x39_revHiDis(revHiDis)
, x3c_revHiInfo(revHiColoration, revHiMix, revHiTime, revHiDamping, revHiPreDelay, revHiCrosstalk)
, x54_chorus(chorus)
, x58_chorusInfo(baseDelay, variation, period)
, x64_revStd(revStd)
, x65_revStdDis(revStdDis)
, x68_revStdInfo(revStdColoration, revStdMix, revStdTime, revStdDamping, revStdPreDelay)
, x7c_delay(delay)
, x80_delayInfo(delayL, delayR, delayS, feedbackL, feedbackR, feedbackS, outputL, outputR,
                outputS) {}

void CScriptRoomAcoustics::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CScriptRoomAcoustics::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId,
                                           CStateManager& stateMgr) {
  CEntity::AcceptScriptMsg(msg, objId, stateMgr);

  switch (msg) {
  case kSM_Activate:
    EnableAuxCallbacks();
    break;
  case kSM_Deactivate:
    if (s_ActiveAcousticsAreaId == GetCurrentAreaId()) {
      CSfxManager::DisableAuxProcessing();
      s_ActiveAcousticsAreaId = kInvalidAreaId;
      CAudioSys::SetVolumeScale(CAudioSys::GetDefaultVolumeScale());
    }
    break;
  default:
    break;
  }
}

void CScriptRoomAcoustics::Think(float dt, CStateManager& stateMgr) {
  if (!GetActive()) {
    return;
  }
}

void CScriptRoomAcoustics::EnableAuxCallbacks() {
  if (!GetActive()) {
    return;
  }

  int applied = 0;

  if (x38_revHi && applied <= 0) {
    SND_AUX_REVERBHI reverb;
    reverb.hiDis = x39_revHiDis;
    reverb.coloration = x3c_revHiInfo.coloration;
    reverb.mix = x3c_revHiInfo.mix;
    reverb.time = x3c_revHiInfo.time;
    reverb.damping = x3c_revHiInfo.damping;
    reverb.preDelay = x3c_revHiInfo.preDelay;
    reverb.crosstalk = x3c_revHiInfo.crosstalk;
    applied++;
    CSfxManager::PrepareReverbHiCallback(reverb);
  }
  if (x54_chorus && applied < 1) {
    SND_AUX_CHORUS chorus;
    chorus.baseDelay = x58_chorusInfo.baseDelay;
    chorus.variation = x58_chorusInfo.variation;
    chorus.period = x58_chorusInfo.period;
    applied++;
    CSfxManager::PrepareChorusCallback(chorus);
  }
  if (x64_revStd && applied < 1) {
    SND_AUX_REVERBSTD reverbStd;
    reverbStd.tempDisableFX = x65_revStdDis;
    reverbStd.coloration = x68_revStdInfo.coloration;
    reverbStd.mix = x68_revStdInfo.mix;
    reverbStd.time = x68_revStdInfo.time;
    reverbStd.damping = x68_revStdInfo.damping;
    reverbStd.preDelay = x68_revStdInfo.preDelay;
    applied++;
    CSfxManager::PrepareReverbStdCallback(reverbStd);
  }
  if (x7c_delay && applied < 1) {
    SND_AUX_DELAY delay;
    delay.delay[0] = x80_delayInfo.delayL;
    delay.delay[1] = x80_delayInfo.delayR;
    delay.delay[2] = x80_delayInfo.delayS;
    delay.feedback[0] = x80_delayInfo.feedbackL;
    delay.feedback[1] = x80_delayInfo.feedbackR;
    delay.feedback[2] = x80_delayInfo.feedbackS;
    delay.output[0] = x80_delayInfo.outputL;
    delay.output[1] = x80_delayInfo.outputR;
    delay.output[2] = x80_delayInfo.outputS;
    applied++;
    CSfxManager::PrepareDelayCallback(delay);
  }

  if (applied > 0) {
    CAudioSys::SetVolumeScale(x34_volumeScale);
  }
  s_ActiveAcousticsAreaId = GetCurrentAreaId();
}

void CScriptRoomAcoustics::DisableAuxCallbacks() {
  CSfxManager::DisableAuxProcessing();
  s_ActiveAcousticsAreaId = kInvalidAreaId;
  CAudioSys::SetVolumeScale(CAudioSys::GetDefaultVolumeScale());
}

CScriptRoomAcoustics::~CScriptRoomAcoustics() {}
