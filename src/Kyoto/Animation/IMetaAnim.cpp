#include "Kyoto/Animation/IMetaAnim.hpp"

bool CPreAdvanceIndicator::IsTime() const { return mIsTime; }

const CCharAnimTime& CPreAdvanceIndicator::GetTime() const { return mTime; }

bool CPreAdvanceIndicator::IsString() const { return !IsTime(); }

const rstl::string& CPreAdvanceIndicator::GetString() const { return mString; }

CMetaAnimTreeBuildOrders CMetaAnimTreeBuildOrders::NoSpecialOrders() {
  return CMetaAnimTreeBuildOrders();
}
CMetaAnimTreeBuildOrders
CMetaAnimTreeBuildOrders::PreAdvanceForAll(const CPreAdvanceIndicator& ind) {
  CMetaAnimTreeBuildOrders ret;
  ret.mSingleAdvance = ind;
  return ret;
}
