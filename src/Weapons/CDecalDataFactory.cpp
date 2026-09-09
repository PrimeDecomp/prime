#include "Weapons/CDecalDataFactory.hpp"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Particles/CParticleDataFactory.hpp"

const CFactoryFnReturn FDecalDataFactory(const SObjectTag& tag, CInputStream& in,
                                 const CVParamTransfer& transfer) {
  rstl::rc_ptr< IVParamObj > obj = transfer.x0_obj;
  CSimplePool* pool = static_cast< TObjOwnerParam< CSimplePool* >* >(obj.GetPtr())->GetData();
  CDecalDescription* ret = CDecalDataFactory::GetGeneratorDesc(in, pool);
  return ret;
}

CDecalDescription* CDecalDataFactory::GetGeneratorDesc(CInputStream& in, CSimplePool* pool) {
  return CreateGeneratorDescription(in, pool);
}
CDecalDescription* CDecalDataFactory::CreateGeneratorDescription(CInputStream& in,
                                                              CSimplePool* pool) {
  if (CParticleDataFactory::GetClassID(in) != 'DPSM') {
    return nullptr;
  }

  CDecalDescription* desc = rs_new CDecalDescription();
  CreateDPSM(desc, in, pool);
  return desc;
}
void CDecalDataFactory::GetQuadDecalInfo(CInputStream& in, CSimplePool* pool, uint classId,
                                      CDecalDescription::SQuadDescr& quad) {
  switch (classId) {
  case '1LFT':
  case '2LFT':
    quad.x0_LFT = CParticleDataFactory::GetIntElement(in);
    break;
  case '1SZE':
  case '2SZE':
    quad.x4_SZE = CParticleDataFactory::GetRealElement(in);
    break;
  case '1ROT':
  case '2ROT':
    quad.x8_ROT = CParticleDataFactory::GetRealElement(in);
    break;
  case '1OFF':
  case '2OFF':
    quad.xc_OFF = CParticleDataFactory::GetVectorElement(in);
    break;
  case '1CLR':
  case '2CLR':
    quad.x10_CLR = CParticleDataFactory::GetColorElement(in);
    break;
  case '1TEX':
  case '2TEX':
    quad.x14_TEX = CParticleDataFactory::GetTextureElement(in, pool);
    break;
  case '1ADD':
  case '2ADD':
    quad.x18_ADD = CParticleDataFactory::GetBool(in);
    break;
  }
}

bool CDecalDataFactory::CreateDPSM(CDecalDescription* desc, CInputStream& in, CSimplePool* pool) {
  bool done = false;
  CRandom16 random;

  while (!done) {
    CGlobalRandom globalRandom(random);
    const FourCC clsId = CParticleDataFactory::GetClassID(in);
    bool loadFirstDesc = false;
    switch (clsId) {
    case '1SZE':
    case '1LFT':
    case '1ROT':
    case '1OFF':
    case '1CLR':
    case '1TEX':
    case '1ADD':
      loadFirstDesc = true;
    case '2LFT':
    case '2SZE':
    case '2ROT':
    case '2OFF':
    case '2CLR':
    case '2TEX':
    case '2ADD': {
      CDecalDescription::SQuadDescr& quad = loadFirstDesc ? desc->x0_quad1 : desc->x1c_quad2;
      GetQuadDecalInfo(in, pool, clsId, quad);
    } break;
    case 'DMDL': {
      rstl::optional_object< TToken< CModel > > model = CParticleDataFactory::GetModel(in, pool);
      if (model.valid()) {
        desc->x38_DMDL = TLockedToken< CModel >(*model);
      } else {
        desc->x38_DMDL = rstl::optional_object_null();
      }
    } break;
    case 'DLFT':
      desc->x48_DLFT = CParticleDataFactory::GetIntElement(in);
      break;
    case 'DMOP':
      desc->x4c_DMOP = CParticleDataFactory::GetVectorElement(in);
      break;
    case 'DMRT':
      desc->x50_DMRT = CParticleDataFactory::GetVectorElement(in);
      break;
    case 'DMSC':
      desc->x54_DMSC = CParticleDataFactory::GetVectorElement(in);
      break;
    case 'DMCL':
      desc->x58_DMCL = CParticleDataFactory::GetColorElement(in);
      break;
    case 'DMAB':
      desc->x5c_24_DMAB = CParticleDataFactory::GetBool(in);
      break;
    case 'DMOO':
      desc->x5c_25_DMOO = CParticleDataFactory::GetBool(in);
      break;
    case '_END':
      done = true;
      break;
    default:
      return false;
    }
  }

  return true;
}
