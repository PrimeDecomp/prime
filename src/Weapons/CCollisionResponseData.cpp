#include "Weapons/CCollisionResponseData.hpp"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Particles/CParticleDataFactory.hpp"

const int CCollisionResponseData::kInvalidSFX = -1;

CCollisionResponseData::CCollisionResponseData(CInputStream& in, CSimplePool* sp)
: mAudibleRange(50.f), mAudibleFallOff(0.2f) {
  bool done = false;
  mGeneratorTokens.resize(94);
  mSoundEffectIds.resize(94, kInvalidSFX);
  mDecalTokens.resize(94);

  if (CParticleDataFactory::GetClassID(in) != 'CRSM') {
    return;
  }

  CRandom16 _(99);
  CGlobalRandom __(_);
  // bool done = false;
  while (!done) {
    const FourCC clsId = CParticleDataFactory::GetClassID(in);
    if (CheckAndAddResourcesToResponse(clsId, in, sp)) {
      continue;
    }

    switch (clsId) {
    case 'RNGE':
      CParticleDataFactory::GetClassID(in);
      mAudibleRange = CParticleDataFactory::GetReal(in);
      continue;
    case 'FOFF':
      CParticleDataFactory::GetClassID(in);
      mAudibleFallOff = CParticleDataFactory::GetReal(in);
      continue;
    case '_END':
      done = true;
      break;
    default:
      return;
    }
  }
}

bool CCollisionResponseData::CheckAndAddResourcesToResponse(FourCC clsId, CInputStream& in,
                                                            CSimplePool* sp) {
  if (CheckAndAddParticleSystemToResponse(clsId, in, sp)) {
    return true;
  }

  if (CheckAndAddSoundFXToResponse(clsId, in)) {
    return true;
  }

  if (CheckAndAddDecalToResponse(clsId, in, sp)) {
    return true;
  }

  return false;
}

bool CCollisionResponseData::CheckAndAddParticleSystemToResponse(FourCC clsId, CInputStream& in,
                                                                 CSimplePool* sp) {
  static const FourCC kWCRTIDs[] = {
      'NODP', 'DEFS', 'CRTS', 'MTLS', 'GRAS', 'ICEE', 'GOOO', 'WODS', 'WATR', '1MUD', '1LAV',
      '1SAN', '1PRJ', 'DCHR', 'DCHS', 'DCSH', 'DENM', 'DESP', 'DESH', 'BTLE', 'WASP', 'TALP',
      'PTGM', 'SPIR', 'FPIR', 'FFLE', 'PARA', 'BMON', 'BFLR', 'PBOS', 'IBOS', '1SVA', '1RPR',
      '1MTR', '1PDS', '1FLB', '1DRN', '1MRE', 'CHOZ', 'JZAP', '1ISE', '1BSE', '1ATB', '1ATA',
      'BTSP', 'WWSP', 'TASP', 'TGSP', 'SPSP', 'FPSP', 'FFSP', 'PSSP', 'BMSP', 'BFSP', 'PBSP',
      'IBSP', '2SVA', '2RPR', '2MTR', '2PDS', '2FLB', '2DRN', '2MRE', 'CHSP', 'JZSP', '3ISE',
      '3BSE', '3ATB', '3ATA', 'BTSH', 'WWSH', 'TASH', 'TGSH', 'SPSH', 'FPSH', 'FFSH', 'PSSH',
      'BMSH', 'BFSH', 'PBSH', 'IBSH', '3SVA', '3RPR', '3MTR', '3PDS', '3FLB', '3DRN', '3MRE',
      'CHSH', 'JZSH', '5ISE', '5BSE', '5ATB', '5ATA',
  };

  for (int i = 0; i < ARRAY_SIZE(kWCRTIDs); i++) {
    if (clsId != kWCRTIDs[i]) {
      continue;
    }
    AddParticleSystemToResponse(static_cast< EWeaponCollisionResponseTypes >(i), in, sp);
    return true;
  }

  return false;
}

bool CCollisionResponseData::CheckAndAddSoundFXToResponse(FourCC clsId, CInputStream& in) {
  static const FourCC kCRTSFXIDs[] = {
      'NSFX', 'DSFX', 'CSFX', 'MSFX', 'GRFX', 'ICFX', 'GOFX', 'WSFX', 'WTFX', '2MUD', '2LAV',
      '2SAN', '2PRJ', 'DCFX', 'DSFX', 'DSHX', 'DEFX', 'ESFX', 'SHFX', 'BEFX', 'WWFX', 'TAFX',
      'GTFX', 'SPFX', 'FPFX', 'FFFX', 'PAFX', 'BMFX', 'BFFX', 'PBFX', 'IBFX', '4SVA', '4RPR',
      '4MTR', '4PDS', '4FLB', '4DRN', '4MRE', 'CZFX', 'JZAS', '2ISE', '2BSE', '2ATB', '2ATA',
      'BSFX', 'WSFX', 'TSFX', 'GSFX', 'SSFX', 'FSFX', 'SFFX', 'PSFX', 'MSFX', 'SBFX', 'PBSX',
      'IBSX', '5SVA', '5RPR', '5MTR', '5PDS', '5FLB', '5DRN', '5MRE', 'CSFX', 'JZPS', '4ISE',
      '4BSE', '4ATB', '4ATA', 'BHFX', 'WHFX', 'THFX', 'GHFX', 'SHFX', 'FHFX', 'HFFX', 'PHFX',
      'MHFX', 'HBFX', 'PBHX', 'IBHX', '6SVA', '6RPR', '6MTR', '6PDS', '6FLB', '6DRN', '6MRE',
      'CHFX', 'JZHS', '6ISE', '6BSE', '6ATB', '6ATA',
  };

  for (int i = 0; i < ARRAY_SIZE(kCRTSFXIDs); i++) {
    if (clsId != kCRTSFXIDs[i]) {
      continue;
    }
    if (CParticleDataFactory::GetClassID(in) != 'NONE') {
      mSoundEffectIds[i] = in.Get< int >();
    }
    return true;
  }

  return false;
}

bool CCollisionResponseData::CheckAndAddDecalToResponse(FourCC clsId, CInputStream& in,
                                                        CSimplePool* sp) {
  static const FourCC kCRTDecalIDs[] = {
      'NCDL', 'DDCL', 'CODL', 'MEDL', 'GRDL', 'ICDL', 'GODL',
      'WODL', 'WTDL', '3MUD', '3LAV', '3SAN', 'CHDL', 'ENDL',
  };

  for (int i = 0; i < ARRAY_SIZE(kCRTDecalIDs); i++) {
    if (clsId != kCRTDecalIDs[i]) {
      continue;
    }

    if (CParticleDataFactory::GetClassID(in) != 'NONE') {
      CAssetId id = in.Get< CAssetId >();
      mDecalTokens[i] = TToken< CDecalDescription >(sp->GetObj(SObjectTag('DPSC', id)));
    }

    return true;
  }

  return false;
}

bool CCollisionResponseData::AddParticleSystemToResponse(EWeaponCollisionResponseTypes type,
                                                         CInputStream& in, CSimplePool* sp) {
  rstl::vector< CAssetId > tracker;
  rstl::optional_object< TToken< CGenDescription > > tok =
      CParticleDataFactory::GetChildGeneratorDesc(in, sp, tracker);
  if (tok) {
    mGeneratorTokens[type] = *tok;
    return true;
  }
  return false;
}
float CCollisionResponseData::GetAudibleRange() const { return mAudibleRange; }
float CCollisionResponseData::GetAudibleFallOff() const { return mAudibleFallOff; }