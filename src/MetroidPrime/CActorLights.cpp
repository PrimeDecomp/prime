#include "MetroidPrime/CActorLights.hpp"

#include "MetroidPrime/CGameArea.hpp"

#include "WorldFormat/CWorldLight.hpp"

#include "rstl/algorithm.hpp"

// TODO: move
enum EPVSVisSetState { kVSS_EndOfTree, kVSS_NodeFound, kVSS_OutOfBounds };

struct SLightValue {
  int x0_areaLightIdx;
  CColor x4_color;
  uchar x8_pad[0x8];
  float x10_colorMag;
  float x14_accumulatedMag;
  EPVSVisSetState x18_visiblity;

  struct CPredicate {
    bool operator()(SLightValue& a, SLightValue& b) {
      return a.x10_colorMag > b.x10_colorMag ? true : false;
    }
  };
};
CHECK_SIZEOF(SLightValue, 0x1c);

bool CActorLights::BuildAreaLightList(const CStateManager& mgr, const CGameArea& area,
                                      const CAABox& aabb) {
  const rstl::vector< CWorldLight >& lightList =
      x298_30_layer2 ? area.GetLightsB() : area.GetLightsA();

  rstl::vector< SLightValue > valList;
  valList.reserve(lightList.size());

  // rstl::sort(&*valList.begin(), &*valList.end(), SLightValue::CPredicate());
}
