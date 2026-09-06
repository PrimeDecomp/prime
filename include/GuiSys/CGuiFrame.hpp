#ifndef _CGUIFRAME
#define _CGUIFRAME

#include "GuiSys/CGuiWidgetIdDB.hpp"
#include "rstl/string.hpp"

class CFinalInput;
class CGuiSys;
class CGuiWidget;
class CGuiCamera;
class CGuiLight;
class CGuiHeadWidget;
class CGuiWidgetDrawParms;
class CGuiFrame {
public:
  void Update(float dt);
  void Draw(const CGuiWidgetDrawParms& parms) const;
  void ProcessUserInput(const CFinalInput& input);
  CGuiWidget* FindWidget(const short id) const;
  CGuiWidget* FindWidget(const char* name) const;
  CGuiWidget* FindWidget(const rstl::string& name) const;
  bool GetIsFinishedLoading() const;

  CGuiCamera* GetFrameCamera() const { return x14_camera; }
  void SetFrameCamera(CGuiCamera* camera);
  void AddLight(CGuiLight* light);
  void RemoveLight(CGuiLight* light);
  void SetHeadWidget(CGuiHeadWidget* widget);
  void RemoveWidgetFromDrawList(CGuiWidget* widget);

  CGuiWidgetIdDB& WidgetIdDB() { return x18_db; }

  CGuiSys& GetGuiSys() const { return x8_guiSys; }

  void EnableLights(uint mask) const;
  void DisableLights() const;

private:
  uint x0_id;
  uint x4_;
  CGuiSys& x8_guiSys;
  CGuiHeadWidget* xc_headWidget;
  CGuiWidget* x10_rootWidget;
  CGuiCamera* x14_camera;
  CGuiWidgetIdDB x18_db;
};

#endif // _CGUIFRAME
