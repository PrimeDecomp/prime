#ifndef _CGAMEAREA
#define _CGAMEAREA

#include "types.h"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector2f.hpp"

#include "WorldFormat/CMetroidModelInstance.hpp"
#include "WorldFormat/CWorldLight.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/list.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/vector.hpp"

class CAreaOctTree;
class CDvdRequest;
class CPVSAreaSet;
class CScriptAreaAttributes;
class CToken;

class IGameArea {
public:
  class Dock {
  public:
    struct SDockReference {
      uint x0_area;
      s16 x4_dock;
      bool x6_loadOther;

      SDockReference();
    };

  private:
    int x0_referenceCount;
    rstl::vector< SDockReference > x4_dockReferences;
    rstl::reserved_vector< CVector3f, 4 > x14_planeVertices;
    bool x48_isReferenced;

  public:
    const rstl::reserved_vector< CVector3f, 4 >& GetPlaneVertices() const {
      return x14_planeVertices;
    }
    int GetReferenceCount() const { return x0_referenceCount; }
    const rstl::vector< SDockReference >& GetDockRefs() const { return x4_dockReferences; }
    Dock(CInputStream& in, const CTransform4f& xf);
    TAreaId GetConnectedAreaId(int other) const;
    s16 GetOtherDockNumber(int other) const;
    bool GetShouldLoadOther(int other) const;
    void SetShouldLoadOther(int other, bool should);
    bool ShouldLoadOtherArea(int other) const;
    CVector3f GetPoint(int idx) const;
    bool IsReferenced() const { return x48_isReferenced; }
    void SetReferenceCount(int v) {
      x0_referenceCount = v;
      x48_isReferenced = true;
    }
  };

  virtual ~IGameArea();
  virtual const CTransform4f& IGetTM() const = 0;
  virtual CAssetId IGetStringTableAssetId() const = 0;
  virtual uint IGetNumAttachedAreas() const = 0;
  virtual TAreaId IGetAttachedAreaId(int) const = 0;
  virtual bool IIsActive() const = 0;
  virtual CAssetId IGetAreaAssetId() const = 0;
  virtual int IGetAreaSaveId() const = 0;
  virtual rstl::pair< rstl::auto_ptr< uchar >, int > IGetScriptingMemoryAlways() const = 0;
};

struct CAreaRenderOctTree {
  struct Node {
    ushort x0_bitmapIdx;
    ushort x2_flags;
    ushort x4_children[1];

    uint GetChildCount() const;
    CAABox GetNodeBounds(const CAABox& curAABB, int idx) const;

    void RecursiveBuildOverlaps(u32* out, const CAreaRenderOctTree& parent, const CAABox& curAABB,
                                const CAABox& testAABB) const;
  };

  const u8* x0_buf;
  int x4_; // TODO
  uint x8_bitmapCount;
  uint xc_meshCount;
  uint x10_nodeCount;
  uint x14_bitmapWordCount;
  CAABox x18_aabb;
  const u32* x30_bitmaps;
  const u32* x34_indirectionTable;
  const u8* x38_entries;

  explicit CAreaRenderOctTree(const u8* buf);

  void FindOverlappingModels(rstl::vector< u32 >& out, const CAABox& testAABB) const;
  void FindOverlappingModels(u32* out, const CAABox& testAABB) const;
};
CHECK_SIZEOF(CAreaRenderOctTree, 0x3c);

class CGameArea : public IGameArea {
public:
  class CAreaFog {
  private:
    ERglFogMode x0_fogMode;
    CVector2f x4_rangeCur;
    CVector2f xc_rangeTarget;
    CVector2f x14_rangeDelta;
    CColor x1c_colorCur;
    unkptr x20_;
    unkptr x24_;
    CColor x28_colorTarget;
    unkptr x2c_;
    unkptr x30_;
    float x34_colorDelta;

  public:
    CAreaFog();
    void SetCurrent() const;
    void Update(float dt);
    void RollFogOut(float rangeDelta, float colorDelta, const CColor& color);
    void FadeFog(ERglFogMode, const CColor& color, const CVector2f& vec1, float,
                 const CVector2f& vec2);
    void SetFogExplicit(ERglFogMode mode, const CColor& color, const CVector2f& range);
    bool IsFogDisabled() const;
    void DisableFog();
  };

  class CConstChainIterator {
    const CGameArea* m_area;

  public:
    CConstChainIterator() : m_area(nullptr) {}
    explicit CConstChainIterator(const CGameArea* area) : m_area(area) {}
    const CGameArea& operator*() const { return *m_area; }
    const CGameArea* operator->() const { return m_area; }
    CConstChainIterator& operator++() {
      m_area = m_area->GetNext();
      return *this;
    }
    bool operator!=(const CConstChainIterator& other) const { return m_area != other.m_area; }
    bool operator==(const CConstChainIterator& other) const { return m_area == other.m_area; }
  };

  enum EOcclusionState { kOS_Occluded, kOS_Visible };

  struct CPostConstructed {
    rstl::optional_object< CAreaOctTree* > x0_collision;
    int x8_; // TODO
    rstl::optional_object< CAreaRenderOctTree > xc_octTree;
    rstl::vector< CMetroidModelInstance > x4c_insts;
    rstl::single_ptr< int > x5c_; // TODO
    rstl::vector< CWorldLight > x60_lightsA;
    rstl::vector< CLight > x70_gfxLightsA;
    rstl::vector< CWorldLight > x80_lightsB;
    rstl::vector< CLight > x90_gfxLightsB;
    CPVSAreaSet* xa0_pvs;
    uchar xa4_pad[0x1020];
    rstl::single_ptr< CAreaFog > x10c4_areaFog;
    rstl::optional_object< void* > x10c8_sclyBuf;
    u32 x10d0_sclySize;
    const u8* x10d4_firstMatPtr;
    const CScriptAreaAttributes* x10d8_areaAttributes;
    EOcclusionState x10dc_occlusionState;
    uchar x10e0_pad[0x60];

    CPostConstructed();
    ~CPostConstructed();
  };

  ~CGameArea();
  const CTransform4f& IGetTM() const override;
  CAssetId IGetStringTableAssetId() const override;
  uint IGetNumAttachedAreas() const override;
  TAreaId IGetAttachedAreaId(int) const override;
  bool IIsActive() const override;
  CAssetId IGetAreaAssetId() const override;
  int IGetAreaSaveId() const override;
  rstl::pair< rstl::auto_ptr< uchar >, int > IGetScriptingMemoryAlways() const override;

  TAreaId GetId() const { return x4_selfIdx; }
  const CTransform4f& GetTM() const { return xc_transform; }
  bool IsLoaded() const { return xf0_24_postConstructed; }
  bool IsActive() const { return xf0_25_active; }
  const CAABox& GetAABB() const { return x6c_aabb; }
  CGameArea* GetNext() const; // { return x130_next; }

  void SetXRaySpeedAndTarget(float speed, float target);
  void SetThermalSpeedAndTarget(float speed, float target);
  void SetWeaponWorldLighting(float speed, float target);

  void SetAreaAttributes(const CScriptAreaAttributes* areaAttributes);
  bool TryTakingOutOfARAM();

  bool StartStreamingMainArea();
  bool Invalidate(CStateManager* mgr);
  void Validate(CStateManager& mgr);
  void SetOcclusionState(EOcclusionState state);
  void RemoveStaticGeometry();
  void StartStreamIn(CStateManager& mgr);
  void SetChain(CGameArea* next, int chain);

  CAssetId GetAreaAssetId() const { return x84_mrea; }
  const Dock& GetDock(int idx) const { return xcc_docks[idx]; }
  int GetDockCount() const { return xcc_docks.size(); }
  const CAreaFog* GetAreaFog() const { return x12c_postConstructed->x10c4_areaFog.get(); }
  CAreaFog* AreaFog() { return x12c_postConstructed->x10c4_areaFog.get(); }
  EOcclusionState GetOcclusionState() const { return x12c_postConstructed->x10dc_occlusionState; }
  const rstl::vector< CWorldLight >& GetLightsA() const;
  const rstl::vector< CWorldLight >& GetLightsB() const;
  const CPVSAreaSet* GetAreaVisSet() const { return x12c_postConstructed->xa0_pvs; }
  bool IsPostConstructed() const { return xf0_24_postConstructed; }                         // name?
  CPostConstructed* GetPostConstructed() { return x12c_postConstructed.get(); }             // name?
  const CPostConstructed* GetPostConstructed() const { return x12c_postConstructed.get(); } // name?
  CGameArea* GetNext() { return x130_next; }                                                // name?
  CGameArea* GetPrev() { return x134_prev; }                                                // name?
  int GetCurChain() const { return x138_curChain; }                                         // name?

private:
  void AllocNewAreaData(int, int);
  void CullDeadAreaRequests();
  int VerifyHeader() const;
  int GetNumPartSizes() const;

  enum EPhase {
    kP_LoadHeader,
    kP_LoadSecSizes,
    kP_ReserveSections,
    kP_LoadDataSections,
    kP_WaitForFinish,
  };
  TAreaId x4_selfIdx;
  CAssetId x8_nameSTRG;
  CTransform4f xc_transform;
  CTransform4f x3c_invTransform;
  CAABox x6c_aabb;
  CAssetId x84_mrea;
  int x88_areaId;
  rstl::vector< ushort > x8c_attachedAreaIndices;
  rstl::vector< SObjectTag > x9c_deps1;
  rstl::vector< SObjectTag > xac_deps2;
  rstl::vector< uint > xbc_layerDepOffsets;
  rstl::vector< Dock > xcc_docks;
  rstl::vector< CToken > xdc_tokens;
  uint xec_totalResourcesSize;
  bool xf0_24_postConstructed : 1;
  bool xf0_25_active : 1;
  bool xf0_26_tokensReady : 1;
  bool xf0_27_loadPaused : 1;
  bool xf0_28_validated : 1;
  EPhase xf4_phase;
  rstl::list< rstl::rc_ptr< CDvdRequest > > xf8_loadTransactions;
  rstl::vector< rstl::pair< rstl::auto_ptr< char >, int > > x110_mreaSecBufs;
  int x120_unk;
  int x124_secCount;
  int x128_mreaDataOffset;
  rstl::single_ptr< CPostConstructed > x12c_postConstructed;
  CGameArea* x130_next;
  CGameArea* x134_prev;
  int x138_curChain;
};
NESTED_CHECK_SIZEOF(CGameArea, CPostConstructed, 0x1140)
CHECK_SIZEOF(CGameArea, 0x13c)

class CDummyGameArea final : public IGameArea {
  friend class CDummyWorld;

public:
  CDummyGameArea(CInputStream& in, int idx, int mlvlVersion);
  rstl::pair< rstl::auto_ptr< uchar >, int > IGetScriptingMemoryAlways() const override;
  int IGetAreaSaveId() const override;
  CAssetId IGetAreaAssetId() const override;
  bool IIsActive() const override;
  TAreaId IGetAttachedAreaId(int) const override;
  uint IGetNumAttachedAreas() const override;
  CAssetId IGetStringTableAssetId() const override;
  const CTransform4f& IGetTM() const override;

private:
  int x4_mlvlVersion;
  CAssetId x8_nameSTRG;
  CAssetId xc_mrea;
  int x10_areaId;
  CTransform4f x14_transform;
  rstl::vector< u16 > x44_attachedAreaIndices;
  rstl::vector< Dock > x54_docks;
};
CHECK_SIZEOF(CDummyGameArea, 0x64)

#endif // _CGAMEAREA
