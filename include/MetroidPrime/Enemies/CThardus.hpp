#ifndef _CTHARDUS
#define _CTHARDUS

class CThardus : public CPatterned {
public:
  void ShakeScreen(CStateManager& mgr, const CVector3f& position, const float, const float,
                   const float);
  void StartTimedThermalFlash(CStateManager& mgr, float, CActor& actor);
};
#endif
