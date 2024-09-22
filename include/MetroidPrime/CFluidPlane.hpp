#ifndef _CFLUIDPLANE
#define _CFLUIDPLANE

#include "MetroidPrime/CFluidUVMotion.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/optional_object.hpp"

class CScriptWater;
class CStateManager;
class CTexture;

extern "C" uint sub_8012f098();

class CFluidPlaneCPURender {
public:
  struct SPatchInfo {};
  struct SRippleInfo {};
  struct SHFieldSample {};
};

class CFluidPlane {
public:
  enum EFluidType {
    // TODO
  };

  CFluidPlane(uint, uint, uint, CFluidPlane::EFluidType, float, const CFluidUVMotion&);
  virtual ~CFluidPlane();
  virtual void AddRipple(float mag, TUniqueId rippler, const CVector3f& center, CScriptWater& water,
                         CStateManager& mgr);
  virtual void AddRipple(float intensity, TUniqueId rippler, const CVector3f& center,
                         const CVector3f& velocity, const CScriptWater& water, CStateManager& mgr,
                         const CVector3f& upVec);
  // Update__11CFluidPlaneFv

  float GetAlpha() const { return x40_alpha; }
  EFluidType GetFluidType() const { return x44_fluidType; }
  const CFluidUVMotion& GetUVMotion() const { return x4c_uvMotion; }
  // GetColorTexture__11CFluidPlaneCFv
  // HasColorTexture__11CFluidPlaneCFv
  // GetTexturePattern2__11CFluidPlaneCFv
  // HasTexturePattern2__11CFluidPlaneCFv
  // GetTexturePattern1__11CFluidPlaneCFv
  // HasTexturePattern1__11CFluidPlaneCFv

protected:
  virtual void RenderStripWithRipples(const CFluidPlaneCPURender::SHFieldSample& heights,
                                      const unsigned char& flags, float curY, int startYDiv,
                                      const CFluidPlaneCPURender::SPatchInfo& info);

  CAssetId x4_texPattern1Id;
  CAssetId x8_texPattern2Id;
  CAssetId xc_texColorId;
  rstl::optional_object< TLockedToken< CTexture > > x10_texPattern1;
  rstl::optional_object< TLockedToken< CTexture > > x20_texPattern2;
  rstl::optional_object< TLockedToken< CTexture > > x30_texColor;
  float x40_alpha;
  EFluidType x44_fluidType;
  float x48_rippleIntensity;
  CFluidUVMotion x4c_uvMotion;
};
CHECK_SIZEOF(CFluidPlane, 0xA0);

#endif // _CFLUIDPLANE
