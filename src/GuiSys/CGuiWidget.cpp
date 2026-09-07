#include "GuiSys/CGuiWidget.hpp"
#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"

#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "stdio.h"

const short CGuiWidget::gkDummyWidgetID = 0;
const short CGuiWidget::gkInvalidWidgetId = -1;

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
  const short& selfId = frame->WidgetIdDB().AddWidget(name);
  rstl::string parent(in);
  const short& parentId = frame->WidgetIdDB().AddWidget(parent);

  bool useAnimController = in.ReadBool();
  bool defaultVis = in.Get< bool >();
  bool defaultActive = in.Get< bool >();
  bool cullFaces = in.Get< bool >();
  CColor color(in);
  EGuiModelDrawFlags flags = static_cast< EGuiModelDrawFlags >(in.Get< uint >());

  return CGuiWidgetParms(frame, useAnimController, selfId, parentId, defaultVis, defaultActive,
                         cullFaces, color, flags, true, false);
}

CGuiWidget::CGuiWidget(const CGuiWidgetParms& parms)
: x70_selfId(parms.x6_selfId)
, x72_parentId(parms.x8_parentId)
, x74_transform(CTransform4f::Identity())
, xa4_color(parms.x10_color)
, xa8_color2(xa4_color)
, xac_drawFlags(parms.x14_drawFlags)
, xb0_frame(parms.x0_frame)
, xb4_workerId(-1)
, xb6_24_pg(parms.xd_g)
, xb6_25_isVisible(parms.xa_defaultVisible)
, xb6_26_isActive(parms.xb_defaultActive)
, xb6_27_isSelectable(true)
, xb6_28_eventLock(false)
, xb6_29_cullFaces(parms.xc_cullFaces)
, xb6_30_depthGreater(false)
, xb6_31_depthTest(true)
, xb7_24_depthWrite(false)
, xb7_25_(true) {
  RecalcWidgetColor(kTM_Single);
}

CGuiWidget::~CGuiWidget() { xb0_frame->RemoveWidgetFromDrawList(this); }

void CGuiWidget::ParseBaseInfo(CGuiFrame* frame, CInputStream& in, const CGuiWidgetParms& parms) {
  CGuiWidget* parent = frame->FindWidget(parms.x8_parentId);
  bool isWorker = in.ReadBool();
  if (isWorker) {
    xb4_workerId = in.ReadShort();
  }
  CVector3f translation(in);
  CMatrix3f orientation(in);
  const CTransform4f transform(orientation, translation);
  x74_transform = transform;
  ReapplyXform();
  CVector3f unused(in);
  ReadUnusedThing(in);
  in.ReadShort();
  if (isWorker) {
    if (!parent->AddWorkerWidget(this)) {
      printf("Warning: Discarding useless worker id.  Parent is not a compound widget.");
      xb4_workerId = -1;
    }
  }
  parent->AddChildWidget(this, false, true);
}

void CGuiWidget::ReadUnusedThing(CInputStream& in) { in.ReadLong(); }

void CGuiWidget::Draw(const CGuiWidgetDrawParms&) const {}

void CGuiWidget::ProcessUserInput(const CFinalInput&) {}

void CGuiWidget::Update(float dt) {
  if (ChildObject()) {
    ChildObject()->Update(dt);
  }
  if (NextSibling()) {
    NextSibling()->Update(dt);
  }
}

void CGuiWidget::InitializeRecursive() {
  Initialize();
  if (ChildObject()) {
    static_cast< CGuiWidget* >(ChildObject())->InitializeRecursive();
  }
  if (NextSibling()) {
    static_cast< CGuiWidget* >(NextSibling())->InitializeRecursive();
  }
}

bool CGuiWidget::GetIsFinishedLoading() const { return GetIsFinishedLoadingWidgetSpecific(); }

CGuiWidget* CGuiWidget::FindWidget(short id) {
  if (x70_selfId == id) {
    return this;
  }
  if (ChildObject()) {
    CGuiWidget* found = static_cast< CGuiWidget* >(ChildObject())->FindWidget(id);
    if (found) {
      return found;
    }
  }
  if (NextSibling()) {
    CGuiWidget* found = static_cast< CGuiWidget* >(NextSibling())->FindWidget(id);
    if (found) {
      return found;
    }
  }
  return nullptr;
}

void CGuiWidget::SetColor(const CColor& color) {
  xa4_color = color;
  RecalcWidgetColor(kTM_Children);
}

void CGuiWidget::RecalcWidgetColor(ETraversalMode mode) {
  CGuiWidget* parent = static_cast< CGuiWidget* >(Parent());
  if (parent) {
    xa8_color2 = CColor::Modulate(xa4_color, parent->GetModifiedColor());
  } else {
    xa8_color2 = xa4_color;
  }
  switch (mode) {
  case kTM_Single:
    break;
  case kTM_ChildrenAndSiblings:
    if (NextSibling()) {
      static_cast< CGuiWidget* >(NextSibling())->RecalcWidgetColor(kTM_ChildrenAndSiblings);
    }
  case kTM_Children:
    if (ChildObject()) {
      static_cast< CGuiWidget* >(ChildObject())->RecalcWidgetColor(kTM_ChildrenAndSiblings);
    }
    break;
  }
}

void CGuiWidget::SetVisibility(const bool visible, ETraversalMode mode) {
  switch (mode) {
  case kTM_Single:
    break;
  case kTM_Children:
    if (ChildObject()) {
      static_cast< CGuiWidget* >(ChildObject())->SetVisibility(visible, kTM_ChildrenAndSiblings);
    }
    break;
  case kTM_ChildrenAndSiblings:
    if (ChildObject()) {
      static_cast< CGuiWidget* >(ChildObject())->SetVisibility(visible, kTM_ChildrenAndSiblings);
    }
    if (NextSibling()) {
      static_cast< CGuiWidget* >(NextSibling())->SetVisibility(visible, kTM_ChildrenAndSiblings);
    }
    break;
  }
  SetIsVisible(visible);
}

void CGuiWidget::AddChildWidget(CGuiWidget* widget, bool makeWorldLocal, bool atEnd) {
  AddChildObject(widget, makeWorldLocal, atEnd);
}

CVector3f CGuiWidget::GetIdlePosition() const {
  return CVector3f(x74_transform.Get03(), x74_transform.Get13(), x74_transform.Get23());
}

void CGuiWidget::ReapplyXform() {
  RotateReset();
  SetLocalPosition(CVector3f::Zero());
  MultiplyO2P(x74_transform);
}

void CGuiWidget::SetIsVisible(const bool visible) {
  xb6_25_isVisible = visible;
  OnVisible();
}

void CGuiWidget::SetIsActive(const bool active) {
  if (xb6_26_isActive != active) {
    xb6_26_isActive = active;
    OnActivate();
  }
}

void CGuiWidget::OnVisible() {}

void CGuiWidget::OnActivate() {}
