#ifndef _CGUIFRAME
#define _CGUIFRAME

#include "GuiSys/CGuiWidgetIdDB.hpp"
#include "rstl/string.hpp"

class CGuiWidget;
class CGuiCamera;
class CGuiLight;
class CGuiFrame {
public:
  CGuiWidget* FindWidget(const char* name) const;
  CGuiWidget* FindWidget(const rstl::string& name) const;

  CGuiCamera* GetFrameCamera() const { return x14_camera; }
  void AddLight(CGuiLight* light);
  void RemoveLight(CGuiLight* light);

  CGuiWidgetIdDB& WidgetIdDB() { return x18_db; }

private:
  char x0_[0x14];
  CGuiCamera* x14_camera;
  CGuiWidgetIdDB x18_db;
};

#endif // _CGUIFRAME
