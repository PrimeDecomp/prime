#include "Weapons/CProjectileWeaponDataFactory.hpp"

#include "MetroidPrime/Weapons/CWeapon.hpp"
#include "Weapons/CWeaponDescription.hpp"

#include <Kyoto/Particles/CParticleDataFactory.hpp>
#include <rstl/vector.hpp>

CFactoryFnReturn FProjectileWeaponDataFactory(const SObjectTag& tag, CInputStream& in,
                                              const CVParamTransfer& xfer) {
  rstl::rc_ptr< IVParamObj > obj = xfer.x0_obj;
  CSimplePool* pool = static_cast< TObjOwnerParam< CSimplePool* >* >(obj.GetPtr())->GetData();
  return CProjectileWeaponDataFactory::GetGeneratorDesc(in, pool);
}

CWeaponDescription* CProjectileWeaponDataFactory::GetGeneratorDesc(CInputStream& in,
                                                                   CSimplePool* pool) {
  rstl::vector< unkptr > t; // TODO: See if we can figure out what this actually is
  return CreateGeneratorDescription(in, pool);
}

CWeaponDescription* CProjectileWeaponDataFactory::CreateGeneratorDescription(CInputStream& in,
                                                                             CSimplePool* pool) {
  if (CParticleDataFactory::GetClassID(in) != 'WPSM') {
    return nullptr;
  }

  CWeaponDescription* desc = rs_new CWeaponDescription();
  CreateWPSM(desc, in, pool);
  return desc;
}

void CProjectileWeaponDataFactory::CreateWPSM(CWeaponDescription* desc, CInputStream& in,
                                              CSimplePool* pool) {
  CRandom16 _;
  CGlobalRandom __(_);

  while (true) {
    uint cls = CParticleDataFactory::GetClassID(in);
    switch (cls) {
    case 'IORN':
      desc->x0_IORN = CParticleDataFactory::GetVectorElement(in);
      break;
    case 'IVEC':
      desc->x4_IVEC = CParticleDataFactory::GetVectorElement(in);
      break;
    case 'PSOV':
      desc->x8_PSOV = CParticleDataFactory::GetVectorElement(in);
      break;
    case 'PSVM':
      desc->xc_PSVM = CParticleDataFactory::GetModVectorElement(in);
      break;
    case 'VMD2':
      desc->x10_VMD2 = CParticleDataFactory::GetBool(in);
      break;
    case 'PSLT':
      desc->x14_PSLT = CParticleDataFactory::GetIntElement(in);
      break;
    case 'APSM': {
      rstl::vector< CAssetId > assets;
      rstl::optional_object< TToken< CGenDescription > > child =
          CParticleDataFactory::GetChildGeneratorDesc(in, pool, assets);
      desc->x34_APSM = *child;
      break;
    }
    case 'PSCL':
      desc->x18_PSCL = CParticleDataFactory::GetVectorElement(in);
      break;
    case '_END':
      break;
    }
  }
}