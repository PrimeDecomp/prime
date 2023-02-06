#ifndef _CSCRIPTPROJECTEDSHADOW
#define _CSCRIPTPROJECTEDSHADOW

#include "MetroidPrime/CActor.hpp"

#include "rstl/single_ptr.hpp"

class CProjectedShadow;

class CScriptShadowProjector : public CActor {
public:
  CScriptShadowProjector(TUniqueId, const rstl::string&, const CEntityInfo&, const CTransform4f&,
                         bool, const CVector3f&, bool, float, float, float, float, int);

  void Accept(IVisitor& visitor);
  void Think(float, CStateManager&);
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  void PreRender(CStateManager&, const CFrustumPlanes&);
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  void CreateProjectedShadow();

  uchar GetPersistent() const { return x110_24_persistent; }

private:
  float xe8_scale;
  CVector3f xec_offset;
  float xf8_zOffsetAdjust;
  float xfc_opacity;
  float x100_opacityRecip;
  TUniqueId x104_target;
  rstl::single_ptr< CProjectedShadow > x108_projectedShadow;
  uint x10c_textureSize;
  uchar x110_24_persistent : 1;
  bool x110_25_shadowInvalidated : 1;
};

#endif // _CSCRIPTPROJECTEDSHADOW
