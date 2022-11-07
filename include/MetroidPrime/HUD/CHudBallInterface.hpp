#ifndef _CHUDBALLINTERFACE
#define _CHUDBALLINTERFACE

#include "Kyoto/Math/CVector3f.hpp"
#include "rstl/reserved_vector.hpp"

class CGuiCamera;
class CGuiFrame;
class CGuiModel;
class CGuiTextPane;
class CGuiWidget;

class CHudBallInterface {
public:
  CHudBallInterface(CGuiFrame& selHud, int pbAmount, int pbCapacity, int availableBombs, bool hasBombs, bool hasPb);
  void SetBombParams(int pbAmount, int pbCapacity, int availableBombs, bool hasBombs, bool hasPb, bool init);
  void SetBallModeFactor(float t);

  private:
  
  CGuiCamera* x0_camera;
  CGuiWidget* x4_basewidget_bombstuff;
  CGuiWidget* x8_basewidget_bombdeco;
  CGuiModel* xc_model_bombicon;
  CGuiTextPane* x10_textpane_bombdigits;
  rstl::reserved_vector<CGuiWidget*, 3> x14_group_bombfilled;
  rstl::reserved_vector<CGuiWidget*, 3> x24_group_bombempty;
  CVector3f x34_camPos;
  int x40_pbAmount;
  int x44_pbCapacity;
  int x48_availableBombs;
  bool x4c_hasPb;
  void UpdatePowerBombReadoutColors();
};

#endif // _CHUDBALLINTERFACE
