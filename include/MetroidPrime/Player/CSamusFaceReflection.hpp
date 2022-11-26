#ifndef _CSAMUSFACEREFLECTION
#define _CSAMUSFACEREFLECTION

#include "MetroidPrime/CModelData.hpp"

#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/single_ptr.hpp"

class CStateManager;
class CRandom16;
class CActorLights;

class CSamusFaceReflection {

public:
  explicit CSamusFaceReflection(const CStateManager& stateMgr);
  void PreDraw(const CStateManager& stateMgr);
  void Draw(const CStateManager& stateMgr) const;
  void Update(float dt, const CStateManager& stateMgr, CRandom16& rand);

private:
  CModelData x0_modelData;
  rstl::single_ptr< CActorLights > x4c_lights;
  CQuaternion x50_lookRot;
  CVector3f x60_lookDir;
  int x6c_;
  bool x70_hidden;
};


#endif // _CSAMUSFACEREFLECTION
