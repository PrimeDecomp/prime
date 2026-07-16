#ifndef _CMAPUNIVERSE
#define _CMAPUNIVERSE

#include "types.h"

#include "Kyoto/CFactoryFnReturn.hpp"
#include "Kyoto/CToken.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CInputStream;
class CMapArea;
class CStateManager;

class CMapUniverse {
public:
  class CMapObjectSortInfo {
  public:
    CMapObjectSortInfo(float zDistance, int worldIndex, int areaIndex, int objectIndex,
                       CColor surfaceColor, CColor outlineColor);

    float GetZDistance() const { return mZDistance; }
    int GetWorldIndex() const { return mWorldIndex; }
    int GetAreaIndex() const { return mAreaIndex; }
    int GetObjectIndex() const { return mObjectIndex; }
    CColor GetSurfaceColor() const { return mSurfaceColor; }
    CColor GetOutlineColor() const { return mOutlineColor; }

  private:
    float mZDistance;
    int mWorldIndex;
    int mAreaIndex;
    int mObjectIndex;
    CColor mSurfaceColor;
    CColor mOutlineColor;
  };

  class CMapUniverseDrawParms {
  public:
    CMapUniverseDrawParms(float alpha, int wldIdx, CAssetId wldRes, int closestHex,
                          float flashPulse, const CStateManager& mgr, const CTransform4f& model,
                          const CTransform4f& view);

    float GetAlpha() const { return mAlpha; }
    int GetFocusWorldIndex() const { return mFocusWorldIndex; }
    CAssetId GetFocusWorldRes() const { return mFocusWorldRes; }
    int GetFocusAreaIndex() const { return mFocusAreaIndex; }
    float GetFlashPulse() const { return mFlashPulse; }

    const CStateManager& GetStateManager() const { return mStateManager; }

    const CTransform4f& GetPaneProjectionTransform() const { return mPaneProjectionTransform; }
    const CTransform4f& GetCameraTransform() const { return mCameraTransform; }

  private:
    float mAlpha;
    int mFocusWorldIndex;
    CAssetId mFocusWorldRes;
    int mFocusAreaIndex;
    float mFlashPulse;
    const CStateManager& mStateManager;
    const CTransform4f& mPaneProjectionTransform;
    const CTransform4f& mCameraTransform;
  };

  class CMapAreaData {
  public:
    explicit CMapAreaData(CInputStream& in);

    const CTransform4f& GetTransform() const { return mTransform; }

  private:
    CTransform4f mTransform;
  };

  class CMapWorldData {
  public:
    explicit CMapWorldData(CInputStream& in, uint version);
    CAssetId GetWorldAssetId() const { return x10_worldAssetId; }
    const CVector3f& GetWorldCenterPoint() const { return x64_centerPoint; }
    const rstl::string& GetWorldLabel() const { return x0_label; }
    const CTransform4f& GetWorldTransform() const { return x14_transform; }
    const CMapAreaData& GetMapAreaData(int idx) const { return x44_hexagonXfs[idx]; }
    uint GetNumMapAreaDatas() const { return x44_hexagonXfs.size(); }
    const CColor& GetOutlineColorUnselected() const { return x60_outlineColorUnselected; }
    const CColor& GetOutlineColorSelected() const { return x58_outlineColorSelected; }
    const CColor& GetSurfaceColorUnselected() const { return x5c_surfColorUnselected; }
    const CColor& GetSurfaceColorSelected() const { return x54_surfColorSelected; }

  private:
    rstl::string x0_label;
    CAssetId x10_worldAssetId;
    CTransform4f x14_transform;
    rstl::vector< CMapAreaData > x44_hexagonXfs;
    CColor x54_surfColorSelected;
    CColor x58_outlineColorSelected;
    CColor x5c_surfColorUnselected;
    CColor x60_outlineColorUnselected;
    CVector3f x64_centerPoint;
  };

  explicit CMapUniverse(CInputStream& in, uint version);
  ~CMapUniverse();

  void Draw(const CMapUniverseDrawParms& parms, const CVector3f& pos, float depth1,
            float depth2) const;
  const CMapWorldData& GetMapWorldData(int idx) const { return x10_worldDatas[idx]; }
  const CMapWorldData& GetMapWorldDataByWorldId(CAssetId id);
  uint GetNumMapWorldDatas() const { return x10_worldDatas.size(); }
  float GetMapUniverseRadius() const { return x2c_universeRadius; }
  const CVector3f& GetMapUniverseCenterPoint() const { return x20_universeCenter; }

private:
  CAssetId x0_hexagonId;
  TCachedToken< CMapArea > x4_hexagonToken;
  rstl::vector< CMapWorldData > x10_worldDatas;
  CVector3f x20_universeCenter;
  float x2c_universeRadius;
};

CFactoryFnReturn FMapUniverseFactory(const SObjectTag& tag, CInputStream& in,
                                     const CVParamTransfer& xfer);
#endif // _CMAPUNIVERSE
