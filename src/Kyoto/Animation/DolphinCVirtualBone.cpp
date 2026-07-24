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
void Transform2FromMatrixData(register CTransform4f* xf, register const CMatrix3f* rot,
                              register const CVector3f* point, register float _f1,
                              register const CMatrix3f* _r6, register const CVector3f* _r7,
                              register float _f2) {
  __asm__ {
    fmr f4, _f1;
    psq_l f0, CMatrix3f.m00(rot), 0, 0;
    psq_l f5, CVector3f.mX(point), 0, 0;
    psq_l f1, CMatrix3f.m02(rot), 1, 0;
    ps_merge00 f7, f4, f2;
    psq_l f3, CMatrix3f.m12(rot), 1, 0;
    ps_merge00 f1, f1, f5;
    psq_l f2, CMatrix3f.m10(rot), 0, 0;
    ps_merge01 f3, f3, f5;
    psq_l f4, CMatrix3f.m20(rot), 0, 0;
    ps_muls0 f0, f0, f7;
    psq_l f6, CMatrix3f.m00(_r6), 0, 0;
    psq_l f8, CVector3f.mX(_r7), 0, 0;
    ps_muls0 f1, f1, f7;
    psq_l f9, CMatrix3f.m02(_r6), 1, 0;
    ps_muls0 f2, f2, f7;
    ps_madds1 f0, f6, f7, f0;
    psq_l f11, CMatrix3f.m12(_r6), 1, 0;
    ps_merge00 f9, f9, f8;
    psq_l f10, CMatrix3f.m10(_r6), 0, 0;
    psq_l f6, CVector3f.mZ(point), 1, 0;
    ps_merge01 f11, f11, f8;
    psq_l f5, CMatrix3f.m22(rot), 1, 0;
    ps_muls0 f3, f3, f7;
    ps_madds1 f1, f9, f7, f1;
    psq_st f0, CTransform4f.m00(xf), 0, 0;
    ps_merge00 f5, f5, f6;
    ps_madds1 f2, f10, f7, f2;
    psq_l f6, CMatrix3f.m20(_r6), 0, 0;
    ps_muls0 f4, f4, f7;
    psq_l f9, CMatrix3f.m22(_r6), 1, 0;
    ps_madds1 f3, f11, f7, f3;
    psq_l f0, CVector3f.mZ(_r7), 1, 0;
    ps_muls0 f5, f5, f7;
    psq_st f1, CTransform4f.m02(xf), 0, 0;
    ps_merge00 f9, f9, f0;
    ps_madds1 f4, f6, f7, f4;
    psq_st f2, CTransform4f.m10(xf), 0, 0;
    ps_madds1 f5, f9, f7, f5;
    psq_st f3, CTransform4f.m12(xf), 0, 0;
    psq_st f4, CTransform4f.m20(xf), 0, 0;
    psq_st f5, CTransform4f.m22(xf), 0, 0;
  }
}

void CVirtualBone::BuildFinalPosMatrix(const CPoseAsTransforms&, const CVector3f*) const {}
void CVirtualBone::BuildAccumulatedTransform(const CPoseAsTransforms& pose,
                                             const CVector3f* points) const {
  BuildFinalPosMatrix(pose, points);
  x50_rotation = pose.GetRotation(x0_weights[0].x0_id);
}
