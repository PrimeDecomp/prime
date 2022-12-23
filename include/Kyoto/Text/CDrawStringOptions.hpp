#ifndef _CDRAWSTRINGOPTIONS
#define _CDRAWSTRINGOPTIONS

#include "Kyoto/Graphics/CColor.hpp"
#include "rstl/reserved_vector.hpp"

enum ETextDirection {
  kTD_Horizontal,
  kTD_Vertical,
};

enum EJustification {
  kJustification_Left = 0,
  kJustification_Center,
  kJustification_Right,
  kJustification_Full,
  kJustification_NLeft,
  kJustification_NCenter,
  kJustification_NRight,
  kJustification_LeftMono,
  kJustification_CenterMono,
  kJustification_RightMono,
};

enum EVerticalJustification {
  kVerticalJustification_Top = 0,
  kVerticalJustification_Center,
  kVerticalJustification_Bottom,
  kVerticalJustification_Full,
  kVerticalJustification_NTop,
  kVerticalJustification_NCenter,
  kVerticalJustification_NBottom,
  kVerticalJustification_TopMono,
  kVerticalJustification_CenterMono,
  kVerticalJustification_RightMono,
};


class CDrawStringOptions {
public:
  CDrawStringOptions();

  void SetTextDirection(ETextDirection dir) { x0_direction = dir; }
private:
  ETextDirection x0_direction;
  rstl::reserved_vector<u32, 16> x4_colors;
};

#endif // _CDRAWSTRINGOPTIONS
