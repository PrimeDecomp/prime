#include "MetroidPrime/CDecalManager.hpp"

#include "Kyoto/Math/CAABox.hpp"
#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/CStateManager.hpp"

rstl::reserved_vector< CDecalManager::SDecal, 64 > CDecalManager::mDecalPool;
rstl::reserved_vector< int, 64 > CDecalManager::mActiveIndexList;
int CDecalManager::mFreeIndex;
bool CDecalManager::mbPoolInitialized = false;
float CDecalManager::mDeltaTimeSinceLastDecalCreation;
int CDecalManager::mLastDecalCreatedIndex;
CAssetId CDecalManager::mLastDecalCreatedAssetId;

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

void CDecalManager::AddDecal(const TToken< CDecalDescription >& desc, const CTransform4f& xf,
                             EThermalHeat heat, CStateManager& mgr) {
  const CAssetId assetId = desc.GetTag().GetId();
  if (mLastDecalCreatedIndex != -1 && mDeltaTimeSinceLastDecalCreation < 0.75f &&
      mLastDecalCreatedAssetId == assetId) {
    SDecal& existing = mDecalPool[mLastDecalCreatedIndex];
    if ((existing.mDecal->GetTranslation() - xf.GetTranslation()).MagSquared() < 0.01f) {
      return;
    }
  }

  if (mFreeIndex == -1) {
    RemoveFromActiveList(mActiveIndexList.begin(), mActiveIndexList[0]);
  }

  const int index = mFreeIndex;
  SDecal& decal = mDecalPool[index];
  mFreeIndex = decal.mNextFreeIndex;
  decal.mDecal.clear();
  decal.mDecal = CDecal(desc, xf);
  decal.mAreaId = mgr.GetNextAreaId();
  decal.mNotIce = heat == kTH_Hot;
  mDeltaTimeSinceLastDecalCreation = 0.f;
  mLastDecalCreatedIndex = index;
  mLastDecalCreatedAssetId = assetId;
  mActiveIndexList.push_back(index);
}

rstl::reserved_vector< int, 64 >::iterator
CDecalManager::RemoveFromActiveList(rstl::reserved_vector< int, 64 >::iterator it, int idx) {
  AUTO(next, mActiveIndexList.erase(it));
  mDecalPool[idx].mNextFreeIndex = mFreeIndex;
  mFreeIndex = idx;
  if (mLastDecalCreatedIndex == mFreeIndex) {
    mLastDecalCreatedIndex = -1;
  }
  return next;
}

void CDecalManager::Update(float dt, CStateManager& mgr) {
  mDeltaTimeSinceLastDecalCreation += dt;
  for (AUTO(it, mActiveIndexList.begin()); it != mActiveIndexList.end();) {
    SDecal& decal = mDecalPool[*it];
    if (decal.mAreaId != mgr.GetNextAreaId() || decal.mDecal->IsDone()) {
      it = RemoveFromActiveList(it, *it);
    } else {
      decal.mDecal->Update(dt);
      ++it;
    }
  }
}

void CDecalManager::AddToRenderer(const CFrustumPlanes&, const CStateManager& mgr) {
  AUTO(it, mActiveIndexList.begin());
  AUTO(end, mActiveIndexList.end());
  for (; it != end; ++it) {
    const rstl::optional_object< CDecal >& decal = mDecalPool[*it].mDecal;
    if (mDecalPool[*it].mNotIce || mgr.GetThermalDrawFlag() != kTD_Hot) {
      gpRender->AddDrawable(&*decal, decal->GetTranslation(),
                            CAABox(decal->GetTranslation(), decal->GetTranslation()), 2,
                            IRenderer::kDS_SortedCallback);
    }
  }
}
