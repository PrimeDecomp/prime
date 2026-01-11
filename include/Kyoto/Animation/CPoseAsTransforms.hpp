#ifndef _CPOSEASTRANSFORMS
#define _CPOSEASTRANSFORMS

#include "types.h"

#include "Kyoto/Animation/TSegIdMapVariableSize.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

class CPoseAsTransforms {
public:
  class CElementType {
  public:
    CElementType(const CMatrix3f& rotation, const CVector3f& offset)
    : mRotation(rotation), mOffset(offset) {}

    const CMatrix3f& GetRotation() const { return mRotation; }
    const CVector3f& GetOffset() const { return mOffset; }

  private:
    CMatrix3f mRotation;
    CVector3f mOffset;
  };

  CPoseAsTransforms(uchar count);

  void Insert(const CSegId& seg, const CMatrix3f& rotation, const CVector3f& offset);
  const CElementType& GetRotation(const CSegId& id) const;
  const CMatrix3f& GetTransformMinusOffset(const CSegId& id) const;
  const CVector3f& GetOffset(const CSegId& id) const;
  void Clear();

  void AccumulateScaledTransform(const CSegId& seg, CMatrix3f& transform, float scale) const;
  bool ContainsDataFor(const CSegId& seg) const;

private:
  TSegIdMapVariableSize< CElementType > mSegIdMap;
};
CHECK_SIZEOF(CPoseAsTransforms, 0xd8)

#endif // _CPOSEASTRANSFORMS
