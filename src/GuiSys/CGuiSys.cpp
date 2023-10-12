#include "GuiSys/CGuiSys.hpp"

#include "GuiSys/CGuiTextSupport.hpp"
#include "GuiSys/CGuiWidget.hpp"
#include "Kyoto/Text/CTextExecuteBuffer.hpp"
#include "Kyoto/Text/CTextParser.hpp"

CGuiSys* CGuiSys::spGuiSys = nullptr;

CGuiSys::CGuiSys(IFactory* factory, CSimplePool* pool, EUsageMode mode)
: x0_resFactory(factory), x4_resStore(pool), x8_mode(mode) {
  AddFactories(x8_mode);
  xc_textExecuteBuffer = rs_new CTextExecuteBuffer();
  x10_textParser = rs_new CTextParser(*pool);

  CGuiTextSupport::Initialize(xc_textExecuteBuffer.get(), x10_textParser.get());
}

CGuiSys::~CGuiSys() {}

CGuiWidget* CGuiSys::CreateWidgetInGame(FourCC type, CInputStream& in, CGuiFrame* parent) {
  return FGuiWidgetFactoryInGame(type, parent, in);
}

void CGuiSys::AddFactories(EUsageMode mode) {}
