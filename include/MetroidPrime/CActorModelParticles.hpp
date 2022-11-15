#ifndef _CACTORMODELPARTICLES
#define _CACTORMODELPARTICLES

#include "types.h"

class CActor;
class CStateManager;

class CActorModelParticles {
public:
  CActorModelParticles();
  void Render(const CStateManager& mgr, const CActor& actor) const;

private:
  // TODO
};

#endif // _CACTORMODELPARTICLES
