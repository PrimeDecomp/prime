#ifndef _CSFXMANAGER
#define _CSFXMANAGER

#include "rstl/optional_object.hpp"
#include "types.h"

#include "Kyoto/Audio/CAudioSys.hpp"
#include "Kyoto/Audio/CSfxHandle.hpp"

#include <rstl/auto_ptr.hpp>
#include <rstl/reserved_vector.hpp>
#include <rstl/single_ptr.hpp>

#include <musyx/musyx.h>

#include <Kyoto/CFactoryMgr.hpp>

class CVector3f;
class CSfxManager {
public:
  enum ESfxChannels {
    kSC_Invalid = -1,
    kSC_Default = 0,
    kSC_Game,
    kSC_PauseScreen,
  };

  enum ESfxAudibility {
    kSA_Aud0,
    kSA_Aud1,
    kSA_Aud2,
    kSA_Aud3,
  };

  enum EAuxEffect {
    kAE_None = -1,
    kAE_ReverbHi = 0,
    kAE_Chorus,
    kAE_ReverbStd,
    kAE_Delay,
  };

  class CBaseSfxWrapper {
  public:
    CBaseSfxWrapper(const bool looped, const short prio, const CSfxHandle handle,
                    const bool useAcoustics, const int area);
    virtual ~CBaseSfxWrapper(){};
    virtual void SetActive(bool v);
    virtual void SetPlaying(bool v);
    virtual void SetRank(short v);
    virtual void SetInArea(bool v);
    virtual const bool IsLooped() const;
    virtual bool IsPlaying() const;
    virtual const bool IsActive() const;
    virtual const bool IsInArea() const;
    virtual const bool UseAcoustics() const;
    virtual const short GetRank() const;
    virtual const short GetPriority() const;
    virtual const int GetArea() const;
    virtual const CSfxHandle GetSfxHandle() const;
    virtual void Play() = 0;
    virtual void Stop() = 0;
    virtual const bool Ready() = 0;
    virtual short GetAudible(const CVector3f&) = 0;
    virtual const SND_VOICEID GetVoice() const = 0;
    virtual const SND_FXID GetSfxId() = 0;
    virtual void UpdateEmitterSilent() = 0;
    virtual void UpdateEmitter() = 0;
    virtual void SetReverb(const char rev) = 0;
    const bool Available() const;
    void Release();
    const float GetTimeRemaining();
    void SetTimeRemaining(float t);

  private:
    float x4_timeRemaining;
    short x8_rank;
    short xa_prio;
    CSfxHandle xc_handle;
    int x10_area;
    bool x14_24_isActive : 1;
    bool x14_25_isPlaying : 1;
    bool x14_26_looped : 1;
    bool x14_27_inArea : 1;
    bool x14_28_isReleased : 1;
    bool x14_29_useAcoustics : 1;
  };

  class CSfxEmitterWrapper : public CBaseSfxWrapper {
  public:
    CSfxEmitterWrapper(const bool looped, const short prio,
                       CAudioSys::C3DEmitterParmData& emitterData, const CSfxHandle handle,
                       const bool useAcoustics, const int area);
    ~CSfxEmitterWrapper();
    bool IsPlaying() const override;
    void Play() override;
    void Stop() override;
    const bool Ready() override;
    short GetAudible(const CVector3f&) override;
    const SND_VOICEID GetVoice() const override;
    const SND_FXID GetSfxId() override;
    void UpdateEmitterSilent() override;
    void UpdateEmitter() override;
    void SetReverb(const char rev) override;
    const CAudioSys::C3DEmitterParmData& GetEmitter();
    const SND_VOICEID GetHandle() const;

  private:
    SND_PARAMETER x18_para;
    SND_PARAMETER_INFO x1c_parameterInfo;
    CAudioSys::C3DEmitterParmData x24_emitterData;
    SND_VOICEID x50_emitterHandle;
    bool x54_ready;
    char x55_cachedMaxVol;
  };

  class CSfxWrapper : public CBaseSfxWrapper {
  public:
    CSfxWrapper(const bool looped, const short prio, const ushort sfxId, const short vol,
                const short pan, const CSfxHandle handle, const bool useAcoustics, const int area);
    ~CSfxWrapper(); // {}

    bool IsPlaying() const override;
    void Play() override;
    void Stop() override;
    const bool Ready() override;
    short GetAudible(const CVector3f&) override;
    const SND_VOICEID GetVoice() const override;
    const SND_FXID GetSfxId() override;
    void UpdateEmitterSilent() override;
    void UpdateEmitter() override;
    void SetReverb(const char rev) override;
    void SetVolume(short vol);

  private:
    SND_FXID x18_sfxId;
    SND_VOICEID x1c_voiceHandle;
    short x20_vol;
    short x22_pan;
    bool x24_ready;
  };
  class CSfxListener {
  public:
    explicit CSfxListener(const CVector3f pos = CVector3f::Zero(),
                          const CVector3f dir = CVector3f::Zero(),
                          const CVector3f vec1 = CVector3f::Zero(),
                          const CVector3f vec2 = CVector3f::Zero(), const float f1 = 0.f,
                          const float f2 = 0.f, const float f3 = 0.f, const uint w1 = 0,
                          const uchar maxVolume = 0)
    : x0_(pos)
    , xc_(dir)
    , x18_(vec1)
    , x24_(vec2)
    , x30_(f1)
    , x34_(f2)
    , x38_(f3)
    , x3c_(w1)
    , x40_(maxVolume) {}

    CVector3f x0_;
    CVector3f xc_;
    CVector3f x18_;
    CVector3f x24_;
    float x30_;
    float x34_;
    float x38_;
    int x3c_;
    char x40_;
  };

  class CSfxChannel {
  public:
    CSfxChannel() : x44_(false) {}
    CSfxListener x0_listener;
    bool x44_;
    rstl::reserved_vector< CBaseSfxWrapper*, 72 > x48_;
  };

  static void Update(float dt);
  static void RemoveEmitter(CSfxHandle handle);
  static void UpdateEmitter(CSfxHandle handle, const CVector3f& pos, const CVector3f& dir,
                            uchar maxVol);
  static void UpdateListener(const CVector3f& pos, const CVector3f& dir, const CVector3f&,
                             const CVector3f&, const uchar);

  static const short kMaxPriority;           // 0xFF
  static const short kMedPriority;           // 0x7F
  static const ushort kInternalInvalidSfxId; // 0xFFFF
  static const int kAllAreas;                // 0xFFFFFFFF
  static CSfxHandle AddEmitter(const SND_FXID id, const CVector3f& pos, const CVector3f& dir,
                               const bool useAcoustics, const bool looped,
                               const short prio = kMedPriority, const int areaId = kAllAreas);
  static CSfxHandle AddEmitter(const SND_FXID id, const CVector3f& pos, const CVector3f& dir,
                               const uchar vol, const bool useAcoustics, const bool looped,
                               const short prio = kMedPriority, const int areaId = kAllAreas);
  static CSfxHandle AddEmitter(CAudioSys::C3DEmitterParmData& parmData, bool useAcoustics,
                               const short prio = kMedPriority, const bool looped = false,
                               const int areaId = kAllAreas);

  static void AddListener(ESfxChannels channel, const CVector3f& pos, const CVector3f& dir,
                          const CVector3f& vec1, const CVector3f& vec2, float f1, float f2,
                          float f3, uint w1, const uchar maxVolume);

  static void Shutdown();
  static void StopAndRemoveAllEmitters();
  static ushort TranslateSFXID(ushort);

  static void PitchBend(CSfxHandle handle, int pitch);
  static ushort GetReverbAmount();

  static CSfxHandle SfxStart(ushort id, short vol, short pan, bool useAcoustics,
                             short prio = kMaxPriority, bool looped = false,
                             int areaId = kAllAreas);
  static void SfxSpan(CSfxHandle, uchar);

  static bool IsPlaying(const CSfxHandle& handle);

  static void SetChannel(ESfxChannels);
  static void KillAll(ESfxChannels);
  static void TurnOnChannel(ESfxChannels);
  static void TurnOffChannel(ESfxChannels);

  static const bool IsAuxProcessingEnabled();
  static void DisableAuxCallback();
  static void EnableAuxCallback();
  static void PrepareDelayCallback(const SND_AUX_DELAY& info);
  static void PrepareReverbStdCallback(const SND_AUX_REVERBSTD& info);
  static void PrepareChorusCallback(const SND_AUX_CHORUS& info);
  static void PrepareReverbHiCallback(const SND_AUX_REVERBHI& info);
  static void DisableAuxProcessing();
  static CSfxChannel mChannels[4];
  static ESfxChannels mCurrentChannel;
  static rstl::vector< short >* mTranslationTable;
  static rstl::auto_ptr< CToken > mTranslationTableTok;
  static rstl::reserved_vector< CSfxEmitterWrapper, 64 > mEmitterWrapperPool;
  static rstl::reserved_vector< CSfxWrapper, 64 > mWrapperPool;
};

#endif // _CSFXMANAGER
