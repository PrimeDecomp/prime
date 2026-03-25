#include "MetroidPrime/CActorModelParticles.hpp"

#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"

CActorModelParticles::CActorModelParticles()
: x18_onFire(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName("Effect_OnFire")))
, x20_ash(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName("Effect_Ash")))
, x28_iceBreak(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName("Effect_IceBreak")))
, x30_firePop(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName("Effect_FirePop")))
, x38_icePop(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName("Effect_IcePop")))
, x40_electric(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName("Effect_Electric")))
, x48_ashy(gpSimplePool->GetObj(*gpResourceFactory->GetResourceIdByName("TXTR_Ashy"))) {
  LoadParticleDGRPs();
}
