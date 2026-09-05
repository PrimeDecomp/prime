#include "GuiSys/CGuiTextPane.hpp"

#include "Kyoto/CSimplePool.hpp"

CGuiWidget* CGuiTextPane::Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp) {
  const CGuiWidgetParms parms = ReadWidgetHeader(frame, in);
  float dimX = in.Get< float >();
  float dimY = in.Get< float >();
  CVector3f vec(in);
  int fontId = in.Get< uint >();
  bool wordWrap = in.Get< bool >();
  bool horizontal = in.Get< bool >();
  EJustification justification = static_cast< EJustification >(in.Get< int >());
  EVerticalJustification vJustification = static_cast< EVerticalJustification >(in.Get< int >());
  CColor fontCol(in);
  CColor outlineColor(in);
  int extentX = in.Get< float >();
  int extentY = in.Get< float >();
  const CGuiTextProperties props(wordWrap, horizontal, justification, vJustification, nullptr);
  CGuiTextPane* ret = rs_new CGuiTextPane(parms, sp, dimX, dimY, vec, fontId, props, fontCol,
                                          outlineColor, extentX, extentY);
  ret->ParseBaseInfo(frame, in, parms);
  ret->InitializeBuffers();
  ret->TextSupport().SetText(rstl::string_l(""));
  return ret;
}

CGuiTextPane::CGuiTextPane(const CGuiWidgetParms& parms, CSimplePool* sp, const float dimX,
                           const float dimY, const CVector3f& vec, const int fontId,
                           const CGuiTextProperties& props, const CColor& col1, const CColor& col2,
                           const int padX, const int padY)
: CGuiPane(parms, dimX, dimY, vec)
, xd4_textSupport(fontId, props, col1, col2, CColor::White(), padX, padY, sp){}

CGuiTextPane::~CGuiTextPane(){}