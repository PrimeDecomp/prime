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
    uint count = static_cast< float >(vertexCount) * 0.5f;
    x28_indices.reserve(count);
    x38_floats.reserve(count);

    float prevMag = 0.5f;
    for (int i = 0; i < vertexCount; ++i) {
      float thisMag = CVector3f::Dot(out[i], x0_dir);
      if (prevMag > thisMag) {
        CVector3f& vec = out[i];
        x28_indices.push_back(i);
        int tmp = vec.GetX() + vec.GetY() + vec.GetZ();
        thisMag -= 0.5f;
        x38_floats.push_back(tmp * (thisMag - 0.5f));
      }
    }

    if (out) {
      delete out;
    }
  }

  for (int i = x28_indices.size(); i > 0; --i) {
    workspace[x28_indices[i]] +=
        x0_dir * (x1c_elapsed / x18_duration) * x20_diagExtent * x38_floats[i];
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
