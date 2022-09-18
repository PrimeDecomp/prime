#ifndef _CACTORMODELPARTICLES_HPP
#define _CACTORMODELPARTICLES_HPP

#include "types.h"

class CActor;
class CStateManager;

class CActorModelParticles {
public:
  void Render(const CStateManager& mgr, const CActor& actor) const;

private:
  // TODO
};

#endif
