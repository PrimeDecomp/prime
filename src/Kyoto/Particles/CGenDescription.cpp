#include "Kyoto/Particles/CGenDescription.hpp"
#include "Kyoto/Particles/CSpawnSystemKeyframeData.hpp"
#include "rstl/single_ptr.hpp"

static IElement** element_from_desc(CGenDescription* gen, int idx) {
  return reinterpret_cast< IElement** >(reinterpret_cast< uchar* >(gen) + idx);
}

static const size_t skGenOffsets[] = {
    offsetof(CGenDescription, x0_PSLT), offsetof(CGenDescription, x4_PSWT),
    offsetof(CGenDescription, x8_PSTS), offsetof(CGenDescription, xc_POFS),
    offsetof(CGenDescription, x10_SEED), offsetof(CGenDescription, x14_LENG),
    offsetof(CGenDescription, x18_WIDT), offsetof(CGenDescription, x1c_MAXP),
    offsetof(CGenDescription, x20_GRTE), offsetof(CGenDescription, x24_COLR),
    offsetof(CGenDescription, x28_LTME), offsetof(CGenDescription, x2c_EMTR),
    offsetof(CGenDescription, x34_MBSP), offsetof(CGenDescription, x38_SIZE),
    offsetof(CGenDescription, x3c_ROTA), offsetof(CGenDescription, x40_TEXR),
    offsetof(CGenDescription, x44_TIND), offsetof(CGenDescription, x58_PMOP),
    offsetof(CGenDescription, x5c_PMRT), offsetof(CGenDescription, x60_PMSC),
    offsetof(CGenDescription, x64_PMCL), offsetof(CGenDescription, x68_VEL1),
    offsetof(CGenDescription, x6c_VEL2), offsetof(CGenDescription, x70_VEL3),
    offsetof(CGenDescription, x74_VEL4), offsetof(CGenDescription, x88_NCSY),
    offsetof(CGenDescription, x8c_CSSD), offsetof(CGenDescription, xa0_NDSY),
    offsetof(CGenDescription, xb4_PISY), offsetof(CGenDescription, xb8_SISY),
    offsetof(CGenDescription, xd0_SSSD), offsetof(CGenDescription, xd4_SSPO),
    offsetof(CGenDescription, xe4_SESD), offsetof(CGenDescription, xe8_SEPO),
    offsetof(CGenDescription, xec_LTYP), offsetof(CGenDescription, xf0_LCLR),
    offsetof(CGenDescription, xf4_LINT), offsetof(CGenDescription, xf8_LOFF),
    offsetof(CGenDescription, xfc_LDIR), offsetof(CGenDescription, x100_LFOT),
    offsetof(CGenDescription, x104_LFOR), offsetof(CGenDescription, x108_LSLA),
    offsetof(CGenDescription, x10c_ADV1), offsetof(CGenDescription, x110_ADV2),
    offsetof(CGenDescription, x114_ADV3), offsetof(CGenDescription, x118_ADV4),
    offsetof(CGenDescription, x11c_ADV5), offsetof(CGenDescription, x120_ADV6),
    offsetof(CGenDescription, x124_ADV7), offsetof(CGenDescription, x128_ADV8),
};

CGenDescription::CGenDescription()
: x0_PSLT(nullptr)
, x4_PSWT(nullptr)
, x8_PSTS(nullptr)
, xc_POFS(nullptr)
, x10_SEED(nullptr)
, x14_LENG(nullptr)
, x18_WIDT(nullptr)
, x1c_MAXP(nullptr)
, x20_GRTE(nullptr)
, x24_COLR(nullptr)
, x28_LTME(nullptr)
, x2c_EMTR(nullptr)
, x30_24_LINE(false)
, x30_25_FXLL(false)
, x30_26_AAPH(false)
, x30_27_ZBUF(false)
, x30_28_SORT(false)
, x30_29_LIT_(false)
, x30_30_ORNT(false)
, x30_31_RSOP(false)
, x31_24_MBLR(false)
, x31_25_PMAB(false)
, x31_26_PMUS(false)
, x31_27_PMOO(true)
, x31_28_VMD1(false)
, x31_29_VMD2(false)
, x31_30_VMD3(false)
, x31_31_VMD4(false)
, x32_24_CIND(false)
, x32_25_OPTS(false)
, x34_MBSP(nullptr)
, x38_SIZE(nullptr)
, x3c_ROTA(nullptr)
, x40_TEXR(nullptr)
, x44_TIND(nullptr)
, x58_PMOP(nullptr)
, x5c_PMRT(nullptr)
, x60_PMSC(nullptr)
, x64_PMCL(nullptr)
, x68_VEL1(nullptr)
, x6c_VEL2(nullptr)
, x70_VEL3(nullptr)
, x74_VEL4(nullptr)
, x88_NCSY(nullptr)
, x8c_CSSD(nullptr)
, xa0_NDSY(nullptr)
, xb4_PISY(nullptr)
, xb8_SISY(nullptr)
, xd0_SSSD(nullptr)
, xd4_SSPO(nullptr)
, xe4_SESD(nullptr)
, xe8_SEPO(nullptr)
, xec_LTYP(nullptr)
, xf0_LCLR(nullptr)
, xf4_LINT(nullptr)
, xf8_LOFF(nullptr)
, xfc_LDIR(nullptr)
, x100_LFOT(nullptr)
, x104_LFOR(nullptr)
, x108_LSLA(nullptr)
, x10c_ADV1(nullptr)
, x110_ADV2(nullptr)
, x114_ADV3(nullptr)
, x118_ADV4(nullptr)
, x11c_ADV5(nullptr)
, x120_ADV6(nullptr)
, x124_ADV7(nullptr)
, x128_ADV8(nullptr) {}
CGenDescription::~CGenDescription() {
  for (int i = 0; i < (int)(sizeof(skGenOffsets) / sizeof(size_t)); ++i) {
    delete *element_from_desc(this, skGenOffsets[i]);
  }  
}
