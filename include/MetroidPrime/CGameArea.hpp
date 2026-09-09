#ifndef _CGAMEAREA
#define _CGAMEAREA

#include "types.h"

#include "Kyoto/CARAMToken.hpp"
#include "Kyoto/TToken.hpp"
#include "MetroidPrime/CEnvFxManager.hpp"
#include "MetroidPrime/CObjectList.hpp"
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

struct TLayerId;

class CAreaOctTree;
class CAreaBspTree;
class CDvdRequest;
class CPVSAreaSet;
class CScriptAreaAttributes;
class CToken;

class IGameArea {
public:
  class Dock {
  public:
    struct SDockReference {
      TAreaId x0_area;
      s16 x4_dock;
      short x6_loadOther : 1;

      SDockReference(const TAreaId& area, short dock, short loadOther)
      : x0_area(area), x4_dock(dock), x6_loadOther(loadOther) {}
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
    int GetReferenceCount() const;
    const rstl::vector< SDockReference >& GetDockRefs() const { return x4_dockReferences; }
    Dock(CInputStream& in, const CTransform4f& xf);
    TAreaId GetConnectedAreaId(int other) const;
    int GetOtherDockNumber(int other) const;
    bool GetShouldLoadOther(int other) const;
    void SetShouldLoadOther(int other, bool should);
    bool ShouldLoadOtherArea(int other) const;
    const CVector3f& GetPoint(int idx) const { return x14_planeVertices[idx]; }
    bool IsReferenced() const;
    void SetReferenceCount(int v);
  };

  virtual ~IGameArea();
  virtual const CTransform4f& IGetTM() const = 0;
  virtual CAssetId IGetStringTableAssetId() const = 0;
  virtual uint IGetNumAttachedAreas() const = 0;
  virtual TAreaId IGetAttachedAreaId(int) const = 0;
  virtual bool IIsActive() const = 0;
  virtual CAssetId IGetAreaAssetId() const = 0;
  virtual int IGetAreaSaveId() const = 0;
  virtual rstl::pair< rstl::auto_ptr< char >, int > IGetScriptingMemoryAlways() const = 0;
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

  rstl::auto_ptr< const u8 > x0_buf;
  uint x8_bitmapCount;
  uint xc_meshCount;
  uint x10_nodeCount;
  uint x14_bitmapWordCount;
  CAABox x18_aabb;
  const u32* x30_bitmaps;
  const u32* x34_indirectionTable;
  const u8* x38_entries;

  explicit CAreaRenderOctTree(const rstl::auto_ptr< const u8 >& buf);

  void FindOverlappingModels(rstl::vector< uint >& out, const CAABox& testAABB) const;
  void FindOverlappingModels(uint* out, const CAABox& testAABB) const;

  static bool TestBit(const uint* words, int bitIdx);
};
CHECK_SIZEOF(CAreaRenderOctTree, 0x3c);
class CPFArea;
class CGameArea : public IGameArea {
public:
  class CAreaFog {
  private:
    ERglFogMode x0_fogMode;
    CVector2f x4_rangeCur;
    CVector2f xc_rangeTarget;
    CVector2f x14_rangeDelta;
    CVector3f x1c_colorCur;
    CVector3f x28_colorTarget;
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

  class CChainIterator {
  protected:
    CGameArea* m_area;

  public:
    CChainIterator() : m_area(nullptr) {}
    explicit CChainIterator(CGameArea* area) : m_area(area) {}
    CGameArea& operator*() const { return *m_area; }
    CGameArea* operator->() const { return m_area; }
    CChainIterator& operator++() {
      m_area = m_area->GetNext();
      return *this;
    }
    bool operator!=(const CChainIterator& other) const { return other.m_area != m_area; }
    bool operator==(const CChainIterator& other) const { return m_area == other.m_area; }
  };

  class CConstChainIterator : protected CChainIterator {
  public:
    CConstChainIterator() {}
    explicit CConstChainIterator(const CGameArea* area)
    : CChainIterator(const_cast< CGameArea* >(area)) {}
    const CGameArea& operator*() const { return CChainIterator::operator*(); }
    const CGameArea* operator->() const { return CChainIterator::operator->(); }
    CConstChainIterator& operator++() {
      CChainIterator::operator++();
      return *this;
    }
    bool operator!=(const CConstChainIterator& other) const {
      return !CChainIterator::operator==(other);
    }
    bool operator==(const CConstChainIterator& other) const {
      return CChainIterator::operator==(other);
    }
  };

  enum EOcclusionState { kOS_Occluded, kOS_Visible };
  enum EARAMTransfer { kAT_Blocking, kAT_Async };

  class CAreaObjectList : public CObjectList {
  public:
    uchar IsQualified(const CEntity& ent) override;
    explicit CAreaObjectList(TAreaId areaId) : CObjectList(kOL_Invalid), x200c_areaId(areaId) {}

  private:
    TAreaId x200c_areaId;
  };

  struct SPVSActorInfo {
    ushort x0_pvsId;
    TUniqueId x2_uniqueId;

    SPVSActorInfo(ushort pvsId, TUniqueId uniqueId) : x0_pvsId(pvsId), x2_uniqueId(uniqueId) {}
  };

  struct CPostConstructed {
    rstl::auto_ptr< CAreaOctTree > x0_collision;
    int x8_collisionSize;
    rstl::optional_object< CAreaRenderOctTree > xc_octTree;
    rstl::vector< CMetroidModelInstance > x4c_insts;
    rstl::single_ptr< CAreaBspTree > x5c_bspTree;
    rstl::vector< CWorldLight > x60_lightsA;
    rstl::vector< CLight > x70_gfxLightsA;
    rstl::vector< CWorldLight > x80_lightsB;
    rstl::vector< CLight > x90_gfxLightsB;
    rstl::single_ptr< CPVSAreaSet > xa0_pvs;
    rstl::reserved_vector< SPVSActorInfo, 1024 > xa4_pvsEntityMap;
    int x10a8_pvsVersion;
    rstl::optional_object< TLockedToken< CPFArea > > x10ac_pathToken;
    CPFArea* x10bc_pathArea;
    rstl::single_ptr< CAreaObjectList > x10c0_areaObjectList;
    rstl::single_ptr< CAreaFog > x10c4_areaFog;
    rstl::auto_ptr< char > x10c8_sclyBuf;
    u32 x10d0_sclySize;
    const u8* x10d4_firstMatPtr;
    const CScriptAreaAttributes* x10d8_areaAttributes;
    EOcclusionState x10dc_occlusionState;
    int x10e0_;
    float x10e4_occludedTime;
    uint x10e8_;
    uint x10ec_firstMatSection;
    rstl::vector< rstl::pair< CARAMToken, int > > x10f0_tokens;
    uint x1100_;
    uint x1104_;
    bool x1108_24_ : 1;
    bool x1108_25_modelsConstructed : 1;
    bool x1108_26_ : 1;
    bool x1108_27_ : 1;
    bool x1108_28_occlusionPinged : 1;
    bool x1108_29_pvsHasActors : 1;
    bool x1108_30_ : 1;
    rstl::vector< rstl::pair< int, int > > x110c_layerOffsets;
    float x111c_thermalCurrent;
    float x1120_thermalSpeed;
    float x1124_thermalTarget;
    float x1128_worldLightingLevel;
    float x112c_xraySpeed;
    float x1130_xrayTarget;
    float x1134_weaponWorldLightingSpeed;
    float x1138_weaponWorldLightingTarget;
    int x113c_playerActorsLoading;

    CPostConstructed();
    ~CPostConstructed();
  };

  CGameArea(CInputStream& in, int idx, const int mlvlVersion);
  ~CGameArea();
  static float skEntityThinkDisableDelayOnOcclusion;
  const CTransform4f& IGetTM() const override;
  CAssetId IGetStringTableAssetId() const override;
  uint IGetNumAttachedAreas() const override;
  TAreaId IGetAttachedAreaId(int) const override;
  bool IIsActive() const override;
  CAssetId IGetAreaAssetId() const override;
  int IGetAreaSaveId() const override;
  rstl::pair< rstl::auto_ptr< char >, int > IGetScriptingMemoryAlways() const override;

  TAreaId GetId() const { return x4_selfIdx; }
  int GetNumAttachedAreas() const { return x8c_attachedAreaIndices.size(); }
  TAreaId GetAttachedAreaId(int idx) const { return TAreaId(x8c_attachedAreaIndices[idx]); }
  int GetTokenCount() const { return xdc_tokens.size(); }
  const rstl::pair< uint, uint >& GetAssetID(int idx) const { return xac_deps2[idx]; }
  int GetScriptingSize() const {
    return xf0_24_postConstructed ? x12c_postConstructed->x10d0_sclySize : 0;
  }
  const CTransform4f& GetTM() const { return xc_transform; }
  const CTransform4f& GetInverseTransform() const { return x3c_invTransform; }
  bool IsLoaded() const { return xf0_24_postConstructed; }
  bool IsActive() const { return xf0_25_active; }
  void SetActive(bool active) { xf0_25_active = active; }
  bool IsValidated() const { return xf0_28_validated; }
  const CAABox& GetAABB() const { return x6c_aabb; }
  CGameArea* GetNext() const; // { return x130_next; }

  bool IsFinishedOccluding() const;
  void SetLoadPauseState(bool paused);
  void UpdateThermalVisor(float dt);
  void UpdateWeaponWorldLighting(float dt);
  TUniqueId LookupPVSUniqueID(TUniqueId id);
  uint LookupPVSID(TUniqueId id);
  void UpdateFog(const float dt);
  void SetXRaySpeedAndTarget(float speed, float target);
  void SetThermalSpeedAndTarget(float speed, float target);
  void SetWeaponWorldLighting(float speed, float target);

  float GetXRayFogDistance();
  rstl::pair< const uchar*, int > GetLayerScriptBuffer(const TLayerId layer) const;

  void SetAreaAttributes(CScriptAreaAttributes* areaAttributes);
  bool TryTakingOutOfARAM();

  bool StartStreamingMainArea();
  bool Invalidate(CStateManager* mgr);
  void Validate(CStateManager& mgr);
  void SetOcclusionState(EOcclusionState state);
  void RemoveStaticGeometry();
  void StartStreamIn(CStateManager& mgr);
  int SetChain(CGameArea* next, int chain);
  void AddStaticGeometry();
  bool TransferTokensToARAM();
  bool UnloadAllloadedTextures();
  bool ReloadAllUnloadedTextures();
  bool TransferARAMTokensOver(EARAMTransfer mode);
  void FillInStaticGeometry();
  void OtherAreaOcclusionChanged();
  void PingOcclusionState();
  void PreRender();
  void AliveUpdate(float dt);
  bool DoesAreaNeedSkyNow() const;
  EEnvFxType DoesAreaNeedEnvFx() const;

  CAssetId GetAreaAssetId() const { return x84_mrea; }
  const TAreaId& GetAreaId() const { return x4_selfIdx; }
  int GetAreaSaveId() const { return x88_areaId; }
  const Dock& GetDock(int idx) const { return xcc_docks[idx]; }
  Dock& DockNC(int idx) { return xcc_docks[idx]; }
  int GetDockCount() const { return xcc_docks.size(); }
  CAreaObjectList* ObjectList() const { return x12c_postConstructed->x10c0_areaObjectList.get(); }
  const CAreaObjectList* GetObjectList() const {
    return x12c_postConstructed->x10c0_areaObjectList.get();
  }
  const CAreaFog* GetAreaFog() const { return x12c_postConstructed->x10c4_areaFog.get(); }
  CAreaFog* AreaFog() { return x12c_postConstructed->x10c4_areaFog.get(); }
  EOcclusionState GetOcclusionState() const {
    if (!IsPostConstructed()) {
      return kOS_Occluded;
    }
    return x12c_postConstructed->x10dc_occlusionState;
  }
  const rstl::vector< CWorldLight >& GetLightsA() const {
    return x12c_postConstructed->x60_lightsA;
  }
  const rstl::vector< CWorldLight >& GetLightsB() const {
    return x12c_postConstructed->x80_lightsB;
  }
  uint Get1stPVSLightFeature(uint idx) const;
  uint Get2ndPVSLightFeature(uint idx) const;
  const CPVSAreaSet* GetAreaVisSet() const { return x12c_postConstructed->xa0_pvs.get(); }
  bool IsPostConstructed() const { return xf0_24_postConstructed; }                         // name?
  CPostConstructed* GetPostConstructed() { return x12c_postConstructed.get(); }             // name?
  const CPostConstructed* GetPostConstructed() const { return x12c_postConstructed.get(); } // name?
  const CAreaOctTree& GetOctTree() const { return *GetPostConstructed()->x0_collision; }
  CGameArea* GetNext() { return x130_next; }                                                // name?
  CGameArea* GetPrev() { return x134_prev; }                                                // name?
  int GetCurChain() const { return x138_curChain; }                                         // name?

private:
  int GetPreConstructedSize() const;
  int GetPostConstructedSize() const;
  void ClearTokenList();
  void VerifyTokenList(CStateManager& mgr);
  void KillmAreaData();
  void LoadScriptObjects(CStateManager& mgr);
  void PostConstructArea();
  char* AllocNewAreaData(int offset, int size);
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
  rstl::vector< rstl::pair< uint, uint > > x9c_deps1;
  rstl::vector< rstl::pair< uint, uint > > xac_deps2;
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
  rstl::list< rstl::auto_ptr< CDvdRequest > > xf8_loadTransactions;
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
  CDummyGameArea(CInputStream& in, int idx, const int mlvlVersion);
  rstl::pair< rstl::auto_ptr< char >, int > IGetScriptingMemoryAlways() const override;
  int IGetAreaSaveId() const override;
  CAssetId IGetAreaAssetId() const override;
  bool IIsActive() const override;
  TAreaId IGetAttachedAreaId(int) const override;
  uint IGetNumAttachedAreas() const override;
  CAssetId IGetStringTableAssetId() const override;
  const CTransform4f& IGetTM() const override;

private:
  int x4_selfIdx;
  CAssetId x8_nameSTRG;
  CAssetId xc_mrea;
  int x10_areaId;
  CTransform4f x14_transform;
  rstl::vector< u16 > x44_attachedAreaIndices;
  rstl::vector< Dock > x54_docks;
};
CHECK_SIZEOF(CDummyGameArea, 0x64)

#endif // _CGAMEAREA
