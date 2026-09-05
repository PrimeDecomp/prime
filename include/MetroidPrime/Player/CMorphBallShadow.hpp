#ifndef _CMORPHBALLSHADOW
#define _CMORPHBALLSHADOW
#include "Kyoto/Math/CAABox.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include <Kyoto/Graphics/CTexture.hpp>
#include <Kyoto/TToken.hpp>
#include <rstl/list.hpp>
#include <rstl/vector.hpp>

class CAABox;
class CActor;
class CPlayer;
class CStateManager;
class CTexture;
template < typename T >
class TToken;

class CMorphBallShadow {
public:
  CMorphBallShadow(int width, int height, const TToken< CTexture >& ballFade);
  ~CMorphBallShadow();

  void Render(CStateManager&, float);
  void RenderIdBuffer(const CAABox&, CStateManager&, CPlayer&);

private:
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

#endif // _CMORPHBALLSHADOW
