#ifndef _CVERTEXMORPHEFFECT
#define _CVERTEXMORPHEFFECT

#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/vector.hpp"

class CRandom16;

class CSkinRules;
class CPoseAsTransforms;
class CVertexMorphEffect {
public:
  CVertexMorphEffect(const CUnitVector3f& dir, const CVector3f& pos, float duration,
                     float diagExtent, CRandom16& random)
  : x0_dir(dir)
  , xc_pos(pos)
  , x18_duration(duration)
  , x1c_elapsed(0.f)
  , x20_diagExtent(diagExtent)
  , x24_random(random) {}
  void Update(float dt);

  void MorphVertices(CVector3f* workspace, const CVector3f* averageNormals,
                     const TLockedToken< CSkinRules >& skinRules, const CPoseAsTransforms& pose,
                     uint vertexCount) const;
  void Reset(const CUnitVector3f& dir, const CVector3f& pos, float duration);

private:
  CUnitVector3f x0_dir;
  CVector3f xc_pos;
  float x18_duration;
  float x1c_elapsed;
  float x20_diagExtent;
  CRandom16& x24_random;
  mutable rstl::vector< uint > x28_indices;
  mutable rstl::vector< float > x38_floats;
};

#endif // _CVERTEXMORPHEFFECT
