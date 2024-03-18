#ifndef _CPATHCAMERA
#define _CPATHCAMERA

#include "MetroidPrime/Cameras/CCameraSpline.hpp"
#include "MetroidPrime/Cameras/CGameCamera.hpp"

class CPathCamera : public CGameCamera {
public:
  enum EInitialSplinePosition {
    kISP_BallCamBasis,
    kISP_Negative,
    kISP_Positive,
    kISP_ClampBasis,
  };

  CPathCamera(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
              const CTransform4f& xf, bool active, float lengthExtent, float filterMag,
              float filterProportion, float minEaseDist, float maxEaseDist, u32 flags,
              EInitialSplinePosition initPos);
  ~CPathCamera();

  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr) override;
  void Think(float dt, CStateManager& mgr) override;
  void Render(const CStateManager& mgr) const override;
  void ProcessInput(const CFinalInput& input, CStateManager& mgr) override;
  void Reset(const CTransform4f& xf, CStateManager& mgr) override;
  CTransform4f MoveAlongSpline(float dt, CStateManager& mgr);
  void ClampToClosedDoor(CStateManager& mgr);

private:
  CCameraSpline x188_spline;
  float x1d4_pos;
  float x1d8_time;
  float x1dc_lengthExtent;
  float x1e0_filterMag;
  float x1e4_filterProportion;
  EInitialSplinePosition x1e8_initPos;
  u32 x1ec_flags;
  float x1f0_minEaseDist;
  float x1f4_maxEaseDist;
};

#endif // _CPATHCAMERA
