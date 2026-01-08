#include "GuiSys/CAuiImagePane.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

#include <Kyoto/Streams/CInputStream.hpp>
CGuiWidget* CAuiImagePane::Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp) {
  CGuiWidgetParms parms = ReadWidgetHeader(frame, in);
  in.ReadLong();
  in.ReadLong();
  in.ReadLong();
  rstl::reserved_vector< CVector3f, 4 > coords(in);
  rstl::reserved_vector< CVector2f, 4 > uvs(in);
  CAuiImagePane* widget =
      rs_new CAuiImagePane(parms, sp, kInvalidAssetId, kInvalidAssetId, coords, uvs, true);
  widget->ParseBaseInfo(frame, in, parms);
  return widget;
}

void CAuiImagePane::WriteData(COutputStream& out, bool) const {
  out.Put(xc8_tex0);
  out.Put(xcc_tex1);
  out.Put(static_cast< int >(GetDrawFlags()));
  out.Put(xe0_coords);
  x114_coords.PutTo(out);
}
