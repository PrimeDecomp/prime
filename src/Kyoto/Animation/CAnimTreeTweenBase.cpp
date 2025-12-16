#include "Kyoto/Animation/CAnimTreeTweenBase.hpp"
#include "Kyoto/Animation/CCharAnimMemoryMetrics.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "rstl/auto_ptr.hpp"
#include "rstl/optional_object.hpp"

CAnimTreeTweenBase::CAnimTreeTweenBase(bool b1, const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                       const rstl::ncrc_ptr< CAnimTreeNode >& b, int flags,
                                       const rstl::string& name)
: CAnimTreeDoubleChild(a, b, name), x1c_flags(flags), x20_24_b1(b1), x20_25_cullSelector(0) {
  CCharAnimMemoryMetrics::AddToTotalSize(8, CCharAnimMemoryMetrics::kASS_Two);
}

CAnimTreeTweenBase::~CAnimTreeTweenBase() {
  CCharAnimMemoryMetrics::SubtractFromTotalSize(8, CCharAnimMemoryMetrics::kASS_Two);
}

bool CAnimTreeTweenBase::VHasOffset(const CSegId& seg) const {
  return x14_a->VHasOffset(seg) && x18_b->VHasOffset(seg);
}

CVector3f CAnimTreeTweenBase::VGetOffset(const CSegId& seg) const {
  float blend_weight = GetBlendingWeight();
  if (blend_weight >= 1.0) {
    return x18_b->VGetOffset(seg);
  } else {
    CVector3f start_offset = x14_a->VGetOffset(seg);
    CVector3f end_offset = x18_b->VGetOffset(seg);
    return start_offset.Lerp(start_offset, end_offset, blend_weight);
  }
}

CQuaternion CAnimTreeTweenBase::VGetRotation(const CSegId& seg) const {
  float blend_weight = GetBlendingWeight();
  if (blend_weight >= 1.0) {
    return x18_b->VGetRotation(seg);
  } else {
    CQuaternion start_offset = x14_a->VGetRotation(seg);
    CQuaternion end_offset = x18_b->VGetRotation(seg);
    return start_offset.SlerpLocal(start_offset, end_offset, blend_weight);
  }
}

void CAnimTreeTweenBase::VGetSegStatementSet(const CSegIdList& list,
                                             CSegStatementSet& setOut) const {}
void CAnimTreeTweenBase::VGetSegStatementSet(const CSegIdList& list, CSegStatementSet& setOut,
                                             const CCharAnimTime& time) const {}

float CAnimTreeTweenBase::VGetRightChildWeight() const { return GetBlendingWeight(); }

float CAnimTreeTweenBase::GetBlendingWeight() const { return VGetBlendingWeight(); }

rstl::optional_object< rstl::auto_ptr< IAnimReader > > CAnimTreeTweenBase::VSimplified() {}

rstl::optional_object< rstl::auto_ptr< IAnimReader > > CAnimTreeTweenBase::VReverseSimplified() {
  return CAnimTreeTweenBase::VSimplified();
}

void CAnimTreeTweenBase::VGetWeightedReaders(
    float w, rstl::reserved_vector< rstl::pair< float, IAnimReader* >, 16 >& out) const {
  float blend_weight = GetBlendingWeight();
  x14_a->VGetWeightedReaders(w * (1.0f - blend_weight), out);
  x18_b->VGetWeightedReaders(w * blend_weight, out);
}
