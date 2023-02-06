#ifndef _CHUDBILLBOARDEFFECT
#define _CHUDBILLBOARDEFFECT

#include "MetroidPrime/CEffect.hpp"

class CGenDescription ;
class CElectricDescription;
class CParticleGen;

class CHUDBillboardEffect : public CEffect {
public:
  CHUDBillboardEffect(const rstl::optional_object< TToken< CGenDescription > >& particle,
                      const rstl::optional_object< TToken< CElectricDescription > >& electric,
                      TUniqueId uid, bool active, const rstl::string& name, float dist,
                      const CVector3f& scale0, const CColor& color, const CVector3f& scale1,
                      const CVector3f& translation);
  ~CHUDBillboardEffect() override;

  void Accept(IVisitor& visitor) override;
  void Think(float dt, CStateManager& mgr) override;
  void PreRender(CStateManager& mgr, const CFrustumPlanes& frustum) override;
  void AddToRenderer(const CFrustumPlanes& frustum, const CStateManager& mgr) const override;
  void Render(const CStateManager& mgr) const override;
  bool IsElementGen() const { return x104_26_isElementGen; }
  void SetRunIndefinitely(bool b) { x104_27_runIndefinitely = b; }
  CParticleGen* GetParticleGen() const { return xe8_generator.get(); }

  static float GetNearClipDistance(const CStateManager& mgr);
  static const CVector3f& GetScaleForPOV(const CStateManager& mgr);

private:
  rstl::single_ptr< CParticleGen > xe8_generator;
  CVector3f xec_translation;
  CVector3f xf8_localScale;
  bool x104_24_renderAsParticleGen : 1l; // = true;
  bool x104_25_enableRender : 1l; // = false;
  bool x104_26_isElementGen : 1l; // = false;
  bool x104_27_runIndefinitely : 1l; // = false;
  float x108_timeoutTimer; // = 0.f;

  static int g_IndirectTexturedBillboardCount;
  static int g_BillboardCount;

  static float CalcGenRate();
};

#endif // _CHUDBILLBOARDEFFECT
