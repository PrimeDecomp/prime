#ifndef _CVERTEXMORPHEFFECT
#define _CVERTEXMORPHEFFECT

#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/vector.hpp"

class CRandom16;

class CVertexMorphEffect {
public:
  ~CVertexMorphEffect() {}

private:
  CUnitVector3f x0_dir;
  CVector3f xc_pos;
  float x18_duration;
  float x1c_elapsed;
  float x20_diagExtent;
  CRandom16& x24_random;
  rstl::vector< uint > x28_indices;
  rstl::vector< float > x38_floats;
};

#endif // _CVERTEXMORPHEFFECT
