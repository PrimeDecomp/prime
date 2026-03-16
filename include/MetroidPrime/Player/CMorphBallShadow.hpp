#ifndef _CMORPHBALLSHADOW
#define _CMORPHBALLSHADOW

class CAABox;
class CPlayer;
class CStateManager;
class CTexture;
template < typename T >
class TToken;

class CMorphBallShadow {
  char x0_pad[0xd4];

public:
  CMorphBallShadow(int, int, const TToken< CTexture >&);
  ~CMorphBallShadow();

  void Render(CStateManager&, float);
  void RenderIdBuffer(const CAABox&, CStateManager&, CPlayer&);
};

#endif // _CMORPHBALLSHADOW
