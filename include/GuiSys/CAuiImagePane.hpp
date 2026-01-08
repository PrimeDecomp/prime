#ifndef _CAUIIMAGEPANE
#define _CAUIIMAGEPANE

#include "GuiSys/CGuiWidget.hpp"
#include <Kyoto/TToken.hpp>
#include <rstl/optional_object.hpp>

class CTexture;
class CAuiImagePane : public CGuiWidget {
public:
  static CGuiWidget* Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp);

  void WriteData(COutputStream& out, bool) const;
  CAuiImagePane(const CGuiWidget::CGuiWidgetParms&, CSimplePool* sp, CAssetId tex0, CAssetId tex1,
                const rstl::reserved_vector< CVector3f, 4 >& coords,
                const rstl::reserved_vector< CVector2f, 4 >& uvs, bool initTex);

private:
  rstl::optional_object< TLockedToken< CTexture > > xb8_tex0Tok;
  CAssetId xc8_tex0;
  CAssetId xcc_tex1;
  CVector2f xd0_uvBias1;
  CVector2f xd8_uvBias2;
  rstl::reserved_vector< CVector3f, 4 > xe0_coords;
  rstl::reserved_vector< CVector2f, 4 > x114_coords;
  CVector2f x138_tileSize;
  float x140_interval;
  float x144_frameTimer;
  float x148_fadeDuration;
  float x14c_deResFactor;
  float x150_flashFactor;
};

#endif // _CAUIIMAGEPANE
