#ifndef _CDECALMANAGER
#define _CDECALMANAGER

#include "TGameTypes.hpp"
#include "Weapons/CDecal.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/reserved_vector.hpp"

class CDecalManager {
public:
  struct SDecal {
    SDecal(const rstl::optional_object< CDecal >& decal, const TAreaId id, const char w, const char z)
    : mDecal(decal), aid(id), unk(w), unk1(z) {}
    
    rstl::optional_object< CDecal > mDecal;
    TAreaId aid;
    char unk;
    char unk1 : 1;
  };
  static void Initialize();
  static void ShutDown();
  static void Reinitialize();

  static bool mbPoolInitialized;
  static rstl::reserved_vector< SDecal, 64 > mDecalPool;
  static rstl::reserved_vector< int, 64 > mActiveIndexList;
  static int mFreeIndex;
  static float mDeltaTimeSinceLastDecalCreation;
  static int mLastDecalCreatedIndex;
  static CAssetId mLastDecalCreatedAssetId;
};

#endif // _CDECALMANAGER
