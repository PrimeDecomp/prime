#include "Kyoto/Animation/CSkinnedModel.hpp"

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Graphics/CModel.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/list.hpp"
#include "rstl/pair.hpp"
#include "rstl/vector.hpp"

#pragma inline_max_size(250)

typedef rstl::pair< CVector3f, rstl::list< uint > > TPosToVertListPair;

CSkinnedModelWithAvgNormals::CSkinnedModelWithAvgNormals(const CSkinnedModel& skinnedModel)
: x0_skinnedModel(skinnedModel), x3c_avgNormals(rs_new float[skinnedModel.GetNumPoints() * 12]) {
  int vertexCount = skinnedModel.GetNumPoints();
  const CVector3f* modelPositions =
      reinterpret_cast< const CVector3f* >(skinnedModel.GetModel()->GetPositions());

  rstl::vector< TPosToVertListPair > vertMap;
  vertMap.reserve(vertexCount);

  for (uint vertIdx = 0; vertIdx < vertexCount; ++vertIdx) {
    bool foundEqPos = false;
    uint vopolSize = vertMap.size();
    for (uint i = 0; i < vopolSize; ++i) {
      if (vertMap[i].first.IsEqu(modelPositions[vertIdx])) {
        foundEqPos = true;
        break;
      }
    }

    if (!foundEqPos) {
      rstl::list< uint > tmpList;
      for (uint j = vertIdx; j < vertexCount; ++j) {
        if (modelPositions[j] == modelPositions[vertIdx]) {
          tmpList.push_back(j);
        }
      }
      vertMap.push_back(TPosToVertListPair(modelPositions[vertIdx], tmpList));
    }
  }

  const CVector3f* normals =
      reinterpret_cast< const CVector3f* >(skinnedModel.GetModel()->GetNormals());
  float* avgNormals = x3c_avgNormals.get();

  TPosToVertListPair* mapCur = vertMap.xc_items;
  TPosToVertListPair* mapEnd = mapCur + vertMap.x4_count;
  while (mapCur != mapEnd) {
    CVector3f accum(0.f, 0.f, 0.f);

    AUTO(lit, mapCur->second.begin());
    AUTO(listEnd, mapCur->second.end());
    for (; lit != listEnd; ++lit) {
      accum += normals[*lit];
    }

    lit = mapCur->second.begin();
    CVector3f normalized = accum.AsNormalized();
    for (; lit != listEnd; ++lit) {
      reinterpret_cast< CVector3f* >(avgNormals)[*lit] = normalized;
    }
    ++mapCur;
  }
}
