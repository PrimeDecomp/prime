#ifndef _CSCRIPTROOMACOUSTICS
#define _CSCRIPTROOMACOUSTICS

#include "MetroidPrime/CEntity.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"

struct EffectReverbHiInfo {
  float coloration; /**< [0.0, 1.0] influences filter coefficients to define surface characteristics
                       of a room */
  float mix;        /**< [0.0, 1.0] dry/wet mix factor of reverb effect */
  float time;       /**< [0.01, 10.0] time in seconds for reflection decay */
  float damping;    /**< [0.0, 1.0] damping factor influencing low-pass filter of reflections */
  float preDelay;   /**< [0.0, 0.1] time in seconds before initial reflection heard */
  float crosstalk;  /**< [0.0, 1.0] factor defining how much reflections are allowed to bleed to
                       other channels */

  EffectReverbHiInfo(float coloration, float mix, float time, float damping, float preDelay,
                     float crosstalk)
  : coloration(coloration)
  , mix(mix)
  , time(time)
  , damping(damping)
  , preDelay(preDelay)
  , crosstalk(crosstalk) {}
};
struct EffectChorusInfo {
  float baseDelay;
  float variation;
  float period;

  EffectChorusInfo(float baseDelay, float variation, float period)
  : baseDelay(baseDelay), variation(variation), period(period) {}
};
struct EffectReverbStdInfo {
  float coloration; /**< [0.0, 1.0] influences filter coefficients to define surface characteristics
                       of a room */
  float mix;        /**< [0.0, 1.0] dry/wet mix factor of reverb effect */
  float time;       /**< [0.01, 10.0] time in seconds for reflection decay */
  float damping;    /**< [0.0, 1.0] damping factor influencing low-pass filter of reflections */
  float preDelay;   /**< [0.0, 0.1] time in seconds before initial reflection heard */

  EffectReverbStdInfo(float coloration, float mix, float time, float damping, float preDelay)
  : coloration(coloration), mix(mix), time(time), damping(damping), preDelay(preDelay) {}
};
struct EffectDelayInfo {
  int delayL;
  int delayR;
  int delayS;
  int feedbackL;
  int feedbackR;
  int feedbackS;
  int outputL;
  int outputR;
  int outputS;

  EffectDelayInfo(int delayL, int delayR, int delayS, int feedbackL, int feedbackR, int feedbackS,
                  int outputL, int outputR, int outputS)
  : delayL(delayL)
  , delayR(delayR)
  , delayS(delayS)
  , feedbackL(feedbackL)
  , feedbackR(feedbackR)
  , feedbackS(feedbackS)
  , outputL(outputL)
  , outputR(outputR)
  , outputS(outputS) {}
};

class CScriptRoomAcoustics : public CEntity {
public:
  CScriptRoomAcoustics(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                       bool active, uint volScale, bool revHi, bool revHiDis, float revHiColoration,
                       float revHiMix, float revHiTime, float revHiDamping, float revHiPreDelay,
                       float revHiCrosstalk, bool chorus, float baseDelay, float variation,
                       float period, bool revStd, bool revStdDis, float revStdColoration,
                       float revStdMix, float revStdTime, float revStdDamping, float revStdPreDelay,
                       bool delay, int delayL, int delayR, int delayS, int feedbackL, int feedbackR,
                       int feedbackS, int outputL, int outputR, int outputS);
  virtual ~CScriptRoomAcoustics();

  void Think(float dt, CStateManager& stateMgr);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId, CStateManager& stateMgr);
  void Accept(IVisitor& visitor);
  void EnableAuxCallbacks();

  static void DisableAuxCallbacks();

private:
  uint x34_volumeScale;

  bool x38_revHi, x39_revHiDis;
  EffectReverbHiInfo x3c_revHiInfo;

  bool x54_chorus;
  EffectChorusInfo x58_chorusInfo;

  bool x64_revStd, x65_revStdDis;
  EffectReverbStdInfo x68_revStdInfo;

  bool x7c_delay;
  EffectDelayInfo x80_delayInfo;
};

#endif // _CSCRIPTROOMACOUSTICS
