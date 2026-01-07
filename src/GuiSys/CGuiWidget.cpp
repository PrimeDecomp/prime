#include "GuiSys/CGuiWidget.hpp"
#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"

#include <Kyoto/Streams/CInputStream.hpp>

static const char* tmp = "Warning: Discarding useless worker id.  Parent is not a compound widget.";

CGuiWidget::CGuiWidgetParms::CGuiWidgetParms(CGuiFrame* frame, bool useAnimController,
                                             const short selfId, const short parentId,
                                             const bool defaultVisible, const bool defaultActive,
                                             const bool cullFaces, const CColor& color,
                                             EGuiModelDrawFlags drawFlags, const bool g,
                                             const bool h)
: x0_frame(frame)
, x4_useAnimController(useAnimController)
, x6_selfId(selfId)
, x8_parentId(parentId)
, xa_defaultVisible(defaultVisible)
, xb_defaultActive(defaultActive)
, xc_cullFaces(cullFaces)
, xd_g(g)
, xe_h(h)
, x10_color(color)
, x14_drawFlags(drawFlags) {}

CGuiWidget* CGuiWidget::Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp) {
  CGuiWidgetParms parms = ReadWidgetHeader(frame, in);
  CGuiWidget* ret = rs_new CGuiWidget(parms);
  ret->ParseBaseInfo(frame, in, parms);
  return ret;
}

CGuiWidget::CGuiWidgetParms CGuiWidget::ReadWidgetHeader(CGuiFrame* frame, CInputStream& in) {
  rstl::string name(in);
  const short selfId = frame->WidgetIdDB().AddWidget(name);
  rstl::string parent(in);
  const short parentId = frame->WidgetIdDB().AddWidget(parent);

  bool useAnimController = in.Get< bool >();
  bool defaultVis = in.Get< bool >();
  bool defaultActive = in.Get< bool >();
  bool cullFaces = in.Get< bool >();
  CColor color(in);
  EGuiModelDrawFlags flags = static_cast< EGuiModelDrawFlags >(in.Get< uint >());

  return CGuiWidgetParms(frame, useAnimController, selfId, parentId, defaultVis, defaultActive,
                         cullFaces, color, flags, true, false);
}
