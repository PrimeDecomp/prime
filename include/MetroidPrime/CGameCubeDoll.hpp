#ifndef _CGAMECUBEDOLL
#define _CGAMECUBEDOLL

#include "Kyoto/TToken.hpp"

#include "rstl/single_ptr.hpp"
#include "rstl/vector.hpp"

class CActorLights;
class CModel;
class CLight;

class CGameCubeDoll {
public:
  CGameCubeDoll();
  ~CGameCubeDoll();

  void Update(float dt);
  void Draw(float alpha);
  void Touch();
  bool CheckLoadComplete();
  bool IsLoaded() const;

private:
  CToken x0_model;
  rstl::vector< CLight > x8_lights;
  rstl::single_ptr< CActorLights > x18_actorLights;
  float x1c_fader;
  bool x20_24_loaded : 1;
  
  void UpdateActorLights();
};

#endif // _CGAMECUBEDOLL
