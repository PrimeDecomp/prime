#ifndef _CCREDITS
#define _CCREDITS

#include "MetroidPrime/CIOWin.hpp"

#include "Kyoto/Math/CVector2i.hpp"
#include "Kyoto/TToken.hpp"
#include "rstl/map.hpp"
#include "rstl/optional_object.hpp"

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
  CCredits();
  ~CCredits() override;

  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
  bool GetIsContinueDraw() const override;
  void Draw() const override;

  EMessageReturn Update(float, CArchitectureQueue& queue);
  EMessageReturn ProcessUserInput(const CFinalInput& input);

private:
  int x14_; // = 0;
  TToken< CStringTable > x18_creditsTable;
  TToken< CRasterFont > x20_creditsFont;
  rstl::single_ptr< CMoviePlayer > x28_moviePlayer;
  rstl::single_ptr< CStaticAudioPlayer > x2c_;
  rstl::list< rstl::pair< rstl::single_ptr< CGuiTextSupport >, CVector2i > > x30_text;
  float x48_; // = 0.f;
  float x4c_; // = 0.f;
  float x50_; // = 8.f;
  float x54_;
  float x58_; // = 0.f;
  bool x5c_24_ : 1; // = false;
  bool x5c_25_ : 1; // = false;
  bool x5c_26_ : 1; // = false;
  bool x5c_27_ : 1; // = true;
  bool x5c_28_ : 1; // = false;

  void DrawVideo() const;
  void DrawText() const;
  static void DrawText(CGuiTextSupport&, const CVector3f& translation);
};

#endif // _CCREDITS
