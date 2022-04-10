#ifndef _CCUBERENDERER_HPP
#define _CCUBERENDERER_HPP

#include "types.h"

class CCubeRenderer {
public:
  virtual void BeginScene();
  virtual void EndScene();
};

extern CCubeRenderer* gpRender;

#endif
