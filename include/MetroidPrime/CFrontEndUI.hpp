#ifndef _CFRONTENDUI
#define _CFRONTENDUI

#include "MetroidPrime/CIOWin.hpp"

#include "Kyoto/CToken.hpp"
#include "Kyoto/TToken.hpp"

#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CArchitectureQueue;
class CAudioGroupSet;
class CDependencyGroup;
class CGuiFrame;
class CGuiModel;
class CGuiSliderGroup;
class CGuiTableGroup;
class CGuiTextPane;
class CGuiWidget;
class CMoviePlayer;
class CStaticAudioPlayer;
class CTexture;
class CGBASupport;
class CNESEmulator;
class CSaveGameScreen;
class CQuitGameScreen;
class CGuiTextSupport;
class CFinalInput;
class CRumbleGenerator;
class SOptionsFrontEndFrame;

class CFrontEndUI : public CIOWin {
public:
  enum EPhase {
    kP_LoadDepsGroup = 0,
    kP_LoadDeps,
    kP_LoadFrames,
    kP_LoadMovies,
    kP_DisplayFrontEnd,
    kP_ToPlayGame,
    kP_ExitFrontEnd
  };

  enum EScreen {
    kS_OpenCredits = 0,
    kS_Title,
    kS_AttractMovie,
    kS_FileSelect,
    kS_FusionBonus,
    kS_ToPlayGame
  };

  enum EMenuMovie {
    kMM_Stopped = -1,
    kMM_FirstStart = 0,
    kMM_StartLoop,
    kMM_StartFileSelectA,
    kMM_FileSelectLoop,
    kMM_FileSelectPlayGameA,
    kMM_FileSelectGBA,
    kMM_GBALoop,
    kMM_GBAFileSelectA,
    kMM_GBAFileSelectB
  };

  struct SGuiTextPair {
    CGuiTextPane* x0_panes[2];

    SGuiTextPair();
    void SetPairText(const rstl::wstring& str);
    void SetPairText(const wchar_t* str);
  };

  struct SFileSelectOption {
    CGuiWidget* x0_base;
    rstl::reserved_vector< SGuiTextPair, 4 > x4_textpanes;
    uint x28_curField;
    float x2c_chRate;

    static float ComputeRandom();
  };

  struct SNewFileSelectFrame {
    enum ESubMenu {
      kSM_Root = 0,
      kSM_EraseGame,
      kSM_EraseGamePopup,
      kSM_NewGamePopup
    };

    enum EAction {
      kA_None = 0,
      kA_GameOptions,
      kA_FusionBonus,
      kA_SlideShow
    };

    uint x0_rnd;
    CSaveGameScreen* x4_saveUI;
    ESubMenu x8_subMenu;
    EAction xc_action;
    TCachedToken< CGuiFrame > x10_frme;
    CGuiFrame* x1c_loadedFrame;
    CGuiTableGroup* x20_tablegroup_fileselect;
    CGuiModel* x24_model_erase;
    SGuiTextPair x28_textpane_erase;
    SGuiTextPair x30_textpane_cheats;
    SGuiTextPair x38_textpane_gba;
    CGuiTableGroup* x40_tablegroup_popup;
    CGuiModel* x44_model_dash7;
    SGuiTextPair x48_textpane_popupadvance;
    SGuiTextPair x50_textpane_popupcancel;
    SGuiTextPair x58_textpane_popupextra;
    CGuiTextPane* x60_textpane_cancel;
    rstl::reserved_vector< SFileSelectOption, 3 > x64_fileSelections;
    CVector3f xf8_model_erase_position;
    float x104_rowPitch;
    float x108_curTime;
    bool x10c_saveReady;
    bool x10d_needsEraseToggle;
    bool x10e_needsNewToggle;

    SNewFileSelectFrame(CSaveGameScreen* saveUI, uint rnd);
    ~SNewFileSelectFrame();
    bool PumpLoad();
    void FinishedLoading();
    uint GetUserFileSelection() const;
    void Update(float dt);
    EAction ProcessUserInput(const CFinalInput& input);
    void Draw() const;
    void HandleActiveChange(CGuiWidget* active);
    void DoFileselectAdvance(const CGuiTableGroup* caller);
    void SetupFrameContents();
    void ClearFrameContents();
    void EnterErase();
    void ResetFrame();
    void ActivateNewGamePopup();
    void DeactivateNewGamePopup();
    void ActivateExistingGamePopup();
    void DeactivateExistingGamePopup();
    bool IsTextDoneAnimating();
    void DoSelectionChange(const CGuiTableGroup* caller);
    void DoFileselectCancel(const CGuiTableGroup* caller);
    void DoPopupAdvance(const CGuiTableGroup* caller);
    void DoPopupCancel(const CGuiTableGroup* caller);

    static SFileSelectOption FindFileSelectOption(CGuiFrame* frame, int idx);
    static void StartTextAnimating(CGuiTextPane* text, rstl::wstring str);
  };

  struct SFusionBonusFrame {
    struct SGBALinkFrame {
      enum EUIType {
        kUIT_Empty = -1,
        kUIT_InsertPak = 0,
        kUIT_ConnectSocket = 1,
        kUIT_PressStartAndSelect = 2,
        kUIT_BeginLink = 3,
        kUIT_Linking = 4,
        kUIT_LinkFailed = 5,
        kUIT_LinkCompleteOrLinking = 6,
        kUIT_TurnOffGBA = 7,
        kUIT_Complete = 8,
        kUIT_Cancelled = 9
      };

      enum EAction {
        kGA_None = 0,
        kGA_Complete = 1,
        kGA_Cancelled = 2
      };

      EUIType x0_uiType;
      CGBASupport* x4_gbaSupport;
      CGuiFrame* x8_frme;
      SGuiTextPair xc_textpane_instructions;
      CGuiTextPane* x14_textpane_yes;
      CGuiTextPane* x18_textpane_no;
      CGuiModel* x1c_model_gc;
      CGuiModel* x20_model_gba;
      CGuiModel* x24_model_cable;
      CGuiModel* x28_model_circlegcport;
      CGuiModel* x2c_model_circlegbaport;
      CGuiModel* x30_model_circlestartselect;
      CGuiModel* x34_model_pakout;
      CGuiModel* x38_model_gbascreen;
      CGuiModel* x3c_model_connect;
      bool x40_linkInProgress;

      SGBALinkFrame(const CGuiFrame* frme, CGBASupport* support, bool linkInProgress);
      ~SGBALinkFrame();
      void Draw();
      void FinishedLoading();
      void Update(float dt);
      EAction ProcessUserInput(const CFinalInput& input, bool linkInProgress);
      void SetUIText(EUIType tp);
    };

    enum EAction {
      kFA_None = 0,
      kFA_GoBack = 1,
      kFA_PlayNESMetroid = 2
    };

    rstl::single_ptr< SGBALinkFrame > x0_gbaLinkFrame;
    rstl::single_ptr< CGBASupport > x4_gbaSupport;
    EAction x8_action;
    TCachedToken< CGuiFrame > xc_gbaScreen;
    TCachedToken< CGuiFrame > x18_gbaLink;
    CGuiFrame* x24_loadedFrame;
    CGuiTableGroup* x28_tablegroup_options;
    CGuiTableGroup* x2c_tablegroup_fusionsuit;
    SGuiTextPair x30_textpane_instructions;
    bool x38_lastDoDraw;
    bool x39_fusionNotComplete;
    bool x3a_mpNotComplete;

    SFusionBonusFrame();
    ~SFusionBonusFrame();
    void Draw();
    void Update(float dt, const CSaveGameScreen* saveUI);
    EAction ProcessUserInput(const CFinalInput& input, const CSaveGameScreen* saveUI);
    bool PumpLoad();
    void FinishedLoading();
    void ResetCompletionFlags();
    void SetTableColors(CGuiTableGroup* tbgp);
    void DoOptionsAdvance(const CGuiTableGroup* caller);
    void DoSelectionChange(const CGuiTableGroup* caller);
    void DoOptionsCancel(const CGuiTableGroup* caller);
  };

  struct SFrontEndFrame {
    enum EAction {
      kEA_None = 0,
      kEA_StartGame,
      kEA_FusionBonus,
      kEA_GameOptions,
      kEA_SlideShow
    };

    uint x0_rnd;
    EAction x4_action;
    TCachedToken< CGuiFrame > x8_frme;
    CGuiFrame* x14_loadedFrme;
    CGuiTableGroup* x18_tablegroup_mainmenu;
    SGuiTextPair x1c_gbaPair;
    SGuiTextPair x24_cheatPair;

    SFrontEndFrame(uint rnd);
    ~SFrontEndFrame();
    bool PumpLoad();
    void FinishedLoading();
    void Update(float dt);
    EAction ProcessUserInput(const CFinalInput& input);
    void Draw();
    void DoAdvance(const CGuiTableGroup* caller);
    void DoSelectionChange(const CGuiTableGroup* caller);
    void HandleActiveChange(const CGuiTableGroup* caller);
    void DoCancel(const CGuiTableGroup* caller);

    static SGuiTextPair FindTextPanePair(const CGuiFrame* frame, const char* name);
    static void FindAndSetPairText(CGuiFrame& frame, const char* name, const wchar_t* str);
  };

  struct SNesEmulatorFrame {
    enum EMode {
      kEM_Emulator = 0,
      kEM_SaveProgress,
      kEM_ContinuePlaying,
      kEM_QuitNESMetroid
    };

    EMode x0_mode;
    rstl::single_ptr< CNESEmulator > x4_nesEmu;
    rstl::single_ptr< CQuitGameScreen > x8_quitScreen;
    rstl::single_ptr< CGuiTextSupport > xc_textSupport;
    float x10_remTime;
    bool x14_emulationSuspended;
    bool x15_enableFiltering;

    SNesEmulatorFrame();
    ~SNesEmulatorFrame();
    void SetMode(EMode mode);
    bool Update(float dt, CSaveGameScreen& saveUi);
    void ProcessUserInput(const CFinalInput& input, const CSaveGameScreen* sui);
    void Draw(const CSaveGameScreen& saveUi);
  };

  CFrontEndUI();
  ~CFrontEndUI();

  EMessageReturn OnMessage(const CArchitectureMessage& message, CArchitectureQueue& queue) override;
  void Draw() const override;

  static void PlayAdvanceSfx();

private:
  void TransitionToFive();
  void UpdateMusicVol();
  void FinishedLoadingDepsGroup();
  bool PumpLoad();
  EMessageReturn Update(float dt, CArchitectureQueue& queue);
  bool PumpMovieLoad();
  void UpdateMovies(float dt);
  void ProcessUserInput(const CFinalInput& input, CArchitectureQueue& queue);
  bool CanShowSaveUI();
  void StartStateTransition(EScreen screen);
  void CompleteStateTransition();
  void StartAttractMovie(int idx);
  void StopAttractMovie();
  void SetCurrentMovie(EMenuMovie movie);
  const char* GetNextAttractMovieFileName(int idx);
  static const char* GetAttractMovieFileName(int idx);
  void SetFadeBlackTimer(float seconds);
  void SetFadeBlackWithMovie();
  void StartSlideShow(CArchitectureQueue& queue);

  EPhase x14_phase;
  uint x18_rndA;
  uint x1c_rndB;
  TToken< CDependencyGroup > x20_depsGroup;
  rstl::vector< CToken > x28_deps;
  TCachedToken< CTexture > x38_pressStart;
  TCachedToken< CAudioGroupSet > x44_frontendAudioGrp;
  EScreen x50_curScreen;
  EScreen x54_nextScreen;
  float x58_fadeBlackTimer;
  bool x5c_fadeBlackWithMovie;
  float x60_pressStartTime;
  float x64_pressStartAlpha;
  float x68_musicVol;
  rstl::reserved_vector< rstl::auto_ptr< CMoviePlayer >, 9 > x6c_menuMovies;
  EMenuMovie xb8_curMovie;
  int xbc_nextAttract;
  int xc0_attractCount;
  rstl::auto_ptr< CMoviePlayer > xc4_attractMovie;
  CMoviePlayer* xcc_curMoviePtr;
  bool xd0_playerSkipToTitle;
  bool xd1_moviesLoaded;
  bool xd2_deferSlideShow;
  rstl::single_ptr< CStaticAudioPlayer > xd4_audio1;
  rstl::single_ptr< CStaticAudioPlayer > xd8_audio2;
  rstl::single_ptr< CSaveGameScreen > xdc_saveUI;
  rstl::single_ptr< SNewFileSelectFrame > xe0_frontendCardFrme;
  rstl::single_ptr< SFusionBonusFrame > xe4_fusionBonusFrme;
  rstl::single_ptr< SFrontEndFrame > xe8_frontendNoCardFrme;
  rstl::single_ptr< SNesEmulatorFrame > xec_emuFrme;
  rstl::single_ptr< SOptionsFrontEndFrame > xf0_optionsFrme;
  CStaticAudioPlayer* xf4_curAudio;
};

CHECK_SIZEOF(CFrontEndUI, 0xf8)

#endif // _CFRONTENDUI
