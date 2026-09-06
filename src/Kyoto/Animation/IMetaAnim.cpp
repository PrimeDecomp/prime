#include "Kyoto/Animation/IMetaAnim.hpp"

bool CPreAdvanceIndicator::IsTime() const { return x0_isTime; }

const CCharAnimTime& CPreAdvanceIndicator::GetTime() const { return x4_time; }

bool CPreAdvanceIndicator::IsString() const { return !IsTime(); }

const char* CPreAdvanceIndicator::GetString() const { return xc_string; }

CMetaAnimTreeBuildOrders CMetaAnimTreeBuildOrders::NoSpecialOrders() {
  return CMetaAnimTreeBuildOrders();
}
CMetaAnimTreeBuildOrders
CMetaAnimTreeBuildOrders::PreAdvanceForAll(const CPreAdvanceIndicator& ind) {
  CMetaAnimTreeBuildOrders ret;
  ret.x44_singleAdvance = ind;
  return ret;
}
