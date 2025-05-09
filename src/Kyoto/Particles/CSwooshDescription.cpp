#include "Kyoto/Particles/CSwooshDescription.hpp"
#include "Kyoto/Particles/CColorElement.hpp"
#include "Kyoto/Particles/CIntElement.hpp"
#include "Kyoto/Particles/CModVectorElement.hpp"
#include "Kyoto/Particles/CRealElement.hpp"
#include "Kyoto/Particles/CUVElement.hpp"
#include "Kyoto/Particles/CVectorElement.hpp"

CSwooshDescription::CSwooshDescription()
: x0_PSLT(nullptr)
, x4_TIME(nullptr)
, x8_LRAD(nullptr)
, xc_RRAD(nullptr)
, x10_LENG(nullptr)
, x14_COLR(nullptr)
, x18_SIDE(nullptr)
, x1c_IROT(nullptr)
, x20_ROTM(nullptr)
, x24_POFS(nullptr)
, x28_IVEL(nullptr)
, x2c_NPOS(nullptr)
, x30_VELM(nullptr)
, x34_VLM2(nullptr)
, x38_SPLN(nullptr)
, x3c_TEXR(nullptr)
, x40_TSPN(nullptr)
, x44_24_LLRD(false)
, x44_25_CROS(true)
, x44_26_VLS1(false)
, x44_27_VLS2(false)
, x44_28_SROT(false)
, x44_29_WIRE(false)
, x44_30_TEXW(false)
, x44_31_AALP(false)
, x45_24_ZBUF(false)
, x45_25_ORNT(false)
, x45_26_CRND(false) {}

CSwooshDescription::~CSwooshDescription() {
  delete x0_PSLT;
  delete x4_TIME;
  delete x8_LRAD;
  delete xc_RRAD;
  delete x10_LENG;
  delete x14_COLR;
  delete x18_SIDE;
  delete x1c_IROT;
  delete x20_ROTM;
  delete x24_POFS;
  delete x28_IVEL;
  delete x2c_NPOS;
  delete x30_VELM;
  delete x34_VLM2;
  delete x38_SPLN;
  delete x3c_TEXR;
  delete x40_TSPN;
}
