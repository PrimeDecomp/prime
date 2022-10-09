#ifndef _CCUBEMATERIAL
#define _CCUBEMATERIAL

#include "types.h"

#include "Kyoto/Graphics/CModelFlags.hpp"
#include "Kyoto/Math/CVector3f.hpp"

extern CVector3f sPlayerPosition;

class CCubeMaterial {
public:
private:
  static void SetupBlendMode(uint blendFactors, const CModelFlags& flags, bool alphaTest);

  static CVector3f sViewingFrom;
};

#endif // _CCUBEMATERIAL
