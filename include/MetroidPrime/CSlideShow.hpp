#ifndef _CSLIDESHOW
#define _CSLIDESHOW

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/TToken.hpp"
#include "MetroidPrime/CIOWin.hpp"
#include "rstl/pair.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/vector.hpp"

class CDependencyGroup;
class CFinalInput;
class CGuiTextSupport;
class CModel;
class CStaticAudioPlayer;
class CTexture;

class CSlideShow : public CIOWin {
public:
  ~CSlideShow() override;
  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
  bool GetIsContinueDraw() const override;
  void Draw() const override;

  CSlideShow();

  static uint SlideShowGalleryFlags();

private:
  typedef rstl::pair< int, rstl::vector< const SObjectTag* > > SGalleryData;
  struct SSlideData {
    CSlideShow* x0_parent;
    int x4_gallery;
    int x8_slide;
    rstl::auto_ptr< TToken< CTexture > > xc_texture;
    bool x14_ready;
    CVector2f x18_vpOffset;
    CVector2f x20_vpSize;
    CVector2f x28_canvasSize;
    CColor x30_mulColor;

    SSlideData()
    : x0_parent(nullptr)
    , x4_gallery(-1)
    , x8_slide(-1)
    , x14_ready(false)
    , x18_vpOffset(0.f, 0.f)
    , x20_vpSize(0.f, 0.f)
    , x28_canvasSize(0.f, 0.f)
    , x30_mulColor(CColor::White()) {
      x30_mulColor.SetAlpha(0.f);
    }
    bool IsLoaded() const { return !xc_texture.null() && xc_texture->IsLoaded(); }
    bool IsReady() const { return IsLoaded() && x14_ready; }
    void Reset();
    void Draw() const;
    void InitializeViewport();
    EMessageReturn ProcessUserInput(const CFinalInput& input);
  };

  friend struct SSlideData;

  bool LoadTXTRDep(const char* name);
  void BuildGalleryLists(uint flags);
  EMessageReturn ProcessUserInput(const CFinalInput& input);
  EMessageReturn AdvanceSlide(bool forward);
  void LoadSlide();
  bool IsControlsAnimating() const;
  void SetShowControls(bool show);
  float GetControlsTextHeight() const;
  float GetControlsHeight() const;
  void UpdateControls(float dt);
  void UpdateControlsText(const CFinalInput& input);
  void UpdateSlideNumber(float dt);
  void DrawSlideNumber() const;
  void DrawControls() const;
  void DrawControlsBorder() const;
  bool AreAllDepsLoaded(const rstl::vector< TToken< CDependencyGroup > >& deps) const;
  void SetDependenciesLocked(rstl::vector< TToken< CDependencyGroup > >& deps, bool locked);
  void SetTexturesLocked(rstl::vector< CToken >& textures, bool locked);
  void UpdateMusicVolume(float time);
  void SetZoomSfx(bool active);
  void SetPanSfx(bool active);

  int x14_phase;
  rstl::vector< TToken< CDependencyGroup > > x18_galleryTXTRDeps;
  rstl::vector< SGalleryData > x28_galleries;
  rstl::single_ptr< TToken< CModel > > x38_galleryBorder;
  int x3c_;
  int x40_totalSlides;
  int x44_gallery;
  int x48_slide;
  float x4c_crossfadeTimer;
  float x50_repeatTimer;
  float x54_idleTimer;
  float x58_slideNumberTimer;
  SSlideData x5c_slideA;
  SSlideData x90_slideB;
  rstl::single_ptr< CGuiTextSupport > xc4_controlsText;
  rstl::single_ptr< CGuiTextSupport > xc8_slideNumberText;
  rstl::single_ptr< CStaticAudioPlayer > xcc_audio;
  rstl::vector< rstl::auto_ptr< TToken< CTexture > > > xd0_galleryTags;
  CSfxHandle xe0_panSfx;
  CSfxHandle xe4_zoomSfx;
  int xe8_lStick;
  int xec_cStick;
  int xf0_lTrigger;
  int xf4_rTrigger;
  rstl::vector< CToken > xf8_stickTextures;
  rstl::vector< CToken > x108_buttonTextures;
  rstl::vector< CToken > x118_textures;
  float x128_controlsOffset;
  float x12c_slideNumberOffset;
  float x130_fadeTimer;
  bool x134_24_showControls : 1;
  bool x134_25_controlsFadeIn : 1;
  bool x134_26_controlsFadeOut : 1;
  bool x134_27_ : 1;
  bool x134_28_disableInput : 1;
  bool x134_29_exit : 1;
  bool x134_30_introFade : 1;
  bool x134_31_outroFade : 1;
  bool x135_24_galleryChanged : 1;
};
CHECK_SIZEOF(CSlideShow, 0x138)

#endif // _CSLIDESHOW
