#include "Kyoto/Animation/CAnimTreeTransition.hpp"

#include "Kyoto/Animation/CCharAnimMemoryMetrics.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

CAnimTreeTransition::CAnimTreeTransition(bool b1, const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                         const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                         const CCharAnimTime& transDur, bool runA, int flags,
                                         const rstl::string& name)
: CAnimTreeTweenBase(b1, a, b, flags, name)
, x24_transDur(transDur)
, x2c_timeInTrans(0.f)
, x34_runA(runA)
, x35_loopA(a->GetBoolPOIState("Loop"))
, x36_initialized(false) {
  CCharAnimMemoryMetrics::AddToTotalSize(19, CCharAnimMemoryMetrics::kASS_Two);
}

CAnimTreeTransition::CAnimTreeTransition(bool b1, const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                         const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                         const CCharAnimTime& transDur,
                                         const CCharAnimTime& timeInTrans, bool runA, bool loopA,
                                         int flags, const rstl::string& name, bool initialized)
: CAnimTreeTweenBase(b1, a, b, flags, name)
, x24_transDur(transDur)
, x2c_timeInTrans(timeInTrans)
, x34_runA(runA)
, x35_loopA(loopA)
, x36_initialized(initialized) {
  CCharAnimMemoryMetrics::AddToTotalSize(19, CCharAnimMemoryMetrics::kASS_Two);
}

CAnimTreeTransition::~CAnimTreeTransition() {
  CCharAnimMemoryMetrics::SubtractFromTotalSize(19, CCharAnimMemoryMetrics::kASS_Two);
}

rstl::optional_object< rstl::ownership_transfer< IAnimReader > >
CAnimTreeTransition::VSimplified() {
  if (close_enough(GetBlendingWeight(), 1.f)) {
    rstl::optional_object< rstl::ownership_transfer< IAnimReader > > simp = x18_b->Simplified();
    if (simp)
      return simp;
    return x18_b->Clone();
  }
  return CAnimTreeTweenBase::VSimplified();
}

rstl::optional_object< rstl::ownership_transfer< IAnimReader > >
CAnimTreeTransition::VReverseSimplified() {
  if (close_enough(GetBlendingWeight(), 0.f))
    return x14_a->Clone();
  return CAnimTreeTweenBase::VReverseSimplified();
}

rstl::pair< CCharAnimTime, CAdvancementDeltas >
CAnimTreeTransition::AdvanceViewForTransitionalPeriod(const CCharAnimTime& time) {
  IncAdvancementDepth();
  CDoubleChildAdvancementResult res = AdvanceViewBothChildren(time, x34_runA, x35_loopA);
  DecAdvancementDepth();
  const CCharAnimTime& trueAdvancement = res.GetTrueAdvancement();
  if (trueAdvancement.EqualsZero())
    return rstl::pair< CCharAnimTime, CAdvancementDeltas >(
        CCharAnimTime::ZeroFlat(),
        CAdvancementDeltas(CVector3f::Zero(), CQuaternion::NoRotation()));
  float oldWeight = GetBlendingWeight();
  x2c_timeInTrans += trueAdvancement;
  float newWeight = GetBlendingWeight();
  if (ShouldCullTree()) {
    if (newWeight < 0.5f)
      x20_25_cullSelector = 1;
    else
      x20_25_cullSelector = 2;
  }
  const CAdvancementDeltas& leftDeltas = res.GetLeftAdvancementDeltas();
  const CAdvancementDeltas& rightDeltas = res.GetRightAdvancementDeltas();
  if (GetBlendRoot() & kBlendRoot_Offset)
    return rstl::pair< CCharAnimTime, CAdvancementDeltas >(
        res.GetTrueAdvancement(),
        CAdvancementDeltas::Interpolate(leftDeltas, rightDeltas, oldWeight, newWeight));
  return rstl::pair< CCharAnimTime, CAdvancementDeltas >(res.GetTrueAdvancement(), rightDeltas);
}

CAdvancementResults CAnimTreeTransition::VAdvanceView(const CCharAnimTime& time) {
  if (time.EqualsZero()) {
    IncAdvancementDepth();
    x18_b->AdvanceView(time);
    if (x34_runA)
      x14_a->AdvanceView(time);
    DecAdvancementDepth();
    if (ShouldCullTree())
      x20_25_cullSelector = 1;
    return CAdvancementResults(CCharAnimTime::ZeroFlat(),
                               CAdvancementDeltas(CVector3f::Zero(), CQuaternion::NoRotation()));
  }
  if (!x36_initialized)
    x36_initialized = true;
  if (x2c_timeInTrans + time < x24_transDur) {
    rstl::pair< CCharAnimTime, CAdvancementDeltas > res = AdvanceViewForTransitionalPeriod(time);
    return CAdvancementResults(time - res.first, res.second);
  }
  CCharAnimTime transTimeRem = x24_transDur - x2c_timeInTrans;
  rstl::pair< CCharAnimTime, CAdvancementDeltas > res(
      CCharAnimTime(0.f), CAdvancementDeltas(CVector3f::Zero(), CQuaternion::NoRotation()));
  if (transTimeRem.GreaterThanZero()) {
    res = AdvanceViewForTransitionalPeriod(transTimeRem);
    if (res.first != transTimeRem)
      return CAdvancementResults(res.first, res.second);
  }
  CCharAnimTime remainder = time - transTimeRem;
  return CAdvancementResults(remainder, res.second);
}

rstl::ownership_transfer< IAnimReader > CAnimTreeTransition::VClone() const {
  return rs_new CAnimTreeTransition(CharacterSpaceBlend(), Cast(x14_a->Clone()),
                                    Cast(x18_b->Clone()), x24_transDur, x2c_timeInTrans, x34_runA,
                                    x35_loopA, GetBlendRoot(), x4_name, x36_initialized);
}

float CAnimTreeTransition::VGetBlendingWeight() const {
  if (x24_transDur.GreaterThanZero())
    return (1.f / x24_transDur.GetSeconds()) * x2c_timeInTrans.GetSeconds();
  return 1.f;
}

CCharAnimTime CAnimTreeTransition::VGetTimeRemaining() const {
  return rstl::max_val(x18_b->GetTimeRemaining(), x24_transDur - x2c_timeInTrans);
}

CSteadyStateAnimInfo CAnimTreeTransition::VGetSteadyStateAnimInfo() const {
  CSteadyStateAnimInfo bInfo = x18_b->GetSteadyStateAnimInfo();
  return CSteadyStateAnimInfo(bInfo.IsLooping(), rstl::max_val(x24_transDur, bInfo.GetDuration()),
                              bInfo.GetOffset());
}

rstl::string CAnimTreeTransition::CreatePrimitiveName(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                                      const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                                      float duration) {
  return rstl::string_l("");
}

void CAnimTreeTransition::SetBlendingWeight(float weight) {
  rstl::rc_ptr< CAnimTreeNode > right = GetRightChild();
  static_cast< CAnimTreeTweenBase* >(right.GetPtr())->SetBlendingWeight(weight);
}

rstl::rc_ptr< CAnimTreeNode > CAnimTreeTransition::VGetBestUnblendedChild() const {
  rstl::rc_ptr< CAnimTreeNode > right = GetRightChild();
  rstl::rc_ptr< CAnimTreeNode > child = right->GetBestUnblendedChild();
  if (!child)
    return right;
  return child;
}

const int CAnimTreeTweenBase::kBlendRoot_Offset = 1;

const int CAnimTreeTweenBase::kBlendRoot_Rotation = 2;
