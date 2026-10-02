#ifndef _CAIMINGCURSOR
#define _CAIMINGCURSOR

#include "types.h"

#include "Collision/CRayCastResult.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "MetroidPrime/TGameTypes.hpp"

class CFinalInput;
class CStateManager;

class CAimingCursor {
public:
  CAimingCursor(bool reservedFlag, uint reservedValue);

  CVector3f GetCursorOrbitPosition(const CStateManager& mgr) const;
  void UpdateAlpha(const CFinalInput& input, float dt, const CStateManager& mgr);
  void UpdateValidity(const CFinalInput& input, float dt, const CStateManager& mgr);
  bool CheckZeroCursorPosition(const CStateManager& mgr) const;
  void Update(const CFinalInput& input, float dt, CStateManager& mgr);

  CVector2f GetCursor2D() const;
  CVector3f GetCursorOnPlane() const;
  CVector3f GetCursorInWorld() const;
  TUniqueId GetCursorObjectId() const;
  uint GetCursorObjectCount() const;
  bool GetCursorValid() const;
  float GetCursorAlpha() const;
  CRayCastResult GetRaycastResult() const;
  bool IsHiddenForCSI() const;
  static float GetCursorPlaneDistance();
  bool ShowOffScreen(const CStateManager& mgr) const;

private:
  CVector2f x0_cursor2D;
  CVector3f x8_cursorOnPlane;
  CRayCastResult x18_raycastResult;
  CVector3f x48_lastValidPointerPlane;
  CVector3f x54_cursorOrbitPosition;
  CVector3f x60_cursorVelocity;
  float x6c_cursorVelocityMagnitude;
  CVector2f x70_cursorVelocity2D;
  float x78_cursorVelocity2DMagnitude;
  CVector3f x7c_cursorInWorld;
  TUniqueId x88_cursorObjectId;
  uint x8c_cursorObjectCount;
  float x90_cursorLockTimer;
  float x94_cursorAlpha;
  bool x98_24_cursorValid : 1;
  bool x98_25_reservedFlag : 1;
  CRelAngle x9c_nunchukPitch;
  float xa0_cursorFade;
  int xa4_hideForCSICount;
  uint xa8_reservedValue;
};
CHECK_SIZEOF(CAimingCursor, 0xb0)

#endif // _CAIMINGCURSOR
