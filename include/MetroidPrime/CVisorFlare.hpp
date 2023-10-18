#ifndef _CVISORFLARE
#define _CVISORFLARE

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/TToken.hpp"


#include "rstl/optional_object.hpp"
#include "rstl/vector.hpp"


class CTexture;
class CStateManager;
class CVector3f;
class CActor;

class CVisorFlare {
public:
  enum EBlendMode {
    kBM_Additive = 0,
    kBM_Blend = 1,
  };
  class CFlareDef {
    mutable TToken< CTexture > x0_tex;
    float x8_pos;
    float xc_scale;
    CColor x10_color;

  public:
    // CFlareDef() = default;
    // CFlareDef(const CFlareDef& other)
    // : x0_tex(other.x0_tex)
    // , x8_pos(other.x8_pos)
    // , xc_scale(other.xc_scale)
    // , x10_color(other.x10_color)
    // {}
    CFlareDef(const TToken< CTexture >& tex, float pos, float scale, uint color);

    TToken< CTexture >& GetTexture() const { return x0_tex; }
    CColor GetColor() const { return x10_color; }
    float GetPosition() const { return x8_pos; }
    float GetScale() const { return xc_scale; }
  };

  CVisorFlare(EBlendMode blendMode, bool, float, float, float, uint, uint,
              const rstl::vector< CFlareDef >& flares);
  ~CVisorFlare() {}

  void Update(float dt, const CVector3f& pos, const CActor* act, CStateManager& mgr);
  void Render(const CVector3f& pos, const CStateManager& mgr) const;
  static rstl::optional_object< CFlareDef > LoadFlareDef(CInputStream& in);

private:
  EBlendMode x0_blendMode;
  rstl::vector< CFlareDef > x4_flareDefs;
  bool x14_b1;
  float x18_f1;
  float x1c_f2;
  float x20_f3;
  float x24_;
  float x28_;
  int x2c_w1;
  int x30_w2;

  void SetupRenderState(const CStateManager& mgr) const;
  void ResetTevSwapMode(const CStateManager& mgr) const;
  void DrawDirect(const CColor& color, float f1, float f2) const;
  void DrawStreamed(const CColor& color, float f1, float f2) const;
};

#endif // _CVISORFLARE
