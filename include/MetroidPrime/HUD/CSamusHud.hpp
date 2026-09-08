#ifndef _CSAMUSHUD
#define _CSAMUSHUD

#include "types.h"

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "MetroidPrime/CInGameGuiManagerCommon.hpp"
#include "MetroidPrime/CTargetReticles.hpp"
#include "MetroidPrime/Cameras/CCameraFilterPass.hpp"
#include "MetroidPrime/HUD/CHUDMemoParms.hpp"
#include "MetroidPrime/Player/CPlayerGun.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/string.hpp"

class CActorLights;
class CFinalInput;
class CGuiFrame;
class CGuiLight;
class CGuiModel;
class CGuiTextPane;
class CGuiWidget;
class CHudBallInterface;
class CHudBossEnergyInterface;
class CHudEnergyInterface;
class CHudHelmetInterface;
class CHudMissileInterface;
class CHudRadarInterface;
class CHudVisorBeamMenu;
class IHudDecoInterface;
class IHudFreeLookInterface;
class IHudThreatInterface;
class CLight;
class CStringTable;
class CUnitVector3f;

enum EHudState {
  kHS_Combat,
  kHS_XRay,
  kHS_Thermal,
  kHS_Scan,
  kHS_Ball,
  kHS_None,
};

class CSamusHud {
public:
  virtual ~CSamusHud();

  explicit CSamusHud(const CStateManager& mgr);
  void Update(float dt, const CStateManager& mgr, uint helmetVis, bool hudVis,
              bool targetingManager);
  void Draw(const CStateManager& mgr, float alpha, uint helmetVis, bool hudVis,
            bool targetingManager) const;
  void DrawHelmet(const CStateManager& mgr, float camYOff);
  void ProcessControllerInput(const CFinalInput& input);
  void UpdateStateTransition(float dt, const CStateManager& mgr);
  bool CheckLoadComplete(const CStateManager& mgr);
  void OnNewInGameGuiState(EInGameGuiState state, const CStateManager& mgr);
  void RefreshHudOptions();
  void Touch() const;
  const CTargetingManager& GetTargetingManager() const;
  float GetDesiredViewportScaleX() const { return x500_viewportScaleX; }
  float GetDesiredViewportScaleY() const { return x504_viewportScaleY; }
  CGuiFrame* GetBaseHudFrame() const { return x274_loadedFrmeBaseHud; }

  static CTransform4f BuildFinalCameraTransform(const CQuaternion& rot, const CVector3f& pos,
                                                const CVector3f& camPos);
  static void DisplayHudMemo(const rstl::wstring& text, const CHUDMemoParms& info);
  static void DeferHintMemo(uint strg, uint hintNum, const CHUDMemoParms& info);
  static void ClearHudMemo() {
    DisplayHudMemo(rstl::wstring_l(L""), CHUDMemoParms(0.f, true, true, true));
  }
  void InternalDisplayHudMemo(const rstl::wstring& text, const CHUDMemoParms& info);
  void SetMessage(const rstl::wstring& text, const CHUDMemoParms& info);
  void _DeferHintMemo(uint strg, uint hintNum, const CHUDMemoParms& info);

private:
  enum ELoadPhase { kLP_Zero, kLP_One, kLP_Two, kLP_Three };
  enum ETransitionState { kTS_NotTransitioning, kTS_Countdown, kTS_Loading, kTS_Transitioning };

  struct SCachedHudLight {
    CVector3f x0_pos;
    CColor xc_color;
    float x10_distC;
    float x14_distL;
    float x18_distQ;
    float x1c_fader;

    SCachedHudLight(const CVector3f& pos, const CColor& color, float distC, float distL,
                    float distQ, float fader)
    : x0_pos(pos)
    , xc_color(color)
    , x10_distC(distC)
    , x14_distL(distL)
    , x18_distQ(distQ)
    , x1c_fader(fader) {}
  };

  struct SVideoBand {
    CGuiModel* x0_videoband;
    float x4_randA;
    float x8_randB;
  };

  struct SProfileInfo {
    u64 x0_updateUsec;
    u64 x8_drawUsec;
    SProfileInfo() : x0_updateUsec(0), x8_drawUsec(0) {}
  };

  friend class CInGameGuiManager;
  static const char* const skHudElementNames[15];
  ELoadPhase x4_loadPhase;
  CTargetingManager x8_targetingMgr;
  TLockedToken< CGuiFrame > x258_frmeHelmet;
  CGuiFrame* x264_loadedFrmeHelmet;
  TLockedToken< CGuiFrame > x268_frmeBaseHud;
  CGuiFrame* x274_loadedFrmeBaseHud;
  rstl::optional_object< TCachedToken< CGuiFrame > > x278_selectedHud;
  CGuiFrame* x288_loadedSelectedHud;
  rstl::single_ptr< CHudEnergyInterface > x28c_energyIntf;
  rstl::single_ptr< IHudThreatInterface > x290_threatIntf;
  rstl::single_ptr< CHudMissileInterface > x294_missileIntf;
  rstl::single_ptr< IHudFreeLookInterface > x298_freeLookIntf;
  rstl::single_ptr< IHudDecoInterface > x29c_decoIntf;
  rstl::single_ptr< CHudHelmetInterface > x2a0_helmetIntf;
  rstl::single_ptr< CHudVisorBeamMenu > x2a4_visorMenu;
  rstl::single_ptr< CHudVisorBeamMenu > x2a8_beamMenu;
  rstl::single_ptr< CHudRadarInterface > x2ac_radarIntf;
  rstl::single_ptr< CHudBallInterface > x2b0_ballIntf;
  rstl::single_ptr< CHudBossEnergyInterface > x2b4_bossEnergyIntf;
  EHudState x2b8_curState;
  EHudState x2bc_nextState;
  EHudState x2c0_setState;
  ETransitionState x2c4_activeTransState;
  float x2c8_transT;
  int x2cc_preLoadCountdown;
  float x2d0_playerHealth;
  int x2d4_totalEnergyTanks;
  int x2d8_missileAmount;
  int x2dc_missileCapacity;
  bool x2e0_24_inFreeLook : 1;
  bool x2e0_25_lookControlHeld : 1;
  bool x2e0_26_latestFirstPerson : 1;
  bool x2e0_27_energyLow : 1;
  uint x2e4_;
  uint x2e8_;
  CPlayerGun::EMissileMode x2ec_missileMode;
  float x2f0_visorBeamMenuAlpha;
  float x2f4_;
  CVector3f x2f8_fpCamDir;
  CVector3f x304_basewidgetIdlePos;
  CVector3f x310_cameraPos;
  CQuaternion x31c_hudLag;
  CQuaternion x32c_invHudLag;
  rstl::single_ptr< CActorLights > x33c_lights;
  rstl::reserved_vector< SCachedHudLight, 3 > x340_hudLights;
  CSfxHandle x3a4_damageSfx;
  CCameraFilterPass x3a8_camFilter;
  CGuiLight* x3d4_damageLight;
  rstl::vector< CTransform4f > x3d8_lightTransforms;
  float x3e8_damageTime;
  float x3ec_damageLightPulser;
  float x3f0_damageFilterAmtInit;
  float x3f4_damageFilterAmt;
  float x3f8_damageFilterAmtGain;
  float x3fc_hudDamagePracticalsInit;
  float x400_hudDamagePracticals;
  float x404_hudDamagePracticalsGain;
  CVector3f x408_damagerToPlayerNorm;
  float x414_decoShakeTranslateAmt;
  float x418_decoShakeTranslateAmtVel;
  CVector3f x41c_decoShakeTranslate;
  CMatrix3f x428_decoShakeRotate;
  CQuaternion x44c_hudLagShakeRot;
  float x45c_decoShakeAmtInit;
  float x460_decoShakeAmt;
  float x464_decoShakeAmtGain;
  int x468_;
  rstl::reserved_vector< CTransform4f, 3 > x46c_;
  float x500_viewportScaleX;
  float x504_viewportScaleY;
  CSfxHandle x508_staticSfxHi;
  CSfxHandle x50c_staticSfxLo;
  float x510_staticInterp;
  float x514_staticCycleTimerHi;
  float x518_staticCycleTimerLo;
  CCameraFilterPass x51c_camFilter2;
  CHUDMemoParms x548_hudMemoParms;
  rstl::single_ptr< TToken< CStringTable > > x550_hudMemoString;
  int x554_hudMemoIdx;
  float x558_messageTextTime;
  float x55c_lastSfxChars;
  float x560_messageTextScale;
  CSfxHandle x564_freeLookSfx;
  CVector3f x568_fpCamDir;
  float x574_lookDeltaDot;
  float x578_freeLookSfxCycleTimer;
  float x57c_energyLowTimer;
  float x580_energyLowPulse;
  float x584_abuttonPulse;
  CGuiWidget* x588_base_basewidget_pivot;
  CGuiWidget* x58c_helmet_BaseWidget_Pivot;
  CGuiModel* x590_base_Model_AutoMapper;
  CGuiTextPane* x594_base_textpane_counter;
  CGuiWidget* x598_base_basewidget_message;
  CGuiTextPane* x59c_base_textpane_message;
  CGuiModel* x5a0_base_model_abutton;
  rstl::reserved_vector< SVideoBand, 4 > x5a4_videoBands;
  rstl::reserved_vector< CGuiLight*, 4 > x5d8_guiLights;
  float x5ec_camFovTweaks[16];
  float x62c_camYTweaks[64];
  float x72c_camZTweaks[32];
  mutable rstl::reserved_vector< SProfileInfo, 15 > x7ac_profileInfo;

  rstl::reserved_vector< bool, 4 > BuildPlayerHasVisors(const CStateManager& mgr) const;
  rstl::reserved_vector< bool, 4 > BuildPlayerHasBeams(const CStateManager& mgr) const;
  void InitializeFrameGluePermanent(const CStateManager& mgr);
  void InitializeFrameGlueMutable(const CStateManager& mgr);
  void UninitializeFrameGlueMutable();
  void InitializeDamageLight();
  void UpdateEnergy(float dt, const CStateManager& mgr, bool init);
  void UpdateFreeLook(float dt, const CStateManager& mgr);
  void UpdateMissile(float dt, const CStateManager& mgr, bool init);
  void UpdateVideoBands(float dt, const CStateManager& mgr);
  void UpdateBallMode(const CStateManager& mgr, bool init);
  void UpdateThreatAssessment(float dt, const CStateManager& mgr);
  void UpdateVisorAndBeamMenus(float dt, const CStateManager& mgr);
  void UpdateCameraDebugSettings();
  void UpdateEnergyLow(float dt, const CStateManager& mgr);
  void ApplyClassicLag(const CUnitVector3f& lookDir, CQuaternion& rot, const CStateManager& mgr,
                       float dt, bool invert);
  void UpdateHudLag(float dt, const CStateManager& mgr);
  bool IsCachedLightInAreaLights(const SCachedHudLight& light,
                                 const CActorLights& areaLights) const;
  bool IsAreaLightInCachedLights(const CLight& light) const;
  int FindEmptyHudLightSlot(const CLight& light) const;
  CColor GetVisorHudLightColor(const CColor& color, const CStateManager& mgr);
  void UpdateHudDynamicLights(float dt, const CStateManager& mgr);
  void UpdateHudDamage(float dt, const CStateManager& mgr, uint helmetVis);
  void UpdateStaticSfx(CSfxHandle& handle, float& cycleTimer, ushort sfxId, float dt,
                       float oldStaticInterp, float staticThreshold);
  void UpdateStaticInterference(float dt, const CStateManager& mgr);
  int GetRelativeDirection(const CVector3f& position, const CStateManager& mgr) const;
  void ShowDamage(CVector3f position, float dam, float prevDam, const CStateManager& mgr);
  void EnterFirstPerson(const CStateManager& mgr);
  void LeaveFirstPerson(const CStateManager& mgr);
  void DrawAttachedEnemyEffect(const CStateManager& mgr) const;
  EHudState GetDesiredHudState(const CStateManager& mgr) const;
};
CHECK_SIZEOF(CSamusHud, 0x8a0)

#endif // _CSAMUSHUD
