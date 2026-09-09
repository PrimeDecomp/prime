#ifndef _CDECALMANAGER
#define _CDECALMANAGER

#include "TGameTypes.hpp"
#include "Weapons/CDecal.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/reserved_vector.hpp"

class CStateManager;
class CFrustumPlanes;

class CDecalManager {
public:
  enum EThermalHeat { kTH_Cold, kTH_Hot };

  struct SDecal {
    SDecal(const rstl::optional_object< CDecal >& decal, const TAreaId id, const char nextFreeIndex,
           const char notIce)
    : mDecal(decal), mAreaId(id), mNextFreeIndex(nextFreeIndex), mNotIce(notIce) {}

    rstl::optional_object< CDecal > mDecal;
    TAreaId mAreaId;
    char mNextFreeIndex;
    char mNotIce : 1;
  };
  static void Initialize();
  static void ShutDown();
  static void Reinitialize();
  static void Update(float dt, CStateManager& mgr);
  static void AddToRenderer(const CFrustumPlanes& frustum, const CStateManager& mgr);
  static rstl::reserved_vector< int, 64 >::iterator
  RemoveFromActiveList(rstl::reserved_vector< int, 64 >::iterator it, int idx);
  static void AddDecal(const TToken< CDecalDescription >& desc, const CTransform4f& xf,
                       EThermalHeat heat, CStateManager& mgr);

  static bool mbPoolInitialized;
  static rstl::reserved_vector< SDecal, 64 > mDecalPool;
  static rstl::reserved_vector< int, 64 > mActiveIndexList;
  static int mFreeIndex;
  static float mDeltaTimeSinceLastDecalCreation;
  static int mLastDecalCreatedIndex;
  static CAssetId mLastDecalCreatedAssetId;
};
NESTED_CHECK_SIZEOF(CDecalManager, SDecal, 0x78)

#endif // _CDECALMANAGER
