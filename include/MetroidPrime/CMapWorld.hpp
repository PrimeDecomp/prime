#ifndef _CMAPWORLD
#define _CMAPWORLD

#include "MetroidPrime/CMapArea.hpp"

#include "Kyoto/Graphics/CColor.hpp"

#include "rstl/reserved_vector.hpp"

class CStateManager;

class CMapWorld {
public:
  /* skDrawProfileItemNames; */
  enum EMapAreaList { kMAL_Loaded, kMAL_Loading, kMAL_Unloaded };

  class CMapAreaBFSInfo {
    int x0_areaIdx;
    int x4_depth;
    float x8_surfDrawDepth;
    float xc_outlineDrawDepth;

  public:
    CMapAreaBFSInfo(int areaIdx, int depth, float a, float b)
    : x0_areaIdx(areaIdx), x4_depth(depth), x8_surfDrawDepth(a), xc_outlineDrawDepth(b) {}
    int GetAreaIndex() const { return x0_areaIdx; }
    int GetDepth() const { return x4_depth; }
    float GetOutlineDrawDepth() const { return x8_surfDrawDepth; }
    float GetSurfaceDrawDepth() const { return xc_outlineDrawDepth; }
  };

  class CMapObjectSortInfo {
    float x0_zDist;
    int x4_areaIdx;
    int x8_typeAndIdx;
    CColor xc_surfColor;
    CColor x10_outlineColor;

  public:
    enum EObjectCode {
      kOC_Invalid = -1,
      kOC_Object = 1 << 16,
      kOC_DoorSurface = 2 << 16,
      kOC_Door = 3 << 16,
      kOC_Surface = 4 << 16
    };

    CMapObjectSortInfo(float zDist, int areaIdx, EObjectCode type, int idx, const CColor& surfColor,
                       const CColor& outlineColor)
    : x0_zDist(zDist)
    , x4_areaIdx(areaIdx)
    , x8_typeAndIdx(int(type) | idx)
    , xc_surfColor(surfColor)
    , x10_outlineColor(outlineColor) {}
    const CColor& GetOutlineColor() const { return x10_outlineColor; }
    const CColor& GetSurfaceColor() const { return xc_surfColor; }
    uint GetLocalObjectIndex() const { return x8_typeAndIdx & 0xffff; }
    EObjectCode GetObjectCode() const { return EObjectCode(x8_typeAndIdx & 0xffff0000); }
    uint GetAreaIndex() const { return x4_areaIdx; }
    float GetZDistance() const { return x0_zDist; }
  };

  class CMapAreaData {
    int x0_areaIdx;
    TCachedToken< CMapArea > x4_area;
    EMapAreaList x10_list;
    CMapAreaData* x14_next;

  public:
    CMapAreaData(CAssetId areaRes, EMapAreaList list, CMapAreaData* next);
    void Lock() { x4_area.Lock(); }
    void Unlock() { x4_area.Unlock(); }
    bool IsLoaded() const { return x4_area.IsLoaded(); }
    CMapArea* MapArea() { return x4_area.GetT(); }
    const CMapArea* GetMapArea() const { return x4_area.GetObject(); }
    CMapAreaData* GetNextMapAreaData() { return x14_next; }
    const CMapAreaData* GetNextMapAreaData() const { return x14_next; }
    EMapAreaList GetContainingList() const { return x10_list; }
    void SetContainingList(EMapAreaList list) { x10_list = list; }
    void SetNextMapArea(CMapAreaData* next) { x14_next = next; }
  };

  class CMapWorldDrawParms {
    float x0_alphaSurfVisited;
    float x4_alphaOlVisited;
    float x8_alphaSurfUnvisited;
    float xc_alphaOlUnvisited;
    float x10_alpha;
    float x14_outlineWidthScale;
    const CStateManager& x18_mgr;
    const CTransform4f& x1c_modelXf;
    const CTransform4f& x20_viewXf;
    const IWorld& x24_wld;
    const CMapWorldInfo& x28_mwInfo;
    float x2c_playerFlashIntensity;
    float x30_hintFlashIntensity;
    float x34_objectScale;
    bool x38_sortDoorSurfs;

  public:
    CMapWorldDrawParms(float alphaSurfVisited, float alphaOlVisited, float alphaSurfUnvisited,
                       float alphaOlUnvisited, float alpha, float outlineWidthScale,
                       const CStateManager& mgr, const CTransform4f& modelXf,
                       const CTransform4f& viewXf, const IWorld& wld, const CMapWorldInfo& mwInfo,
                       float playerFlash, float hintFlash, float objectScale, bool sortDoorSurfs)
    : x0_alphaSurfVisited(alphaSurfVisited)
    , x4_alphaOlVisited(alphaOlVisited)
    , x8_alphaSurfUnvisited(alphaSurfUnvisited)
    , xc_alphaOlUnvisited(alphaOlUnvisited)
    , x10_alpha(alpha)
    , x14_outlineWidthScale(outlineWidthScale)
    , x18_mgr(mgr)
    , x1c_modelXf(modelXf)
    , x20_viewXf(viewXf)
    , x24_wld(wld)
    , x28_mwInfo(mwInfo)
    , x2c_playerFlashIntensity(playerFlash)
    , x30_hintFlashIntensity(hintFlash)
    , x34_objectScale(objectScale)
    , x38_sortDoorSurfs(sortDoorSurfs) {}
    const IWorld& GetWorld() const { return x24_wld; }
    float GetOutlineWidthScale() const { return x14_outlineWidthScale; }
    const CTransform4f& GetPlaneProjectionTransform() const { return x1c_modelXf; }
    float GetHintAreaFlashIntensity() const { return x30_hintFlashIntensity; }
    float GetPlayerAreaFlashIntensity() const { return x2c_playerFlashIntensity; }
    const CTransform4f& GetCameraTransform() const { return x20_viewXf; }
    float GetAlphaOutlineUnvisited() const { return xc_alphaOlUnvisited; }
    float GetAlphaSurfaceUnvisited() const { return x8_alphaSurfUnvisited; }
    float GetAlphaOutlineVisited() const { return x4_alphaOlVisited; }
    float GetAlphaSurfaceVisited() const { return x0_alphaSurfVisited; }
    float GetAlpha() const { return x10_alpha; }
    const CMapWorldInfo& GetMapWorldInfo() const { return x28_mwInfo; }
    const CStateManager& GetStateManager() const { return x18_mgr; }
    bool GetIsSortDoorSurfaces() const { return x38_sortDoorSurfs; }
    float GetObjectScale() const { return x34_objectScale; }
  };

private:
  rstl::vector< CMapAreaData > x0_areas;
  rstl::reserved_vector< CMapAreaData*, 3 > x10_listHeads;
  rstl::vector< bool > x20_traversed;
  CVector3f x30_worldSpherePoint;
  float x3c_worldSphereRadius;
  float x40_worldSphereHalfDepth;

public:
  explicit CMapWorld(CInputStream& in);
  uint GetNumAreas() const { return x0_areas.size(); }
  CMapArea* GetMapArea(int aid) { return x0_areas[aid].MapArea(); }
  const CMapArea* GetMapArea(int aid) const { return x0_areas[aid].GetMapArea(); }
  bool IsMapAreaInBFSInfoVector(const CMapAreaData* area,
                                const rstl::vector< CMapAreaBFSInfo >& vec) const;
  void SetWhichMapAreasLoaded(const IWorld& wld, int start, int count);
  bool IsMapAreasStreaming();
  void MoveMapAreaToList(CMapAreaData* data, EMapAreaList list);
  int GetCurrentMapAreaDepth(const IWorld& wld, TAreaId aid);
  rstl::vector< int > GetVisibleAreas(const IWorld& wld, const CMapWorldInfo& mwInfo) const;
  void Draw(const CMapWorldDrawParms& parms, int curArea, int otherArea, float depth1, float depth2,
            bool inMapScreen);
  void DoBFS(const IWorld& wld, int startArea, int areaCount, float surfDepth, float outlineDepth,
             bool checkLoad, rstl::vector< CMapAreaBFSInfo >& bfsInfos);
  bool IsMapAreaValid(const IWorld& wld, int areaIdx, bool checkLoad) const;
  void DrawAreas(const CMapWorldDrawParms& parms, int selArea,
                 const rstl::vector< CMapAreaBFSInfo >& bfsInfos, bool inMapScreen);
  void RecalculateWorldSphere(const CMapWorldInfo& mwInfo, const IWorld& wld);
  CVector3f ConstrainToWorldVolume(const CVector3f& point, const CVector3f& lookVec) const;
  void ClearTraversedFlags();
  void SetWhichMapAreasLoaded(const IWorld& wld, int start, int count, bool load);
  bool IsMapAreasStreaming() const;
};
NESTED_CHECK_SIZEOF(CMapWorld, CMapAreaData, 0x18)
CHECK_SIZEOF(CMapWorld, 0x44)

#endif // _CMAPWORLD
