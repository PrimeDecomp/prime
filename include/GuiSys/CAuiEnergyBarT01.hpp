#ifndef _CAUIENERGYBART01
#define _CAUIENERGYBART01

#include "GuiSys/CGuiWidget.hpp"
#include "Kyoto/SObjectTag.hpp"

#include <Kyoto/Graphics/CTexture.hpp>
#include <Kyoto/TToken.hpp>
#include <rstl/optional_object.hpp>

class IObjectStore;
class CAuiEnergyBarT01 : public CGuiWidget {
public:
  enum ESetMode {
    kSM_Normal,
    kSM_Wrapped,
    kSM_Instant,
  };

  typedef rstl::pair< CVector3f, CVector3f > (*FCoordFunc)(float t);

  static CAuiEnergyBarT01* Create(CGuiFrame* frame, CInputStream& in, IObjectStore* sp);
  CAuiEnergyBarT01(const CGuiWidgetParms& parms, IObjectStore* sp, CAssetId textureId);

  void SetMaxEnergy(float maxEnergy);
  void SetCurrEnergy(float energy, ESetMode mode);
  void Update(float dt) override;
  void Draw(const CGuiWidgetDrawParms& parms) const override;

  float GetActualFraction() const;
  FourCC GetWidgetTypeID() const override;

private:
  static rstl::pair< CVector3f, CVector3f > DownloadBarCoordFunc(float t);

  CAssetId mTextureId;                                        // 0xb8
  rstl::optional_object< TCachedToken< CTexture > > mTexture; // 0xbc
  CColor mEmptyColor;                                         // 0xcc
  CColor mFilledColor;                                        // 0xd0
  CColor mShadowColor;                                        // 0xd4
  FCoordFunc mCoordFunc;                                      // 0xd8
  float mTesselation;                                         // 0xdc
  float mMaxEnergy;                                           // 0xe0
  float mFilledSpeed;                                         // 0xe4
  float mShadowSpeed;                                         // 0xe8
  float mShadowDrainDelay;                                    // 0xec
  bool mAlwaysResetDelayTimer;                                // 0xf0
  bool mWrapping;                                             // 0xf1
  float mSetEnergy;                                           // 0xf4
  float mFilledEnergy;                                        // 0xf8
  float mShadowEnergy;                                        // 0xfc
  float mShadowDrainDelayTimer;                               // 0x100
};

#endif // _CAUIENERGYBART01
