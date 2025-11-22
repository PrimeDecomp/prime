#include "Kyoto/Particles/CElectricDescription.hpp"

CElectricDescription::CElectricDescription()
: x0_LIFE(nullptr)
, x4_SLIF(nullptr)
, x8_GRAT(nullptr)
, xc_SCNT(nullptr)
, x10_SSEG(nullptr)
, x14_COLR(nullptr)
, x18_IEMT(nullptr)
, x1c_FEMT(nullptr)
, x20_AMPL(nullptr)
, x24_AMPD(nullptr)
, x28_LWD1(nullptr)
, x2c_LWD2(nullptr)
, x30_LWD3(nullptr)
, x34_LCL1(nullptr)
, x38_LCL2(nullptr)
, x3c_LCL3(nullptr)
, x70_ZERY(false) {}

CElectricDescription::~CElectricDescription() {
  delete x0_LIFE;
  delete x4_SLIF;
  delete x8_GRAT;
  delete xc_SCNT;
  delete x10_SSEG;
  delete x14_COLR;
  delete x18_IEMT;
  delete x1c_FEMT;
  delete x20_AMPL;
  delete x24_AMPD;
  delete x28_LWD1;
  delete x2c_LWD2;
  delete x30_LWD3;
  delete x34_LCL1;
  delete x38_LCL2;
  delete x3c_LCL3;
}
