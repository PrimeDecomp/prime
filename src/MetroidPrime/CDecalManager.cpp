#include "MetroidPrime/CDecalManager.hpp"

rstl::reserved_vector< CDecalManager::SDecal, 64 > CDecalManager::mDecalPool;
rstl::reserved_vector< int, 64 > CDecalManager::mActiveIndexList;
bool CDecalManager::mbPoolInitialized = false;

#pragma inline_max_size(250)
void CDecalManager::Initialize() {
  if (mbPoolInitialized) {
    return;
  }

  mDecalPool.clear();

  for (int i = 0; i < mDecalPool.capacity(); ++i) {
    mDecalPool.push_back(SDecal(rstl::optional_object_null(), TAreaId(0), i - 1, false));
  }

  mFreeIndex = mDecalPool.capacity() - 1;
  mbPoolInitialized = true;
  mDeltaTimeSinceLastDecalCreation = 0.f;
  mLastDecalCreatedIndex = -1;
  mLastDecalCreatedAssetId = kInvalidAssetId;
}

void CDecalManager::ShutDown() {
  mActiveIndexList.clear();
  mDecalPool.clear();
  mbPoolInitialized = false;
}

void CDecalManager::Reinitialize() {
  if (!mbPoolInitialized) { 
    Initialize();
  }
  
  for (int i = 0; i < mDecalPool.capacity(); ++i) {
    mDecalPool[i] = SDecal(rstl::optional_object_null(), TAreaId(0), i - 1, false);
  }

  mActiveIndexList.clear();
  mFreeIndex = mDecalPool.capacity() - 1;
}

