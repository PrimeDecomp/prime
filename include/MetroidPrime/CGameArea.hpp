#ifndef _CGAMEAREA
#define _CGAMEAREA

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Graphics/CColor.hpp"
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


enum ERglFogMode {
  kRFM_None = GX_FOG_NONE,

  kRFM_PerspLin = GX_FOG_PERSP_LIN,
  kRFM_PerspExp = GX_FOG_PERSP_EXP,
  kRFM_PerspExp2 = GX_FOG_ORTHO_EXP2,
  kRFM_PerspRevExp = GX_FOG_PERSP_REVEXP,
  kRFM_PerspRevExp2 = GX_FOG_PERSP_REVEXP2,

  kRFM_OrthoLin = GX_FOG_ORTHO_LIN,
  kRFM_OrthoExp = GX_FOG_ORTHO_EXP,
  kRFM_OrthoExp2 = GX_FOG_ORTHO_EXP2,
  kRFM_OrthoRevExp = GX_FOG_ORTHO_REVEXP,
  kRFM_OrthoRevExp2 = GX_FOG_ORTHO_REVEXP2,
};

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

class Dock;
class CToken;
class IDvdRequest;
class CScriptAreaAttributes;

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

  ~CGameArea();
  const CTransform4f& IGetTM() const override;
  CAssetId IGetStringTableAssetId() const override;
  uint IGetNumAttachedAreas() const override;
  TAreaId IGetAttachedAreaId(int) const override;
  bool IIsActive() const override;
  CAssetId IGetAreaAssetId() const override;
  int IGetAreaSaveId() const override;
  rstl::pair< rstl::auto_ptr< uchar >, int > IGetScriptingMemoryAlways() const override;

  const CTransform4f& GetTM() const { return xc_transform; }
  bool IsLoaded() const { return xf0_24_postConstructed; }
  bool IsActive() const { return xf0_25_active; }

  void SetXRaySpeedAndTarget(float speed, float target);
  void SetThermalSpeedAndTarget(float speed, float target);
  void SetWeaponWorldLighting(float speed, float target);

  void SetAreaAttributes(const CScriptAreaAttributes* areaAttributes);
  bool TryTakingOutOfARAM();

private:
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
  rstl::list< rstl::rc_ptr< IDvdRequest > > xf8_loadTransactions;

public:
  enum EOcclusionState { kOS_Occluded, kOS_Visible };

  struct CPostConstructed {
    uchar x0_pad[0x10c4];
    rstl::single_ptr< CAreaFog > x10c4_areaFog;
    rstl::optional_object< void* > x10c8_sclyBuf; // was rstl::optional_object<void*>
    u32 x10d0_sclySize;
    const u8* x10d4_firstMatPtr;
    const CScriptAreaAttributes* x10d8_areaAttributes;
    EOcclusionState x10dc_occlusionState;
  };

  CAssetId GetAreaAssetId() const { return x84_mrea; }
  const CAreaFog* GetAreaFog() const { return x12c_postConstructed->x10c4_areaFog.get(); }
  CAreaFog* AreaFog() { return x12c_postConstructed->x10c4_areaFog.get(); }
  EOcclusionState GetOcclusionState() const { return x12c_postConstructed->x10dc_occlusionState; }

private:
  uchar x110_pad[0x1c];
  rstl::single_ptr< CPostConstructed > x12c_postConstructed;
};

// CHECK_SIZEOF(CGamearea::CAreaFog, 0x38)

#endif // _CGAMEAREA
