#include "MetroidPrime/PathFinding/CPathFindSearch.hpp"

#include "MetroidPrime/PathFinding/CPathFindArea.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

CPFOpenList::CPFOpenList() {
  x40_region.SetData(&x90_regionData);
  Clear();
}

CPathFindSearch::CPathFindSearch(CPFArea* area, uint flags, uint index, float chRadius,
                                 float chHeight)
: x0_area(area)
, xc8_curWaypoint(0)
, xd0_chHeight(chHeight)
, xd4_chRadius(chRadius)
, xd8_padding(10.f)
, xdc_flags(flags)
, xe0_indexMask(1 << index) {}

CPathFindSearch::EResult CPathFindSearch::Search(const CVector3f& source,
                                                 const CVector3f& destination) {
  bool outsideSource = false;
  bool outsideDest = false;
  x4_waypoints.clear();
  xc8_curWaypoint = 0;
  if (!x0_area) {
    xcc_result = kR_InvalidArea;
    return xcc_result;
  }
  if (x0_area->GetNumRegions() > 512) {
    xcc_result = kR_InvalidArea;
    return xcc_result;
  }
  if (close_enough(source, destination)) {
    x4_waypoints.push_back(source);
    xcc_result = kR_Success;
    return xcc_result;
  }

  CVector3f localSource = x0_area->GetTransform().TransposeMultiply(source);
  CVector3f localDest = x0_area->GetTransform().TransposeMultiply(destination);
  if (!(xdc_flags & 2) && !(xdc_flags & 4)) {
    localSource[kDZ] += 0.3f;
    localDest[kDZ] += 0.3f;
  }

  rstl::reserved_vector< CVector3f, 16 > points;
  rstl::reserved_vector< CPFRegion*, 4 > sourceRegions;
  if (x0_area->FindRegions(sourceRegions, localSource, xdc_flags, xe0_indexMask) == 0) {
    CPFRegion* region =
        x0_area->FindClosestRegion(localSource, xdc_flags, xe0_indexMask, xd8_padding);
    if (!region) {
      xcc_result = kR_NoSourcePoint;
      return xcc_result;
    }
    if (xdc_flags & 2 || xdc_flags & 4) {
      outsideSource = true;
      points.push_back(localSource);
    }
    sourceRegions.push_back(region);
    localSource = x0_area->GetClosestPoint();
  }

  CVector3f finalDest = localDest;
  rstl::reserved_vector< CPFRegion*, 4 > destRegions;
  if (x0_area->FindRegions(destRegions, localDest, xdc_flags, xe0_indexMask) == 0) {
    CPFRegion* region =
        x0_area->FindClosestRegion(localDest, xdc_flags, xe0_indexMask, xd8_padding);
    if (!region) {
      xcc_result = kR_NoDestPoint;
      return xcc_result;
    }
    if (xdc_flags & 2 || xdc_flags & 4) {
      outsideDest = true;
    }
    destRegions.push_back(region);
    localDest = x0_area->GetClosestPoint();
  }

  rstl::reserved_vector< CPFRegion*, 4 > uniqueSources;
  rstl::reserved_vector< CPFRegion*, 4 > uniqueDests;
  bool noPath = true;
  for (int i = 0; i < sourceRegions.size(); ++i) {
    for (int j = 0; j < destRegions.size(); ++j) {
      if (sourceRegions[i] == destRegions[j]) {
        if (!(xdc_flags & 2) && !(xdc_flags & 4)) {
          destRegions[j]->DropToGround(localSource);
          destRegions[j]->DropToGround(localDest);
        }
        const CTransform4f& transform = x0_area->GetTransform();
        x4_waypoints.push_back(transform * localSource);
        if (!close_enough(localSource, localDest)) {
          x4_waypoints.push_back(transform * localDest);
        }
        if (outsideDest && !close_enough(localDest, finalDest)) {
          x4_waypoints.push_back(transform * finalDest);
        }
        xcc_result = kR_Success;
        return xcc_result;
      }
      if (x0_area->PathExists(sourceRegions[i], destRegions[j], xdc_flags)) {
        int sourceIdx = uniqueSources.size();
        while (--sourceIdx >= 0) {
          if (uniqueSources[sourceIdx] == sourceRegions[i]) {
            break;
          }
        }
        if (sourceIdx < 0) {
          uniqueSources.push_back(sourceRegions[i]);
        }
        int destIdx = uniqueDests.size();
        while (--destIdx >= 0) {
          if (uniqueDests[destIdx] == destRegions[j]) {
            break;
          }
        }
        if (destIdx < 0) {
          uniqueDests.push_back(destRegions[j]);
        }
        noPath = false;
      }
    }
  }

  if (noPath || !Search(uniqueSources, localSource, uniqueDests, localDest)) {
    xcc_result = kR_NoPath;
    return xcc_result;
  }

  CPFRegion* destRegion = uniqueDests[0];
  CPFRegion* sourceRegion = uniqueSources[0];
  CPFRegion* region = destRegion;
  int numLinks = 0;
  do {
    CPFRegion* parent = region->Data()->GetParent();
    parent->SetLinkTo(region->GetIndex());
    region = parent;
    ++numLinks;
  } while (region != sourceRegion);

  bool includeDest = true;
  int lastPoint = numLinks - 1;
  int firstPoint = (outsideSource ? 1 : 0) + 1;
  lastPoint += firstPoint;
  if (lastPoint >= points.capacity()) {
    lastPoint = points.capacity() - 1;
  }
  int outsidePoints = outsideDest ? 1 : 0;
  int pointCount = lastPoint + outsidePoints;
  if (pointCount + 1 >= points.capacity()) {
    includeDest = false;
  }
  if (!(xdc_flags & 2) && !(xdc_flags & 4)) {
    sourceRegion->DropToGround(localSource);
    destRegion->DropToGround(localDest);
  }

  float halfHeight = 0.5f * xd0_chHeight;
  points.push_back(localSource);
  region = sourceRegion;
  for (int i = firstPoint; i <= lastPoint; ++i) {
    const CPFLink* link = region->GetPathLink();
    CPFRegion* linkRegion = &x0_area->GetRegion(link->GetRegion());
    CVector3f midpoint = region->GetLinkMidPoint(*link);
    if (xdc_flags & 2 || xdc_flags & 4) {
      midpoint[kDZ] = CMath::Clamp(halfHeight + midpoint[kDZ], destination[kDZ],
                                   CMath::Min(region->GetHeight(), linkRegion->GetHeight()) +
                                       midpoint[kDZ] - halfHeight);
    }
    points.push_back(midpoint);
    region = linkRegion;
  }
  if (includeDest) {
    points.push_back(localDest);
    if (outsideDest) {
      points.push_back(finalDest);
    }
  }

  for (int i = 0; i < 2; ++i) {
    region = sourceRegion;
    for (int j = firstPoint; j <= (includeDest ? lastPoint : lastPoint - 1); ++j) {
      const CPFLink* link = region->GetPathLink();
      CPFRegion* linkRegion = &x0_area->GetRegion(link->GetRegion());
      if (xdc_flags & 2 || xdc_flags & 4) {
        float height = CMath::Min(region->GetHeight(), linkRegion->GetHeight());
        points[j] = region->FitThroughLink3d(points[j - 1], *link, height, points[j + 1],
                                             xd4_chRadius, halfHeight);
      } else {
        points[j] = region->FitThroughLink2d(points[j - 1], *link, points[j + 1], xd4_chRadius);
      }
      region = linkRegion;
    }
  }

  const CTransform4f& transform = x0_area->GetTransform();
  for (int i = 0; i < points.size(); ++i) {
    if (i == points.size() - 1 || !close_enough(points[i], points[i + 1])) {
      x4_waypoints.push_back(transform * points[i]);
    }
  }
  xcc_result = kR_Success;
  return xcc_result;
}

bool CPathFindSearch::Search(rstl::reserved_vector< CPFRegion*, 4 >& sourceRegions,
                             const CVector3f& source,
                             rstl::reserved_vector< CPFRegion*, 4 >& destRegions,
                             const CVector3f& destination) {
  CPFBitSet& closedSet = x0_area->ClosedSet();
  CPFOpenList& openList = x0_area->OpenList();
  closedSet.Clear();
  openList.Clear();

  rstl::reserved_vector< CVector3f, 4 > destCentroids;
  for (int i = 0; i < destRegions.size(); ++i) {
    destCentroids.push_back(destRegions[i]->GetCentroid());
    destRegions[i]->SetCentroid(destination);
  }
  rstl::reserved_vector< CVector3f, 4 > sourceCentroids;
  float h = (destination - source).Magnitude();
  for (int i = 0; i < sourceRegions.size(); ++i) {
    CPFRegion* region = sourceRegions[i];
    sourceCentroids.push_back(region->GetCentroid());
    region->SetCentroid(source);
    region->Data()->Setup(nullptr, 0.f, h);
    openList.Push(region);
  }

  CPFRegion* region;
  while ((region = openList.Pop()) != nullptr) {
    for (int i = 0; i < destRegions.size(); ++i) {
      if (region == destRegions[i]) {
        goto found;
      }
    }
    closedSet.Add(region->GetIndex());
    for (int i = 0; i < region->GetNumLinks(); ++i) {
      CPFRegion* linkRegion = &x0_area->GetRegion(region->GetLink(i)->GetRegion());
      if (linkRegion != region->Data()->GetParent() &&
          (linkRegion->GetFlags() & 0xff & xdc_flags) &&
          ((linkRegion->GetFlags() >> 16) & 0xff & xe0_indexMask)) {
        float distance =
            CMath::FastSqrtF((linkRegion->GetCentroid() - region->GetCentroid()).MagSquared());
        float parentG = region->Data()->GetG();
        float g = parentG + distance;
        if ((!closedSet.Test(linkRegion->GetIndex()) && !openList.Test(linkRegion)) ||
            !(linkRegion->Data()->GetG() <= g)) {
          if (openList.Test(linkRegion)) {
            openList.Pop(linkRegion);
            linkRegion->Data()->Setup(region, g);
          } else {
            closedSet.Rmv(linkRegion->GetIndex());
            float nextH = CMath::FastSqrtF((destination - linkRegion->GetCentroid()).MagSquared());
            linkRegion->Data()->Setup(region, g, nextH);
          }
          openList.Push(linkRegion);
        }
      }
    }
  }

found:
  for (int i = 0; i < sourceRegions.size(); ++i) {
    sourceRegions[i]->SetCentroid(sourceCentroids[i]);
  }
  for (int i = 0; i < destRegions.size(); ++i) {
    destRegions[i]->SetCentroid(destCentroids[i]);
  }
  if (region) {
    destRegions.clear();
    destRegions.push_back(region);
    while (region->Data()->GetParent()) {
      region = region->Data()->GetParent();
    }
    sourceRegions.clear();
    sourceRegions.push_back(region);
  }
  return region != nullptr;
}

CPathFindSearch::EResult CPathFindSearch::FindClosestReachablePoint(const CVector3f& source,
                                                                    CVector3f& destination) const {
  if (!x0_area) {
    return kR_InvalidArea;
  }

  CVector3f localSource = x0_area->GetTransform().TransposeMultiply(source);
  CVector3f localDest = x0_area->GetTransform().TransposeMultiply(destination);
  if (!(xdc_flags & 2) && !(xdc_flags & 4)) {
    localSource[kDZ] += 0.3f;
    localDest[kDZ] += 0.3f;
  }

  rstl::reserved_vector< CPFRegion*, 4 > regions;
  if (x0_area->FindRegions(regions, localSource, xdc_flags, xe0_indexMask) == 0) {
    CPFRegion* region =
        x0_area->FindClosestRegion(localSource, xdc_flags, xe0_indexMask, xd8_padding);
    if (!region) {
      return kR_NoSourcePoint;
    }
    regions.push_back(region);
  }

  CVector3f closestPoint =
      x0_area->FindClosestReachablePoint(regions, localDest, xdc_flags, xe0_indexMask);
  closestPoint[kDZ] += 0.3f;
  destination = x0_area->GetTransform() * closestPoint;
  return kR_Success;
}

CPathFindSearch::EResult CPathFindSearch::PathExists(const CVector3f& source,
                                                     const CVector3f& destination) const {
  if (!x0_area) {
    return kR_InvalidArea;
  }

  CVector3f localSource = x0_area->GetTransform().TransposeMultiply(source);
  CVector3f localDest = x0_area->GetTransform().TransposeMultiply(destination);
  if (!(xdc_flags & 2) && !(xdc_flags & 4)) {
    localSource[kDZ] += 0.3f;
    localDest[kDZ] += 0.3f;
  }

  rstl::reserved_vector< CPFRegion*, 4 > sourceRegions;
  if (x0_area->FindRegions(sourceRegions, localSource, xdc_flags, xe0_indexMask) == 0) {
    return kR_NoSourcePoint;
  }
  rstl::reserved_vector< CPFRegion*, 4 > destRegions;
  if (x0_area->FindRegions(destRegions, localDest, xdc_flags, xe0_indexMask) == 0) {
    return kR_NoDestPoint;
  }
  for (int i = 0; i < sourceRegions.size(); ++i) {
    for (int j = 0; j < destRegions.size(); ++j) {
      if (sourceRegions[i] == destRegions[j] ||
          x0_area->PathExists(sourceRegions[i], destRegions[j], xdc_flags)) {
        return kR_Success;
      }
    }
  }
  return kR_NoPath;
}

CPathFindSearch::EResult CPathFindSearch::OnPath(const CVector3f& point) const {
  if (!x0_area) {
    return kR_InvalidArea;
  }
  CVector3f localPoint = x0_area->GetTransform().TransposeMultiply(point);
  if (!(xdc_flags & 2) && !(xdc_flags & 4)) {
    localPoint[kDZ] += 0.3f;
  }
  rstl::reserved_vector< CPFRegion*, 4 > regions;
  if (x0_area->FindRegions(regions, localPoint, xdc_flags, xe0_indexMask) == 0) {
    return kR_NoSourcePoint;
  }
  return kR_Success;
}
