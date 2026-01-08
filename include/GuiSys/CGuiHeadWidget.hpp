#ifndef _CGUIHEADWIDGET
#define _CGUIHEADWIDGET
#include "GuiSys/CGuiWidget.hpp"

class CGuiHeadWidget : public CGuiWidget {
public:
  static CGuiWidget* Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp);
  CGuiHeadWidget(const CGuiWidgetParms& parms);

  FourCC GetWidgetTypeID() const { return 'HWIG'; }
};
#endif // _CGUIHEADWIDGET
