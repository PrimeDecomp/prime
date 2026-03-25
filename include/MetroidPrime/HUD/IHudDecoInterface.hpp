#ifndef _IHUDDECOINTERFACE
#define _IHUDDECOINTERFACE

#include "types.h"

#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/string.hpp"

class CFinalInput;
class CStateManager;

class IHudDecoInterface {
public:
  virtual void SetIsVisibleDebug(bool v) = 0;
  virtual void SetIsVisibleGame(bool v) = 0;
  virtual void SetHudRotation(const CQuaternion& rot) = 0;
  virtual void SetHudOffset(const CVector3f& off) = 0;
  virtual void SetReticuleTransform(const CMatrix3f& xf);
  virtual void SetDecoRotation(float angle);
  virtual void SetDamageTransform(const CMatrix3f& rotation, const CVector3f& position) = 0;
  virtual void SetFrameColorValue(float v);
  virtual void Update(float dt, const CStateManager& mgr) = 0;
  virtual void Draw() const;
  virtual void ProcessInput(const CFinalInput& input);
  virtual void UpdateCameraDebugSettings(float fov, float y, float z) = 0;
  virtual void UpdateHudAlpha() = 0;
  virtual float GetMessageTextAlpha() const;
  virtual ~IHudDecoInterface();

  // Non-virtual defaults (blr)
  void SetDamageFlashMagnitude(float mag) {}
  void SetPlayerRotationZ(float rot) {}
  void SetLeadOrientation(const CMatrix3f& mtx) {}
  void SetTitleAlpha(float alpha) {}
  void SetTitle(const rstl::wstring& title) {}
};

#endif // _IHUDDECOINTERFACE
