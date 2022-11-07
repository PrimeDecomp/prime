#ifndef _CGUIWIDGET
#define _CGUIWIDGET

#include "GuiSys/CGuiObject.hpp"
#include "Kyoto/SObjectTag.hpp"

class CColor;
class CFinalInput;

enum ETraversalMode { kTM_ChildrenAndSiblings = 0, kTM_Children = 1, kTM_Single = 2 };

class CGuiWidget : public CGuiObject {
public:
  enum EGuiModelDrawFlags { kGMDF_Shadeless = 0, kGMDF_Opaque = 1, kGMDF_Alpha = 2, kGMDF_Additive = 3, kGMDF_AlphaAdditiveOverdraw = 4 };
  class CGuiWidgetParms {};

  void Update(float dt) override;
  void Draw(const CGuiWidgetDrawParms& drawParms) override;
  void Initialize() override;

  virtual void Reset(ETraversalMode mode);
  virtual void ProcessUserInput(const CFinalInput& input);
  virtual void Touch();
  virtual bool GetIsVisible() const;
  virtual bool GetIsActive() const;
  virtual bool GetMouseActive() const;
  virtual FourCC GetWidgetTypeID() const { return 'BWIG'; }
  virtual bool AddWorkerWidget(CGuiWidget* worker);
  virtual bool GetIsFinishedLoadingWidgetSpecific();
  virtual void OnVisibleChange();
  virtual void OnActiveChange();
  
  void SetColor(const CColor& color);
  void SetVisibility(bool visible, ETraversalMode mode);
  
private:
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


#endif // _CGUIWIDGET
