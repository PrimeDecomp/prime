#include "Kyoto/Animation/CPoseAsTransforms.hpp"

CPoseAsTransforms::CPoseAsTransforms(uchar count) : mSegIdMap(count) {}

void CPoseAsTransforms::Insert(const CSegId& seg, const CMatrix3f& rotation,
                               const CVector3f& offset) {
  mSegIdMap.Insert(seg, CElementType(rotation, offset));
}

const CPoseAsTransforms::CElementType& CPoseAsTransforms::GetRotation(const CSegId& seg) const {
  return mSegIdMap.GetElementAt(seg);
}

const CMatrix3f& CPoseAsTransforms::GetTransformMinusOffset(const CSegId& seg) const {
  return mSegIdMap.GetElementAt(seg).GetRotation();
}

const CVector3f& CPoseAsTransforms::GetOffset(const CSegId& seg) const {
  return mSegIdMap.GetElementAt(seg).GetOffset();
}

void CPoseAsTransforms::AccumulateScaledTransform(const CSegId& seg, CMatrix3f& mat,
                                                  float scale) const {
  mat.AddScaledMatrix(GetRotation(seg).GetRotation(), scale);
}
bool CPoseAsTransforms::ContainsDataFor(const CSegId& seg) const {
  return mSegIdMap.ContainsDataFor(seg);
}
void CPoseAsTransforms::Clear() { mSegIdMap.Clear(); }
