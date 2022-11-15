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
  uchar x0_pad[0xe8];
};
CHECK_SIZEOF(CActorModelParticles, 0xe8);

#endif // _CACTORMODELPARTICLES
