#ifndef _CCREDITS
#define _CCREDITS

#include "MetroidPrime/CIOWin.hpp"

#include "Kyoto/Math/CVector2i.hpp"
#include "Kyoto/TToken.hpp"
#include "rstl/list.hpp"
#include "rstl/pair.hpp"
#include "rstl/rc_ptr.hpp"

#include "rstl/single_ptr.hpp"

class CFinalInput;
class CStringTable;
class CRasterFont;
class CMoviePlayer;
class CStaticAudioPlayer;
class CGuiTextSupport;
class CVector3f;

class CCredits : public CIOWin {
public:
  ~CCredits() override;

  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
  bool GetIsContinueDraw() const override;
  void Draw() const override;

  CCredits();

  EMessageReturn Update(float, CArchitectureQueue& queue);
  EMessageReturn ProcessUserInput(const CFinalInput& input);

private:
  int x14_state;
  TToken< CStringTable > x18_creditsTable;
  TToken< CRasterFont > x20_creditsFont;
  rstl::single_ptr< CMoviePlayer > x28_moviePlayer;
  rstl::single_ptr< CStaticAudioPlayer > x2c_audioPlayer;
  rstl::list< rstl::pair< rstl::ncrc_ptr< CGuiTextSupport >, CVector2i > > x30_text;
  float x48_scrollPosition;
  float x4c_totalScrollDistance;
  float x50_scrollSpeed;
  float x54_textFadeRemaining;
  float x58_videoFadeTime;
  bool x5c_24_finished : 1;
  bool x5c_25_videoFaded : 1;
  bool x5c_26_textFaded : 1;
  bool x5c_27_fadingIn : 1;
  bool x5c_28_fadingOut : 1;

  void DrawVideo() const;
  void DrawText() const;

public:
  static void DrawText(CGuiTextSupport&, const CVector3f& translation);
};
CHECK_SIZEOF(CCredits, 0x60)

#endif // _CCREDITS
