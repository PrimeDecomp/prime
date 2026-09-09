#ifndef _CINGAMEGUIMANAGER
#define _CINGAMEGUIMANAGER

#include "types.h"

#include "MetroidPrime/CInGameGuiManagerCommon.hpp"
#include "MetroidPrime/Cameras/CCameraFilterPass.hpp"
#include "MetroidPrime/Player/CFaceplateDecoration.hpp"
#include "MetroidPrime/SOnScreenTex.hpp"
#include "MetroidPrime/Tweaks/CTweakGui.hpp"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/list.hpp"
#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/vector.hpp"

class CDependencyGroup;
class CPlayerVisor;
class CSamusHud;
class CAutoMapper;
class CPauseScreenBlur;
class CSamusFaceReflection;
class CMessageScreen;
class CPauseScreen;
class CSaveGameScreen;
class CGuiWidget;
class CGuiModel;
class CGuiCamera;

class CStateManager;
class CArchitectureQueue;
class CFinalInput;

class CInGameGuiManager {
public:
  CInGameGuiManager(const CStateManager& mgr, CArchitectureQueue& queue);
  ~CInGameGuiManager();

  bool GetIsGameDraw() const;

  void PreDraw(CStateManager& mgr, bool isCameraActive);
  void Draw(const CStateManager& mgr) const;
  void PauseGame(const CStateManager& mgr, EInGameGuiState state);
  void ShowPauseGameHudMessage(const CStateManager& mgr, CAssetId message, float time);
  void StartFadeIn();
  void Update(const CStateManager& mgr, float dt, CArchitectureQueue& queue, bool cameraActive);
  void ProcessControllerInput(const CStateManager& mgr, const CFinalInput& input,
                              CArchitectureQueue& queue);
  bool CheckLoadComplete(const CStateManager& mgr);
  bool IsInGameplayStateNotTransitioning() const {
    const bool ret = InGameGuiStates::IsGameplayState(x1bc_prevState) &&
                     InGameGuiStates::IsGameplayState(x1c0_nextState);
    return ret;
  }
  const bool IsInOrTransitioningToOrFromState(EInGameGuiState state) const {
    return x1bc_prevState == state || x1c0_nextState == state;
  }
  bool IsStateTransitioning() const { return x1bc_prevState != x1c0_nextState; }
  bool IsInStateNotTransitioning(EInGameGuiState state) const {
    return x1bc_prevState == state && x1c0_nextState == state;
  }
  bool IsInSaveUI() const { return x1f8_27_inSaveUI; }

private:
  enum ELoadPhase { kLP_LoadDepsGroup, kLP_PreLoadDeps, kLP_LoadDeps, kLP_Done };
  typedef rstl::reserved_vector< TToken< CDependencyGroup >, 13 > TPauseScreenDGRPs;
  typedef rstl::pair< CAssetId, TToken< CTexture > > TDumpedTexture;

  static TPauseScreenDGRPs LockPauseScreenDependencies();
  void InitializeDumpableARAMTextures();
  bool CheckDGRPLoadComplete();
  void BeginStateTransition(EInGameGuiState state, const CStateManager& mgr);
  void DoStateTransition(const CStateManager& mgr);
  void EnsureStates(const CStateManager& mgr);
  bool IsTextureInPauseScreen(CAssetId id) const;
  void DestroyAreaTextures(const CStateManager& mgr);
  const bool TryReloadAreaTextures();
  void UpdateAutoMapper(const CStateManager& mgr, float dt);
  void TryCompleteStateTransition(CArchitectureQueue& queue);
  void RefreshHudOptions();
  bool IsInPausedStateNotTransitioning() const {
    return InGameGuiStates::IsPausedState(x1bc_prevState) &&
           InGameGuiStates::IsPausedState(x1c0_nextState);
  }

  TToken< CDependencyGroup > x0_iggmPreLoad;
  rstl::vector< CToken > x8_preLoadDeps;
  ELoadPhase x18_loadPhase;
  CRandom16 x1c_rand;
  CFaceplateDecoration x20_faceplateDecor;
  rstl::single_ptr< CPlayerVisor > x30_playerVisor;
  rstl::single_ptr< CSamusHud > x34_samusHud;
  rstl::single_ptr< CAutoMapper > x38_autoMapper;
  rstl::single_ptr< CPauseScreenBlur > x3c_pauseScreenBlur;
  rstl::single_ptr< CSamusFaceReflection > x40_samusReflection;
  rstl::single_ptr< CMessageScreen > x44_messageScreen;
  rstl::single_ptr< CPauseScreen > x48_pauseScreen;
  rstl::single_ptr< CSaveGameScreen > x4c_saveUI;
  TCachedToken< CTexture > x50_deathDot;
  TPauseScreenDGRPs x5c_pauseScreenDGRPs;
  rstl::vector< TToken< CDependencyGroup > > xc8_inGameGuiDGRPs;
  rstl::vector< CAssetId > xd8_inGameTextureIDs;
  rstl::vector< CToken > xe8_pauseResources;
  CCameraFilterPass xf8_camFilter;
  CAssetId x124_pauseGameHudMessage;
  float x128_pauseGameHudTime;
  rstl::list< TDumpedTexture > x12c_dumpedTextures;
  CGuiWidget* x144_basewidget_automapper;
  CGuiModel* x148_model_automapper;
  CGuiCamera* x14c_basehud_camera;
  CGuiWidget* x150_basewidget_functional;
  CQuaternion x154_automapperRotate;
  CVector3f x164_automapperOffset;
  CQuaternion x170_camRotate;
  CVector3f x180_camOffset;
  CTransform4f x18c_mapCamXf;
  EInGameGuiState x1bc_prevState;
  EInGameGuiState x1c0_nextState;
  SOnScreenTex x1c4_onScreenTex;
  float x1d8_onScreenTexAlpha;
  rstl::single_ptr< TCachedToken< CTexture > > x1dc_onScreenTexTok;
  CTweakGui::EHelmetVisMode x1e0_helmetVisMode;
  uint x1e4_enableTargetingManager;
  uint x1e8_enableAutoMapper;
  CTweakGui::EHudVisMode x1ec_hudVisMode;
  uint x1f0_enablePlayerVisor;
  float x1f4_visorStaticAlpha;
  bool x1f8_24_ : 1;
  bool x1f8_25_playerAlive : 1;
  bool x1f8_26_deferTransition : 1;
  bool x1f8_27_inSaveUI : 1;
};
CHECK_SIZEOF(CInGameGuiManager, 0x1fc)
#endif
