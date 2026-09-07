#include "MetroidPrime/PathFinding/CPathFindSearch.hpp"

#include "Kyoto/Math/CMath.hpp"

#include "rstl/math.hpp"

const bool CPathFindSearch::SegmentOver(const CVector3f& pos) const {
  bool over = true;
  const int count = x4_waypoints.size();
  if (count > 1 && xc8_curWaypoint < count - 1) {
    const int nextIndex = rstl::min_val(xc8_curWaypoint + 2, count - 1);
    const CVector3f& a = x4_waypoints[xc8_curWaypoint];
    const CVector3f& c = x4_waypoints[nextIndex];
    const CVector3f& b = x4_waypoints[xc8_curWaypoint + 1];
    const CVector3f direction = c - a;
    over = CVector3f::Dot(pos - b, direction) >= 0.f;
  }
  return over;
}

void CPathFindSearch::GetSplinePoint(CVector3f& point, const CVector3f& pos, int waypoint) const {
  const int count = x4_waypoints.size();
  if (count > 1 && waypoint < count - 1) {
    const CVector3f a =
        waypoint == 0 ? 2.f * x4_waypoints[0] - x4_waypoints[1] : x4_waypoints[waypoint - 1];
    const CVector3f& b = x4_waypoints[waypoint];
    const CVector3f& c = x4_waypoints[waypoint + 1];
    const CVector3f d = waypoint + 2 >= count
                            ? 2.f * x4_waypoints[count - 1] - x4_waypoints[count - 2]
                            : x4_waypoints[waypoint + 2];
    const CVector3f delta = c - b;
    if (delta.IsMagnitudeSafe()) {
      const float t = CVector3f::Dot(pos - b, delta) / delta.MagSquared();
      point = CMath::GetCatmullRomSplinePoint(a, b, c, d, t);
    } else {
      point = x4_waypoints[waypoint];
    }
  }
}

void CPathFindSearch::GetSplinePoint(CVector3f& point, const CVector3f& pos) const {
  GetSplinePoint(point, pos, xc8_curWaypoint);
}

void CPathFindSearch::GetSplinePointWithLookahead(CVector3f& point, const CVector3f& pos,
                                                  int waypoint, float lookahead) const {
  const int count = x4_waypoints.size();
  if (count > 1 && waypoint < count - 1) {
    const CVector3f& a = x4_waypoints[waypoint];
    const CVector3f& b = x4_waypoints[waypoint + 1];
    CVector3f delta = b - a;
    if (delta.IsMagnitudeSafe()) {
      const float distance = delta.Magnitude();
      delta *= 1.f / distance;
      const float projected = CVector3f::Dot(pos - a, delta);
      if (projected + lookahead <= distance) {
        const CVector3f advance = pos + delta * lookahead;
        GetSplinePoint(point, advance, waypoint);
      } else {
        lookahead -= distance - projected;
        if (waypoint < count - 2) {
          GetSplinePointWithLookahead(point, b, waypoint + 1, lookahead);
        } else {
          point = b + delta * lookahead;
        }
      }
    } else {
      point = b;
    }
  }
}

void CPathFindSearch::GetSplinePointWithLookahead(CVector3f& point, const CVector3f& pos,
                                                  float lookahead) const {
  GetSplinePointWithLookahead(point, pos, xc8_curWaypoint, lookahead);
}

float CPathFindSearch::RemainingPathDistance(const CVector3f& pos) const {
  float distance = 0.f;
  const int count = x4_waypoints.size();
  if (xc8_curWaypoint < count - 1) {
    distance += (x4_waypoints[xc8_curWaypoint + 1] - pos).Magnitude();
    for (int i = xc8_curWaypoint + 1; i < count - 1; ++i) {
      distance += (x4_waypoints[i + 1] - x4_waypoints[i]).Magnitude();
    }
  }
  return distance;
}
