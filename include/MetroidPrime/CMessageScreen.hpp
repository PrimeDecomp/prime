#ifndef _CMESSAGESCREEN
#define _CMESSAGESCREEN

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

class CFinalInput;
class CGuiFrame;
class CGuiModel;
class CGuiTextPane;
class CGuiWidget;
class CStringTable;

class CMessageScreen {
public:
  CMessageScreen(CAssetId msg, float time);
  void ProcessControllerInput(const CFinalInput& input);
  bool Update(float dt, float blurAmt);
  void Draw() const;

private:
  TCachedToken< CStringTable > x0_msg;
  TCachedToken< CGuiFrame > xc_msgScreen;
  CGuiFrame* x18_loadedMsgScreen;
  CGuiTextPane* x1c_textpane_message;
  CGuiWidget* x20_basewidget_top;
  CGuiWidget* x24_basewidget_center;
  CGuiWidget* x28_basewidget_bottom;
  CGuiModel* x2c_model_abutton;
  CGuiModel* x30_model_top;
  CGuiModel* x34_model_center;
  CGuiModel* x38_model_bottom;
  CGuiModel* x3c_model_bg;
  CGuiModel* x40_model_videoband;
  CVector3f x44_topPos;
  CVector3f x50_bottomPos;
  CVector3f x5c_videoBandPos;
  float x68_videoBandOffset;
  uint x6c_page;
  float x70_blurAmt;
  float x74_delayTime;
  bool x78_24_exit : 1;
};
CHECK_SIZEOF(CMessageScreen, 0x7c)

#endif
