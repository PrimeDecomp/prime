#ifndef _CMORPHBALLSHADOW
#define _CMORPHBALLSHADOW

#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/TToken.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/list.hpp"
#include "rstl/vector.hpp"

class CActor;
class CPlayer;
class CStateManager;

class CMorphBallShadow {
public:
  CMorphBallShadow(int width, int height, const TToken< CTexture >& ballFade);
  ~CMorphBallShadow();

  void Render(CStateManager& mgr, float alpha);
  void RenderIdBuffer(const CAABox& aabb, CStateManager& mgr, CPlayer& player);

private:
  void GatherAreas(CStateManager& mgr);
  bool AreasValid(const CStateManager& mgr) const;

  rstl::list< CActor* > x0_actors;
  rstl::list< TAreaId > x18_areas;
  rstl::vector< uint > x30_worldModelBits;
  CTexture x40_texture;
  TToken< CTexture > xa8_ballFade;
  int xb0_width;
  int xb4_height;
  CAABox xb8_shadowVolume;
  bool xd0_hasIds;
};
CHECK_SIZEOF(CMorphBallShadow, 0xd4)

#endif // _CMORPHBALLSHADOW
