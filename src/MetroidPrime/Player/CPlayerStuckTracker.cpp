#include "MetroidPrime/Player/CPlayer.hpp"

#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/reserved_vector.hpp"

CPlayer::CPlayerStuckTracker::CPlayerStuckTracker() {}

void CPlayer::CPlayerStuckTracker::AddState(EPlayerState a, const CVector3f& b, const CVector3f& c,
                                            const CVector2f& d) {
  x0_.push_back(a);
  x54_.push_back(b);
  x148_.push_back(c);
  x23c_.push_back(d);
}

template < typename T, int N >
rstl::optional_object< T > _getElementBoundsCheck(const rstl::reserved_vector< T, N >& v, int idx);

template <>
rstl::optional_object< CVector3f >
_getElementBoundsCheck(const rstl::reserved_vector< CVector3f, 20 >& v, int idx) {
  if (idx >= v.size()) {
    return rstl::optional_object_null();
  }

  return v[idx];
}
template <>
rstl::optional_object< CVector2f >
_getElementBoundsCheck(const rstl::reserved_vector< CVector2f, 20 >& v, int idx) {
  if (idx >= v.size()) {
    return rstl::optional_object_null();
  }

  return v[idx];
}

template <>
rstl::optional_object< int > _getElementBoundsCheck(const rstl::reserved_vector< int, 20 >& v,
                                                    int idx) {
  if (idx >= v.size()) {
    return rstl::optional_object_null();
  }

  return v[idx];
}

bool CPlayer::CPlayerStuckTracker::IsPlayerStuck() {
  if (x0_.size() != 14) {
    return false;
  }
  CVector3f min1, max1;
  min1 = *_getElementBoundsCheck(x148_, 0);
  max1 = *_getElementBoundsCheck(x148_, 0);
  CAABox box1(min1, max1);
  CAABox box(*_getElementBoundsCheck(x148_, 0), *_getElementBoundsCheck(x148_, 0));
}

void CPlayer::CPlayerStuckTracker::ResetStats() {
  x0_.clear();
  x54_.clear();
  x148_.clear();
  x23c_.clear();
}
