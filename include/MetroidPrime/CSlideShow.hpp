#ifndef _CSLIDESHOW
#define _CSLIDESHOW

#include "MetroidPrime/CIOWin.hpp"

class CSlideShow : public CIOWin {
public:
  CSlideShow();

  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
  bool GetIsContinueDraw() const override;
  void Draw() const override;

  static uint SlideShowGalleryFlags();

private:
  u8 x14_pad[0x138 - 0x14];
};
CHECK_SIZEOF(CSlideShow, 0x138)

#endif // _CSLIDESHOW
