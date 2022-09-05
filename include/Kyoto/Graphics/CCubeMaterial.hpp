#ifndef _CCUBEMATERIAL_HPP
#define _CCUBEMATERIAL_HPP

#include "types.h"

#include "Kyoto/Graphics/CModelFlags.hpp"
#include "Kyoto/Math/CVector3f.hpp"

extern CVector3f sPlayerPosition;

class CCubeMaterial {
public:
private:
  static void SetupBlendMode(u32 blendFactors, const CModelFlags& flags, bool alphaTest);

  static CVector3f sViewingFrom;
};

#endif