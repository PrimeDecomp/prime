#ifndef _CFLUIDPLANEDOOR
#define _CFLUIDPLANEDOOR

#include "MetroidPrime/CFluidPlaneManager.hpp"

class CFluidPlaneDoor : public CFluidPlane {
public:
  CFluidPlaneDoor(CAssetId texPattern1, CAssetId texPattern2, CAssetId texColor, float tileSize,
                  uint tileSubdivisions, EFluidType type, float alpha,
                  const CFluidUVMotion& uvMotion);
  ~CFluidPlaneDoor() override;

  void RenderSetup(const CStateManager& mgr, float alpha, const CTransform4f& xf,
                   const CAABox& bounds) const;
  void AddRipple(const float mag, const TUniqueId rippler, const CVector3f& center,
                 const CScriptWater& water, CStateManager& mgr) override {}
  void AddRipple(float intensity, TUniqueId rippler, const CVector3f& center,
                 const CVector3f& velocity, const CScriptWater& water, CStateManager& mgr,
                 const CVector3f& upVec) override {}
  void AddRipple(const CRipple& ripple, const CScriptWater& water, CStateManager& mgr) override {}
  void Update() override;
  void Render(const CStateManager& mgr, const CAABox&, const CFrustumPlanes&, const CRippleManager&,
              const CVector3f&) override;

  void RenderCleanup() const;

private:
  float xa0_tileSize;
  int xa4_tileSubdivisions;
  float xa8_rippleResolution;
};

#endif // _CFLUIDPLANEDOOR
