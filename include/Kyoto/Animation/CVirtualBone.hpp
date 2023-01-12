#ifndef _CVIRTUALBONE
#define _CVIRTUALBONE

#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

struct SSkinWeighting {
  CSegId x0_id;
  float x4_weight;
  explicit SSkinWeighting(CInputStream& in) : x0_id(in), x4_weight(in.ReadFloat()) {}
};

class CPoseAsTransforms;
class CVirtualBone {
public:
  explicit CVirtualBone(CInputStream& in);
  const rstl::reserved_vector< SSkinWeighting, 3 >& GetWeights() const { return x0_weights; }
  uint GetVertexCount() const { return x1c_vertexCount; }

  void BuildPoints(const ushort*, volatile void*, int) const;
  void BuildNormals(const ushort*, volatile void*, int) const;
  void BuildNormals(const CVector3f*, CVector3f*, int) const;
  void BuildAccumulatedTransform(const CPoseAsTransforms& pose, const CVector3f* points) const;
  void BuildFinalPosMatrix(const CPoseAsTransforms& pose, const CVector3f* points) const;

private:
  rstl::reserved_vector< SSkinWeighting, 3 > x0_weights;
  uint x1c_vertexCount;
  mutable CTransform4f x20_xf;
  mutable CMatrix3f x50_rotation;
};

#endif // _CVIRTUALBONE
