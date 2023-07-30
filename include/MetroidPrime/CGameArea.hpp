#ifndef _CGAMEAREA
#define _CGAMEAREA

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector2f.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/list.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/vector.hpp"

class IGameArea {
public:
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

enum EChain {
  kC_Invalid = -1,
  kC_ToDeallocate,
  kC_Deallocated,
  kC_Loading,
  kC_Alive,
  kC_AliveJudgement,
};

class Dock;
class CToken;
class CDvdRequest;
class CScriptAreaAttributes;
class CWorldLight;
class CPVSAreaSet;

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

private:
  void AllocNewAreaData(int, int);
  void CullDeadAreaRequests();
  void VerifyHeader() const;
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

public:
  enum EOcclusionState { kOS_Occluded, kOS_Visible };

  struct CPostConstructed {
    uchar x0_pad[0xa0];
    CPVSAreaSet* xa0_pvs;
    uchar xa4_pad[0x1020];
    rstl::single_ptr< CAreaFog > x10c4_areaFog;
    rstl::optional_object< void* > x10c8_sclyBuf;
    u32 x10d0_sclySize;
    const u8* x10d4_firstMatPtr;
    const CScriptAreaAttributes* x10d8_areaAttributes;
    EOcclusionState x10dc_occlusionState;
    uchar x10e0_pad[0x60];
  };

  CAssetId GetAreaAssetId() const { return x84_mrea; }
  const CAreaFog* GetAreaFog() const { return x12c_postConstructed->x10c4_areaFog.get(); }
  CAreaFog* AreaFog() { return x12c_postConstructed->x10c4_areaFog.get(); }
  EOcclusionState GetOcclusionState() const { return x12c_postConstructed->x10dc_occlusionState; }
  const rstl::vector<CWorldLight>& GetLightsA() const;
  const rstl::vector<CWorldLight>& GetLightsB() const;
  const CPVSAreaSet* GetAreaVisSet() const { return x12c_postConstructed->xa0_pvs; }

private:
  rstl::vector< rstl::pair< rstl::auto_ptr<char>, int> > x110_mreaSecBufs;
  int x120_unk;
  int x124_secCount;
  int x128_mreaDataOffset;
  rstl::single_ptr< CPostConstructed > x12c_postConstructed;
};

NESTED_CHECK_SIZEOF(CGameArea, CPostConstructed, 0x1140)

// CHECK_SIZEOF(CGamearea::CAreaFog, 0x38)

#endif // _CGAMEAREA
