#include "MetroidPrime/CMapUniverse.hpp"

#include "Kyoto/CVParamTransfer.hpp"

#pragma inline_max_size(240)

CMapUniverse::CMapObjectSortInfo::CMapObjectSortInfo(float zDistance, int worldIndex, int areaIndex,
                                                     int objectIndex, CColor surfaceColor,
                                                     CColor outlineColor)
: mZDistance(zDistance)
, mWorldIndex(worldIndex)
, mAreaIndex(areaIndex)
, mObjectIndex(objectIndex)
, mSurfaceColor(surfaceColor)
, mOutlineColor(outlineColor) {}

CMapUniverse::CMapUniverseDrawParms::CMapUniverseDrawParms(float alpha, int wldIdx, CAssetId wldRes,
                                                           int closestHex, float flashPulse,
                                                           const CStateManager& mgr,
                                                           const CTransform4f& model,
                                                           const CTransform4f& view)
: mAlpha(alpha)
, mFocusWorldIndex(wldIdx)
, mFocusWorldRes(wldRes)
, mFocusAreaIndex(closestHex)
, mFlashPulse(flashPulse)
, mStateManager(mgr)
, mPaneProjectionTransform(model)
, mCameraTransform(view) {}

CMapUniverse::CMapUniverse(CInputStream& in, uint version)
: x0_hexagonId(in.Get< CAssetId >())
, x4_hexagonToken(gpSimplePool->GetObj(SObjectTag('MAPA', x0_hexagonId)))
, x20_universeCenter(CVector3f::Zero())
, x2c_universeRadius(1600.f) {
  x10_worldDatas.reserve(in.Get< uint >());
  for (int i = 0; i < x10_worldDatas.capacity(); ++i) {
    CMapWorldData wd(in, version);
    x10_worldDatas.push_back(wd);
  }
  x4_hexagonToken.Lock();
}

CMapUniverse::~CMapUniverse() {}

void CMapUniverse::Draw(const CMapUniverseDrawParms& parms, const CVector3f& pos, float depth1,
                        float depth2) const {}
CMapUniverse::CMapAreaData::CMapAreaData(CInputStream& in) : mTransform(in) {}

CMapUniverse::CMapWorldData::CMapWorldData(CInputStream& in, uint version)
: x0_label(in)
, x10_worldAssetId(in.Get< CAssetId >())
, x14_transform(in)
, x44_hexagonXfs(in)
, x54_surfColorSelected(version != 0 ? CColor(in) : CColor(0))
, x58_outlineColorSelected(static_cast< uchar >(255), 0, 255)
, x5c_surfColorUnselected(static_cast< uchar >(255), 0, 255)
, x60_outlineColorUnselected(static_cast< uchar >(255), 0, 255)
, x64_centerPoint(CVector3f::Zero()) {
  if (version == 0) {
    x54_surfColorSelected = CColor(x10_worldAssetId).WithAlphaOf(1.f);
  }

  x58_outlineColorSelected = CColor::Lerp(CColor::White(), x54_surfColorSelected, 0.5f);
  x5c_surfColorUnselected = CColor::Lerp(CColor::Black(), x54_surfColorSelected, 0.5f);
  x60_outlineColorUnselected = CColor::Lerp(CColor::White(), x5c_surfColorUnselected, 0.5f);

  for (int i = 0; i < x44_hexagonXfs.size(); ++i) {
    x64_centerPoint += x44_hexagonXfs[i].GetTransform().GetTranslation();
  }
  x64_centerPoint *= 1.f / static_cast< float >(x44_hexagonXfs.size());
}

CFactoryFnReturn FMapUniverseFactory(const SObjectTag& tag, CInputStream& in,
                                     const CVParamTransfer& xfer) {
  in.Get< uint >();
  uint version = in.Get< uint >();
  return rs_new CMapUniverse(in, version);
}