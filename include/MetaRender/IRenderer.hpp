#ifndef _IRENDERER
#define _IRENDERER

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

class IObjectStore;
class COsContext;
class CMemorySys;
class CResFactory;

namespace Renderer {
IRenderer* AllocateRenderer(IObjectStore&, COsContext&, CMemorySys&, CResFactory&);
}; // namespace Renderer

#endif // _IRENDERER
