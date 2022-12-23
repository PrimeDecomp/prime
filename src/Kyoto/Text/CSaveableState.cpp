#include "Kyoto/Text/CSaveableState.hpp"

CSaveableState::CSaveableState()
: x54_colors(3, CTextColor(0, 0, 0, 255))
, x64_colorOverrides(16, false)
, x74_lineSpacing(1.f)
, x78_extraLineSpacing(0)
, x7c_enableWordWrap(false)
, x80_just(kJustification_Left)
, x84_vjust(kVerticalJustification_Top) {}

bool CSaveableState::IsFinishedLoading() {
  if (x48_font) {
    TToken< CRasterFont > font(x48_font.data());
    return font.IsLoaded() && font.GetT()->IsFinishedLoading();
  }

  return false;
}
