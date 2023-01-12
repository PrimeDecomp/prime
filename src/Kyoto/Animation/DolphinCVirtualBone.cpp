#include "Kyoto/Animation/CVirtualBone.hpp"
#include "Kyoto/Animation/CPoseAsTransforms.hpp"

#include "rstl/math.hpp"

static rstl::reserved_vector< SSkinWeighting, 3 > StreamInSkinWeighting(CInputStream& in) {
  rstl::reserved_vector< SSkinWeighting, 3 > weights;
  int weightCount = in.Get< uint >();

  if (weightCount > 3) {
    for (int i = 0; i < 3; ++i) {
      weights.push_back(SSkinWeighting(in));
    }

    for (int i = 3; i < weightCount; ++i) {
      SSkinWeighting tmp(in);
    }
  } else {
    for (int i = 0; i < weightCount; ++i) {
      weights.push_back(SSkinWeighting(in));
    }
  }
  return weights;
}

CVirtualBone::CVirtualBone(CInputStream& in)
: x0_weights(StreamInSkinWeighting(in))
, x1c_vertexCount(in.ReadLong())
, x20_xf(CTransform4f::Identity())
, x50_rotation(CMatrix3f::Identity()) {}

ConstMtxPtr TransformToMtx(const CTransform4f& xf) { return xf.GetCStyleMatrix(); }

void TransformFromMatrixDelta(register CTransform4f* xf, register const CMatrix3f* rot,
                                  register const CVector3f* point) {
}

void Transform2FromMatrixData(register CTransform4f* r3, register const CMatrix3f* r4,
                                  register const CVector3f* r5, register float _f1,
                                  register const CMatrix3f* r6, register const CVector3f* r7,
                                  register float _f2) {
}


void CVirtualBone::BuildFinalPosMatrix(const CPoseAsTransforms&, const CVector3f*) const {
  
}
void CVirtualBone::BuildAccumulatedTransform(const CPoseAsTransforms& pose, const CVector3f* points) const {
  BuildFinalPosMatrix(pose, points);
  x50_rotation = pose.GetRotation(x0_weights[0].x0_id);
}
