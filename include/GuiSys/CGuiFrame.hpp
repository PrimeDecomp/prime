#ifndef _CGUIFRAME
#define _CGUIFRAME

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

private:
  char x0_pad[0x14];
  CGuiCamera* x14_camera;
};

#endif // _CGUIFRAME
