#ifndef __COBBOX_HPP__
#define __COBBOX_HPP__

#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CInputStream;
class CMRay;
class COBBox {
public:
  COBBox(const CTransform4f& xf, const CVector3f& extents);
  COBBox(CInputStream& in);

  CAABox CalculateAABox(const CTransform4f& xf) const;

  static COBBox FromAABox(const CAABox& box, const CTransform4f& xf);

  bool LineIntersectsBox(const CMRay& ray, float& penetration) const;
  bool AABoxIntersectsBox(const CAABox& box) const;
  bool OBBIntersectsBox(const COBBox& box) const;
private:
  CTransform4f mTransform;
  CVector3f mExtents;
};

#endif // __COBBOX_HPP__
