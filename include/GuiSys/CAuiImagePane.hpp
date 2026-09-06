#ifndef _CAUIIMAGEPANE
#define _CAUIIMAGEPANE

#include "GuiSys/CGuiWidget.hpp"
#include "Kyoto/TToken.hpp"
#include "rstl/optional_object.hpp"

class CTexture;
class CAuiImagePane : public CGuiWidget {
public:
  ~CAuiImagePane() {}
  void Update(float dt) override;
  void Draw(const CGuiWidgetDrawParms& parms) const override;
  FourCC GetWidgetTypeID() const override { return 'IMGP'; }
  bool GetIsFinishedLoadingWidgetSpecific() const override;
  virtual void WriteData(COutputStream& out, bool) const;

  static CGuiWidget* Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp);

  CAuiImagePane(const CGuiWidget::CGuiWidgetParms&, CSimplePool* sp, CAssetId tex0, CAssetId tex1,
                const rstl::reserved_vector< CVector3f, 4 >& coords,
                const rstl::reserved_vector< CVector2f, 4 >& uvs, bool initTex);
  void SetTextureID0(CAssetId tex, CSimplePool* sp);
  void SetAnimationParms(const CVector2f& tileSize, float interval, float fadeDuration);

private:
  void DoDrawImagePane(CColor color, const CTexture& texture, int frame, float alpha,
                       bool noBlur) const;

  mutable rstl::optional_object< TCachedToken< CTexture > > xb8_tex0Tok;
  CAssetId xc8_tex0;
  CAssetId xcc_tex1;
  CVector2f xd0_uvBias0;
  CVector2f xd8_uvBias1;
  rstl::reserved_vector< CVector3f, 4 > xe0_coords;
  rstl::reserved_vector< CVector2f, 4 > x114_uvs;
  CVector2f x138_tileSize;
  float x140_interval;
  float x144_frameTimer;
  float x148_fadeDuration;
  float x14c_deResFactor;
  float x150_flashFactor;
};
CHECK_SIZEOF(CAuiImagePane, 0x154)

#endif // _CAUIIMAGEPANE
