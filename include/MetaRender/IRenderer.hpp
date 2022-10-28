#ifndef _IRENDERER
#define _IRENDERER

#include "types.h"
#include "rstl/pair.hpp"

class CTransform4f;
class CParticleGen;
class IObjectStore;
class COsContext;
class CMemorySys;
class CResFactory;
class CAABox;
class CVector2f;
class CVector3f;

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
  virtual void AddParticleGen2();
  virtual void AddPlaneObject();
  virtual void AddDrawable(const void* obj, const CVector3f& pos, const CAABox& bounds, int mode,
                           IRenderer::EDrawableSorting sorting);
  virtual void SetDrawableCallback();
  virtual void SetWorldViewpoint();
  virtual void SetPerspective1();
  virtual void SetPerspective2();
  virtual rstl::pair< CVector2f, CVector2f > SetViewportOrtho(bool centered, float znear,
                                                              float zfar);
  virtual void SetClippingPlanes();
  virtual void SetViewport();
  virtual void SetDepthReadWrite(bool read, bool update);
  virtual void SetBlendMode_AdditiveAlpha();
  virtual void SetBlendMode_AlphaBlended();
  virtual void SetBlendMode_NoColorWrite();
  virtual void SetBlendMode_ColorMultiply();
  virtual void SetBlendMode_InvertDst();
  virtual void SetBlendMode_InvertSrc();
  virtual void SetBlendMode_AdditiveDestColor();
};

namespace Renderer {
IRenderer* AllocateRenderer(IObjectStore&, COsContext&, CMemorySys&, CResFactory&);
}; // namespace Renderer

#endif // _IRENDERER
