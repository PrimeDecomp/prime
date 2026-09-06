#include "Kyoto/Animation/IMetaAnim.hpp"

#pragma inline_max_size(1024)
bool CPreAdvanceIndicator::IsTime() const { return mIsTime; }

const CCharAnimTime& CPreAdvanceIndicator::GetTime() const { return mTime; }

bool CPreAdvanceIndicator::IsString() const { return !IsTime(); }

const char* const& CPreAdvanceIndicator::GetString() const { return mString; }

CMetaAnimTreeBuildOrders CMetaAnimTreeBuildOrders::NoSpecialOrders() {
  return CMetaAnimTreeBuildOrders();
}
CMetaAnimTreeBuildOrders
CMetaAnimTreeBuildOrders::PreAdvanceForAll(const CPreAdvanceIndicator& ind) {
  CMetaAnimTreeBuildOrders ret;
  ret.x44_singleAdvance = ind;
  return ret;
}
