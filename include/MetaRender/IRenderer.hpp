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
  
  virtual void AddStaticGeometry();
  virtual void EnablePVS();
  virtual void DisablePVS();
  virtual void RemoveStaticGeometry();
  virtual void DrawUnsortedGeometry();
  virtual void DrawSortedGeometry();
  virtual void DrawStaticGeometry();
  virtual void DrawAreaGeometry();
  virtual void PostRenderFogs();
  virtual void SetModelMatrix(const CTransform4f& xf);
  virtual void AddParticleGen(const CParticleGen& gen);
};

class IObjectStore;
class COsContext;
class CMemorySys;
class CResFactory;

namespace Renderer {
IRenderer* AllocateRenderer(IObjectStore&, COsContext&, CMemorySys&, CResFactory&);
}; // namespace Renderer

#endif // _IRENDERER
