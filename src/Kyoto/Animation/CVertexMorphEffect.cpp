#include "Kyoto/Animation/CVertexMorphEffect.hpp"

#include "Kyoto/Animation/CSkinRules.hpp"

#include <rstl/math.hpp>

void CVertexMorphEffect::Update(float dt) {
  x1c_elapsed = rstl::min_val(x1c_elapsed + dt, x18_duration);
}

void CVertexMorphEffect::MorphVertices(CVector3f* workspace, const CVector3f* averageNormals,
                                       const TLockedToken< CSkinRules >& skinRules,
                                       const CPoseAsTransforms& pose, uint vertexCount) const {
  if (x28_indices.empty()) {
    // We want to build the vertex buffer, but not construct them just yet.
    CVector3f* out = reinterpret_cast< CVector3f* >(rs_new uchar[vertexCount * sizeof(CVector3f)]);
    skinRules->BuildNormalsFrom(averageNormals, out);
    rstl::vector< uint >& indices = x28_indices;
    uint count = static_cast< float >(vertexCount) * 0.5f;
    indices.reserve(count);
    rstl::vector< float >& weights = x38_floats;
    weights.reserve(count);

    for (uint i = 0; i < vertexCount; ++i) {
      float thisMag = CVector3f::Dot(out[i], x0_dir);
      if (thisMag > 0.5f) {
        const CVector3f& vec = workspace[i];
        indices.push_back(i);
        const float sum = vec.GetX() + vec.GetY() + vec.GetZ();
        const float fraction = sum - static_cast< int >(sum);
        weights.push_back(fraction * (thisMag - 0.5f));
      }
    }

    if (out) {
      delete[] reinterpret_cast< uchar* >(out);
    }
  }

  const uint count = x28_indices.size();
  for (uint i = 0; i < count; ++i) {
    workspace[x28_indices[i]] +=
        (x1c_elapsed / x18_duration) * (x20_diagExtent * (x38_floats[i] * x0_dir));
  }
}

void CVertexMorphEffect::Reset(const CUnitVector3f& dir, const CVector3f& pos, float duration) {
  x0_dir = dir;
  xc_pos = pos;
  x18_duration = duration;
  x1c_elapsed = 0.f;
  x28_indices.clear();
  x38_floats.clear();
}
