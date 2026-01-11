#include "Kyoto/Animation/CPoseAsTransforms.hpp"
#include "Kyoto/Animation/CVirtualBone.hpp"

#include "rstl/math.hpp"

#pragma optimizewithasm off

static rstl::reserved_vector< SSkinWeighting, 3 > StreamInSkinWeighting(CInputStream& in) {
  rstl::reserved_vector< SSkinWeighting, 3 > weights;
  int weightCount = in.ReadInt32();

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

  __asm__ {
    psq_l f0, 0(point), 0, 0;
    psq_l f1, 8(rot), 1, 0;
    psq_l f3, 20(rot), 1, 0;
    psq_l f4, 8(point), 1, 0;

    ps_merge00 f1, f1, f0;

    psq_l f5, 32(rot), 1, 0;

    ps_merge01 f3, f3, f0;

    psq_l f0, 0(rot), 0, 0;
    psq_l f2, 12(rot), 0, 0;
    ps_merge00 f5, f5, f4;

    psq_l f4, 24(rot), 0, 0;

    psq_st f0, 0(xf), 0, 0;
    psq_st f1, 8(xf), 0, 0;
    psq_st f2, 16(xf), 0, 0;
    psq_st f3, 24(xf), 0, 0;
    psq_st f4, 32(xf), 0, 0;
    psq_st f5, 40(xf), 0, 0;
  }
}
void Transform2FromMatrixData(register CTransform4f* r3, register const CMatrix3f* r4,
                              register const CVector3f* r5, register float _f1,
                              register const CMatrix3f* r6, register const CVector3f* r7,
                              register float _f2) {}

void CVirtualBone::BuildFinalPosMatrix(const CPoseAsTransforms&, const CVector3f*) const {}
void CVirtualBone::BuildAccumulatedTransform(const CPoseAsTransforms& pose,
                                             const CVector3f* points) const {
  BuildFinalPosMatrix(pose, points);
  // x50_rotation = pose.GetRotation(x0_weights[0].x0_id);
}
