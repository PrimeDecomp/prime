#ifndef __CAABOX_HPP__
#define __CAABOX_HPP__

#include "Kyoto/Math/CVector3f.hpp"

class CAABox {
public:
  CAABox() {
    // TODO
  }

  static CAABox mskInvertedBox;
  static CAABox mskNullBox;

private:
  CVector3f min;
  CVector3f max;
};
CHECK_SIZEOF(CAABox, 0x18)

#endif // __CAABOX_HPP__
