#include "Kyoto/Math/CLine.hpp"
#include "WorldFormat/CAreaOctTree.hpp"
#include "math.h"

static bool _close_enough(const float a, const float b, const float epsilon) {
  return fabs(a - b) <= epsilon;
}

static bool BoxLineTest(const CAABox& box, const CLine& line, float& lT, float& hT) {

  const CVector3f& min = box.GetMinPoint();
  const CVector3f& max = box.GetMaxPoint();
  CVector3f lineRefPoint = line.GetRefPoint();
  CUnitVector3f lineNormal = line.GetNormal();
  lT = -FLT_MAX;
  hT = FLT_MAX;

  for (int i = 0; i < 3; i++) {
    if (_close_enough(lineNormal[i], 0.f, 0.0001f)) {
      if (lineRefPoint[i] < min[i] || lineRefPoint[i] > max[i]) {
        return false;
      }
    } else {

      if (lineNormal[i] < 0.f) {
        const float tmpN = (1.f / lineNormal[i]);
        const float tmpH = max[i] - lineRefPoint[i];
        const float tmpL = min[i] - lineRefPoint[i];
        if (tmpH < lT * lineNormal[i]) {
          lT = tmpH * tmpN;
        }
        if (tmpL > hT * lineNormal[i]) {
          hT = tmpL * tmpN;
        }
      } else {
        const float tmpN = (1.f / lineNormal[i]);
        const float tmpL = min[i] - lineRefPoint[i];
        const float tmpH = max[i] - lineRefPoint[i];
        if (tmpL > lT * lineNormal[i]) {
          lT = tmpL * tmpN;
        }
        if (tmpH < hT * lineNormal[i]) {
          hT = tmpH * tmpN;
        }
      }
    }
  }

  return lT <= hT;
}

void CAreaOctTree::Node::LineTestEx(const CLine& line, const CMaterialFilter& filter,
                                    SRayResult& res, float length) const {
  if (x20_nodeType == kTT_Invalid) {
    return;
  }

  float lT = 0.f;
  float hT = 0.f;
  if (!BoxLineTest(x0_aabb, line, lT, hT)) {
    return;
  }

  LineTestExInternal(line, filter, res, lT - 0.0001f, hT + 0.0001f, length,
                     CVector3f(1.f / line.GetNormal().GetX(), 1.f / line.GetNormal().GetY(),
                               1.f / line.GetNormal().GetZ()));
}

bool CAreaOctTree::Node::LineTest(const CLine& line, const CMaterialFilter& filter,
                                  const float length) const {
  if (x20_nodeType == kTT_Invalid) {
    return true;
  }

  float lT = 0.f;
  float hT = 0.f;
  if (!BoxLineTest(x0_aabb, line, lT, hT)) {
    return true;
  }

  return LineTestInternal(line, filter, lT - 0.0001f, hT + 0.0001f, length,
                          CVector3f(1.f / line.GetNormal().GetX(), 1.f / line.GetNormal().GetY(),
                                    1.f / line.GetNormal().GetZ()));
}