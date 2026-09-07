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
class CSimplePool;
class CGuiFrame {
public:
  CGuiFrame(uint id, CGuiSys& sys, int a, int b, int c, CSimplePool* sp);
  ~CGuiFrame();
  static CGuiFrame* CreateFrame(uint id, CGuiSys& sys, CInputStream& in, CSimplePool* sp);
  int LoadWidgetsInGame(CInputStream& in, CSimplePool* sp);
  void Initialize();
  void Touch() const;
  void SortDrawOrder();
  CGuiLight* GetFrameLight(int idx);
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
  rstl::vector< CGuiWidget* > x2c_widgets;
  rstl::vector< CGuiLight* > x3c_lights;
  int x4c_a;
  int x50_b;
  int x54_c;
  mutable bool x58_24_loaded : 1;
};
CHECK_SIZEOF(CGuiFrame, 0x5c);

#endif // _CGUIFRAME
