#ifndef _CINPUTGENERATOR_HPP
#define _CINPUTGENERATOR_HPP

#include "types.h"

class COsContext;

class CInputGenerator {
public:
  CInputGenerator(COsContext*, f32, f32);

private:
  u8 pad[0x14];
};

#endif