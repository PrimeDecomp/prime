#ifndef _CGUIWIDGET
#define _CGUIWIDGET

#include "GuiSys/CGuiObject.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/SObjectTag.hpp"

#include "rstl/string.hpp"

class CFinalInput;
class CGuiFrame;

enum ETraversalMode {
  kTM_ChildrenAndSiblings = 0,
  kTM_Children = 1,
  kTM_Single = 2,
};

class CGuiWidget : public CGuiObject {
public:
  enum EGuiModelDrawFlags {
    kGMDF_Shadeless = 0,
    kGMDF_Opaque = 1,
    kGMDF_Alpha = 2,
    kGMDF_Additive = 3,
    kGMDF_AlphaAdditiveOverdraw = 4
  };
  class CGuiWidgetParms {
  public:
    CGuiWidgetParms(CGuiFrame*, const rstl::string&, bool, short, short, bool, bool, bool,
                    const CColor&, CGuiWidget::EGuiModelDrawFlags, bool, bool);
    CGuiFrame* x0_frame;
    bool x4_useAnimController;
    short x6_selfId;
    short x8_parentId;
    bool xa_defaultVisible;
    bool xb_defaultActive;
    bool xc_cullFaces;
    bool xd_g;
    bool xe_h;
    CColor x10_color;
    EGuiModelDrawFlags x14_drawFlags;
  };

  CGuiWidget(const CGuiWidgetParms& parms);
  ~CGuiWidget();
  void Update(float dt);
  void Draw(const CGuiWidgetDrawParms& drawParms) const;
  void Initialize();
  virtual void ProcessUserInput(const CFinalInput& input);
  virtual void Touch() const;
  virtual bool GetIsVisible() const;
  virtual bool GetIsActive() const;
  virtual FourCC GetWidgetTypeID() const { return 'BWIG'; }
  virtual bool AddWorkerWidget(CGuiWidget* worker);
  virtual bool GetIsFinishedLoadingWidgetSpecific() const;
  virtual void OnVisible();
  virtual void OnActivate();
  short GetWorkerId() const { return xb4_workerId; }

  void SetIsVisible(bool visible);
  void SetColor(const CColor& color);
  const CColor& GetColor() const { return xa4_color; }
  void SetVisibility(bool visible, ETraversalMode mode);
  void ParseBaseInfo(CGuiFrame* frame, CInputStream& in, const CGuiWidgetParms& parms);

  static CGuiWidgetParms ReadWidgetHeader(CGuiFrame* frame, CInputStream& in);

  CGuiFrame* GetFrame() { return xb0_frame; }

  static const short InvalidWidgetId() { return gkInvalidWidgetId; }
private:
  static const short gkInvalidWidgetId;
  short x70_selfId;
  short x72_parentId;
  CTransform4f x74_transform;
  CColor xa4_color;
  CColor xa8_color2;
  EGuiModelDrawFlags xac_drawFlags;
  CGuiFrame* xb0_frame;
  short xb4_workerId;
  bool xb6_24_pg : 1;
  bool xb6_25_isVisible : 1;
  bool xb6_26_isActive : 1;
  bool xb6_27_isSelectable : 1;
  bool xb6_28_eventLock : 1;
  bool xb6_29_cullFaces : 1;
  bool xb6_30_depthGreater : 1;
  bool xb6_31_depthTest : 1;
  bool xb7_24_depthWrite : 1;
  bool xb7_25_ : 1;
};
CHECK_SIZEOF(CGuiWidget, 0xb8)

CGuiWidget* FGuiWidgetFactoryInGame(uint type, CGuiFrame* parent, CInputStream& in);

#endif // _CGUIWIDGET
