#ifndef _CPARTICLEELECTRIC
#define _CPARTICLEELECTRIC

#include "Kyoto/Particles/CParticleGen.hpp"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"
#include "rstl/aligned_allocator.hpp"
#include "rstl/auto_ptr.hpp"
#include "rstl/list.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CElectricDescription;
class CElementGen;
class CParticleSwoosh;

class CParticleElectric : public CParticleGen {
public:
  explicit CParticleElectric(TToken< CElectricDescription > desc);

  ~CParticleElectric() override;
  const bool Update(double) override;
  void Render() override;
  void SetOrientation(const CTransform4f& orientation) override;
  void SetTranslation(const CVector3f& translation) override;
  void SetGlobalOrientation(const CTransform4f& orientation) override;
  void SetGlobalTranslation(const CVector3f& translation) override;
  void SetGlobalScale(const CVector3f& scale) override;
  void SetLocalScale(const CVector3f& scale) override;
  void SetParticleEmission(const bool emission) override;
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

  class CLineManager {
    friend class CParticleElectric;
    rstl::vector< CVector3f, rstl::aligned_allocator > x0_verts;
    float x10_width1;
    float x14_width2;
    float x18_width3;
    CColor x1c_color1;
    CColor x20_color2;
    CColor x24_color3;
    CAABox x28_bounds;

  public:
    CLineManager()
    : x10_width1(1.f)
    , x14_width2(2.f)
    , x18_width3(3.f)
    , x1c_color1(CColor::White())
    , x20_color2(CColor::White())
    , x24_color3(CColor::White())
    , x28_bounds(CAABox::MakeMaxInvertedBox()) {}
  };

  class CParticleElectricManager {
    friend class CParticleElectric;
    uint x0_idx;
    uint x4_slif;
    uint x8_startFrame;
    uint xc_endFrame;
    int x10_gpsmIdx;
    int x14_epsmIdx;

  public:
    CParticleElectricManager(uint idx, uint slif, uint startFrame)
    : x0_idx(idx)
    , x4_slif(slif)
    , x8_startFrame(startFrame)
    , xc_endFrame(startFrame + slif)
    , x10_gpsmIdx(-1)
    , x14_epsmIdx(-1) {}
  };

  void ForceParticleCreation(int count);
  void SetOverrideIPos(const CVector3f& vec) { x178_overrideIPos = vec; }
  void SetOverrideIVel(const CVector3f& vec) { x188_overrideIVel = vec; }
  void SetOverrideFPos(const CVector3f& vec) { x198_overrideFPos = vec; }
  void SetOverrideFVel(const CVector3f& vec) { x1a8_overrideFVel = vec; }
  static void SetGlobalSeed(ushort seed) { sSeed = seed; }

private:
  void SetupLineGXMaterial();
  void DrawLineStrip(const rstl::vector< CVector3f, rstl::aligned_allocator >& verts, float width,
                     const CColor& color);
  void RenderLines();
  void RenderSwooshes();
  void UpdateCachedTransform();
  void UpdateLine(int idx, int frame);
  void UpdateElectricalEffects();
  void CalculateFractal(int start, int end, float ampl, float ampd);
  void CalculatePoints();
  void CreateNewParticles(int count);
  void AddElectricalEffects();
  void BuildBounds();

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
  float x128_;
  float x12c_renderTime;
  CVector3f x130_minBounds;
  CVector3f x13c_maxBounds;
  float x148_;
  CRandom16 x14c_randState;
  int x150_SSEG;
  int x154_SCNT;
  int x158_;
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
  rstl::vector< rstl::auto_ptr< CElementGen > > x400_gpsmGenerators;
  rstl::vector< rstl::auto_ptr< CElementGen > > x410_epsmGenerators;
  rstl::vector< CVector3f, rstl::aligned_allocator > x420_calculatedVerts;
  rstl::vector< float > x430_fractalMags;
  rstl::vector< CVector3f > x440_fractalOffsets;
  bool x450_24_emitting : 1;
  bool x450_25_haveGPSM : 1;
  bool x450_26_haveEPSM : 1;
  bool x450_27_haveSSWH : 1;
  bool x450_28_haveLWD : 1;
  bool x450_29_transformDirty : 1;

  static ushort sSeed;
};
CHECK_SIZEOF(CParticleElectric, 0x458)
NESTED_CHECK_SIZEOF(CParticleElectric, CLineManager, 0x40)
NESTED_CHECK_SIZEOF(CParticleElectric, CParticleElectricManager, 0x18)

#endif // _CPARTICLEELECTRIC
