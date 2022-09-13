#ifndef _RENDERER_HPP
#define _RENDERER_HPP

#include "types.h"

class IRenderer {
public:
  enum EDrawableSorting {
    kDS_SortedCallback,
    kDS_UnsortedCallback,
  };

  virtual ~IRenderer();
  // TODO vtable
};

class COsContext;
class CMemorySys;
class CResFactory;

namespace Renderer {
IRenderer* AllocateRenderer(IObjectStore&, COsContext&, CMemorySys&, CResFactory&);
};

#endif