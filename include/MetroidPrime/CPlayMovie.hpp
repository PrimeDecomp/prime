#ifndef _CPLAYMOVIE
#define _CPLAYMOVIE

#include "Kyoto/TToken.hpp"
#include "MetroidPrime/CIOWin.hpp"
#include "rstl/auto_ptr.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

class CMoviePlayer;
class CQuitGameScreen;
class CStaticAudioPlayer;
class CStringTable;
class CRasterFont;
class CGuiTextSupport;
class CFinalInput;

class CPlayMovie : public CIOWin {
public:
  enum EWhichMovie {
    kWM_WinGameBad,
    kWM_WinGameGood,
    kWM_WinGameBest,
    kWM_LoseGame,
    kWM_TalonText,
    kWM_AfterCredits,
    kWM_SpecialEnding,
    kWM_CreditBG
  };
  ~CPlayMovie() override;
  EMessageReturn OnMessage(const CArchitectureMessage& message, CArchitectureQueue& queue) override;
  bool GetIsContinueDraw() const override;
  void Draw() const override;

  CPlayMovie(EWhichMovie movie);

private:
  bool IsGameWon(EWhichMovie movie);
  void DrawVideo() const;
  void DrawText() const;
  void UpdateText(float dt);
  EMessageReturn ProcessUserInput(const CFinalInput& input);
  void SetMovieIndex(int index);

  int x14_state;
  EWhichMovie x18_which;
  rstl::reserved_vector< rstl::auto_ptr< CMoviePlayer >, 3 > x1c_movies;
  CMoviePlayer* x38_moviePlayer;
  int x3c_movieIndex;
  rstl::single_ptr< CQuitGameScreen > x40_quitScreen;
  rstl::single_ptr< CStaticAudioPlayer > x44_audioPlayer;
  TToken< CStringTable > x48_completionScreenStrings;
  TToken< CRasterFont > x50_largeFont;
  rstl::single_ptr< CGuiTextSupport > x58_titleText;
  rstl::single_ptr< CGuiTextSupport > x5c_resultsText;
  rstl::single_ptr< CGuiTextSupport > x60_unlockText;
  rstl::single_ptr< CGuiTextSupport > x64_continueText;
  float x68_textDelay;
  float x6c_resultsTime;
  float x70_pulseTime;
  float x74_printedCharacters;
  bool x78_24_finished : 1;
  bool x78_25_exit : 1;
  bool x78_26_resultsScreen : 1;
  bool x78_27_quitScreen : 1;
};
CHECK_SIZEOF(CPlayMovie, 0x7c)

#endif // _CPLAYMOVIE
