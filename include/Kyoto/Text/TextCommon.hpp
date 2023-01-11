#ifndef _TEXTCOMMON
#define _TEXTCOMMON

enum EColorType {

};

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

#endif // _TEXTCOMMON
