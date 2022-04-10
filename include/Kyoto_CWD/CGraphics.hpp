#ifndef _CGRAPHICS_HPP
#define _CGRAPHICS_HPP

#include "types.h"

class CGraphics {
public:
  static void SetIsBeginSceneClearFb(bool);
  static void BeginScene();
  static void EndScene();
};

#endif
