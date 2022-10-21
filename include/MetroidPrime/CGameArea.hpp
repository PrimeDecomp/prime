#ifndef _CGAMEAREA
#define _CGAMEAREA

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/list.hpp"
#include "rstl/pair.hpp"
#include "rstl/rc_ptr.hpp"
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

class Dock;
class CToken;
class IDvdRequest;
class CScriptAreaAttributes;
class CAreaFog;

class CGameArea : public IGameArea {
public:
  ~CGameArea();
  const CTransform4f& IGetTM() const override;
  CAssetId IGetStringTableAssetId() const override;
  uint IGetNumAttachedAreas() const override;
  TAreaId IGetAttachedAreaId(int) const override;
  bool IIsActive() const override;
  CAssetId IGetAreaAssetId() const override;
  int IGetAreaSaveId() const override;
  rstl::pair< rstl::auto_ptr< uchar >, int > IGetScriptingMemoryAlways() const override;

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
    rstl::single_ptr<CAreaFog> x10c4_areaFog;
    rstl::optional_object<void*> x10c8_sclyBuf; // was rstl::optional_object<void*>
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
  rstl::single_ptr<CPostConstructed> x12c_postConstructed;
};

#endif // _CGAMEAREA
