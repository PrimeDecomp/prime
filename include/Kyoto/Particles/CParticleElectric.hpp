#ifndef _CPARTICLEELECTRIC
#define _CPARTICLEELECTRIC

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Particles/CParticleGen.hpp"
#include "Kyoto/TToken.hpp"
#include "rstl/aligned_allocator.hpp"
#include "rstl/auto_ptr.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CElectricDescription;
class CElementGen;
class CParticleSwoosh;

class CParticleElectric : public CParticleGen {
public:
  class CLineManager {
  public:
    CLineManager() {
      x10_widths[0] = 1.f;
      x10_widths[1] = 2.f;
      x10_widths[2] = 3.f;
      x1c_colors[0] = CColor::White().GetColor_u32();
      x1c_colors[1] = CColor::White().GetColor_u32();
      x1c_colors[2] = CColor::White().GetColor_u32();
      x28_aabb = CAABox::MakeMaxInvertedBox();
    }
    ~CLineManager() {}
    CColor& GetColor(int i) { return reinterpret_cast< CColor& >(x1c_colors[i]); }
    const CColor& GetColor(int i) const {
      return reinterpret_cast< const CColor& >(x1c_colors[i]);
    }
    rstl::vector< CVector3f, rstl::aligned_allocator > x0_verts;
    float x10_widths[3];
    uint x1c_colors[3];
    CAABox x28_aabb;
  };

  class CParticleElectricManager {
  public:
    CParticleElectricManager(uint idx, uint slif, uint startFrame)
    : x0_idx(idx)
    , x4_slif(slif)
    , x8_startFrame(startFrame)
    , xc_endFrame(startFrame + slif)
    , x10_gpsmIdx(-1)
    , x14_epsmIdx(-1) {}

    uint x0_idx;
    uint x4_slif;
    uint x8_startFrame;
    uint xc_endFrame;
    int x10_gpsmIdx;
    int x14_epsmIdx;
  };

  explicit CParticleElectric(TToken< CElectricDescription > desc);
  ~CParticleElectric() override;

  bool Update(double) override;
  void Render() override;
  void SetOrientation(const CTransform4f& orientation) override;
  void SetTranslation(const CVector3f& translation) override;
  void SetGlobalOrientation(const CTransform4f& orientation) override;
  void SetGlobalTranslation(const CVector3f& translation) override;
  void SetGlobalScale(const CVector3f& scale) override;
  void SetLocalScale(const CVector3f& scale) override;
  void SetParticleEmission(bool emission) override;
  void SetModulationColor(const CColor& col) override;
  const CTransform4f& GetOrientation() const override;
  const CVector3f& GetTranslation() const override;
  const CTransform4f& GetGlobalOrientation() const override;
  const CVector3f& GetGlobalTranslation() const override;
  const CVector3f& GetGlobalScale() const override { return xe0_globalScale; }
  bool GetParticleEmission() const override { return x450_24_emitting; }
  const CColor& GetModulationColor() const override { return x1b8_moduColor; }
  bool IsSystemDeletable() const override;
  rstl::optional_object< CAABox > GetBounds() const override;
  int GetParticleCount() const override;
  bool SystemHasLight() const override;
  CLight GetLight() const override;
  void DestroyParticles() override;
  uint Get4CharId() const override;
  void ForceParticleCreation(int count);

  void SetOverrideIPos(const CVector3f& vec) { x178_overrideIPos = vec; }
  void SetOverrideIVel(const CVector3f& vec) { x188_overrideIVel = vec; }
  void SetOverrideFPos(const CVector3f& vec) { x198_overrideFPos = vec; }
  void SetOverrideFVel(const CVector3f& vec) { x1a8_overrideFVel = vec; }

  static ushort sSeed;

private:
  void CalculatePoints();
  void CalculateFractal(int start, int end, float ampl, float ampd);
  void RenderSwooshes();
  void RenderLines();
  void SetupLineGXMaterial();
  void DrawLineStrip(const rstl::vector< CVector3f, rstl::aligned_allocator >& verts, float width,
                     const CColor& color);
  void AddElectricalEffects();
  void CreateNewParticles(int count);
  void UpdateElectricalEffects();
  void UpdateLine(int idx, int frame);
  void BuildBounds();
  void UpdateCachedTransform();

  TLockedToken< CElectricDescription > x1c_elecDesc;
  int x28_currentFrame;
  int x2c_LIFE;
  double x30_curTime;
  CVector3f x38_translation;
  CTransform4f x44_orientation;
  CTransform4f x74_invOrientation;
  CVector3f xa4_globalTranslation;
  CTransform4f xb0_globalOrientation;
  CVector3f xe0_globalScale;
  CVector3f xec_localScale;
  CTransform4f xf8_cachedXf;
  float x128;
  float x12c;
  CVector3f x130_buildBoundsMin;
  CVector3f x13c_buildBoundsMax;
  float x148;
  CRandom16 x14c_randState;
  int x150_SSEG;
  int x154_SCNT;
  int x158;
  float x15c_genRem;
  CAABox x160_systemBounds;
  rstl::optional_object< CVector3f > x178_overrideIPos;
  rstl::optional_object< CVector3f > x188_overrideIVel;
  rstl::optional_object< CVector3f > x198_overrideFPos;
  rstl::optional_object< CVector3f > x1a8_overrideFVel;
  CColor x1b8_moduColor;
  rstl::reserved_vector< bool, 32 > x1bc_allocated;
  rstl::reserved_vector< rstl::auto_ptr< CParticleSwoosh >, 32 > x1e0_swooshGenerators;
  rstl::reserved_vector< rstl::auto_ptr< CLineManager >, 32 > x2e4_lineManagers;
  rstl::list< CParticleElectricManager > x3e8_electricManagers;
  rstl::vector< rstl::auto_ptr< CElementGen >, rstl::aligned_allocator > x400_gpsmGenerators;
  rstl::vector< rstl::auto_ptr< CElementGen >, rstl::aligned_allocator > x410_epsmGenerators;
  rstl::vector< CVector3f, rstl::aligned_allocator > x420_calculatedVerts;
  rstl::vector< float > x430_fractalMags;
  rstl::vector< CVector3f > x440_fractalOffsets;
  bool x450_24_emitting : 1;
  bool x450_25_haveGPSM : 1;
  bool x450_26_haveEPSM : 1;
  bool x450_27_haveSSWH : 1;
  bool x450_28_haveLWD : 1;
  bool x450_29_transformDirty : 1;
};
CHECK_SIZEOF(CParticleElectric, 0x458)

#endif // _CPARTICLEELECTRIC
