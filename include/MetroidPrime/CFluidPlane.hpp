#ifndef _CFLUIDPLANE
#define _CFLUIDPLANE

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CVector3f.hpp"

class CScriptWater;
class CStateManager;

extern "C" uint sub_8012f098();

class CFluidPlaneCPURender {
public:
  struct SPatchInfo {};
  struct SRippleInfo {};
  struct SHFieldSample {};
};

class CFluidPlane {

public:
  virtual ~CFluidPlane();

  virtual void AddRipple(float mag, TUniqueId rippler, const CVector3f& center, CScriptWater& water,
                         CStateManager& mgr);
  virtual void AddRipple(float intensity, TUniqueId rippler, const CVector3f& center,
                         const CVector3f& velocity, const CScriptWater& water, CStateManager& mgr,
                         const CVector3f& upVec);

protected:
  virtual void RenderStripWithRipples(const CFluidPlaneCPURender::SHFieldSample& heights,
                                      const unsigned char& flags, float curY, int startYDiv,
                                      const CFluidPlaneCPURender::SPatchInfo& info);

};

#endif // _CFLUIDPLANE
