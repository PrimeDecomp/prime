#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/CFrameDelayedKiller.hpp"
#include "Kyoto/Graphics/CCubeModel.hpp"
#include "Kyoto/Graphics/CCubeSurface.hpp"
#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "dolphin/gx/GXGeometry.h"
#include "dolphin/os/OSCache.h"
#include "dolphin/types.h"

#include "Kyoto/Graphics/CTexture.hpp"
#include <Kyoto/Graphics/CModel.hpp>

#include <Kyoto/Graphics/CGraphics.hpp>
#include <Kyoto/IObjectStore.hpp>
#include <Kyoto/TToken.hpp>

static bool sIsTextureTimeoutEnabled = true;
uint CModel::sTotalMemory = 0;
CModel* CModel::sThisFrameList = nullptr;
CModel* CModel::sOneFrameList = nullptr;
CModel* CModel::sTwoFrameList = nullptr;
static uint sFrameCounter = 0;

static uchar* MemoryFromPartData(uchar*& dataCur, int*& secSizeCur) {
  uchar* ret = *secSizeCur != 0 ? dataCur : nullptr;
  dataCur += *secSizeCur;
  secSizeCur++;
  return ret;
}

CModel::CModel(const rstl::auto_ptr< uchar >& data, int length, IObjectStore& store)
: x0_data(data.release())
, x4_dataLen(length)
, x28_modelInstance(nullptr)
, x2c_currentMatxIdx(0)
, x2e_lastMaterialFrame(0)
, x30_prev(nullptr)
, x34_next(sThisFrameList)
, x38_lastFrame(CGraphics::GetFrameCounter() - 2) {

  uint sectionSizeStart = 0x2c;
  uchar* dataPtr = data.get();
  uint flags = *(uint*)(dataPtr + 8);
  if (*(uint*)(dataPtr + 4) == 1) {
    sectionSizeStart = 0x28;
  }

  int* secSizeCur = (int*)(dataPtr + sectionSizeStart);
  uint numMatSets = 1;
  if (*(uint*)(dataPtr + 4) > 1) {
    numMatSets = *(uint*)(dataPtr + 0x28);
  }
  uchar* dataCur = dataPtr + (((sectionSizeStart + *(uint*)(dataPtr + 0x24) * 4) + 31) & ~31);
  x18_matSets.reserve(numMatSets);
  for (uint i = 0; i < numMatSets; ++i) {
    x18_matSets.push_back(SShader(MemoryFromPartData(dataCur, secSizeCur)));
    SShader& shader = x18_matSets.back();
    CCubeModel::MakeTexturesFromMats(shader.x10_data, shader.x0_textures, store, true);
    x4_dataLen += shader.x0_textures.size() * 12;
  }

  CVector3f* positions = reinterpret_cast< CVector3f* >(MemoryFromPartData(dataCur, secSizeCur));
  CVector3f* normals = reinterpret_cast< CVector3f* >(MemoryFromPartData(dataCur, secSizeCur));
  uint* vtxColors = reinterpret_cast< uint* >(MemoryFromPartData(dataCur, secSizeCur));
  CVector2f* floatUvs = reinterpret_cast< CVector2f* >(MemoryFromPartData(dataCur, secSizeCur));
  ushort* shortUvs = nullptr;
  if ((flags >> 2) & 1) {
    shortUvs = reinterpret_cast< ushort* >(MemoryFromPartData(dataCur, secSizeCur));
  }

  uint* surfaceInfo = reinterpret_cast< uint* >(MemoryFromPartData(dataCur, secSizeCur));
  uint surfaceCount = *surfaceInfo;
  x8_surfaces.reserve(surfaceCount);

  for (int i = 0; i < surfaceCount; ++i) {
    x8_surfaces.push_back(MemoryFromPartData(dataCur, secSizeCur));
  }

  SShader& shader = x18_matSets.front();
  const CAABox* box = reinterpret_cast< const CAABox* >(dataPtr + 8);
  x28_modelInstance =
      rs_new CCubeModel(&x8_surfaces, &shader.x0_textures, shader.x10_data, positions, normals,
                        vtxColors, floatUvs, shortUvs, *box, (flags >> 1) & 1, true, -1);
  sThisFrameList = this;
  if (x34_next != nullptr) {
    x34_next->x30_prev = this;
  }
  x4_dataLen += x8_surfaces.size() * 4;
  sTotalMemory += x4_dataLen;
  DCFlushRange(x0_data.get(), x4_dataLen);
}

CModel::~CModel() {
  RemoveFromList();
  RemoveFromTotal(x4_dataLen);
  const int frame = CGraphics::GetFrameCounter();
  if (x38_lastFrame == frame) {
    CFrameDelayedKiller::fn_8036CC1C(1, x0_data.release());
  } else if (x38_lastFrame == frame - 1) {
    CFrameDelayedKiller::fn_8036CC1C(0, x0_data.release());
  }
}
CFactoryFnReturn FModelFactory(const SObjectTag& tag, const rstl::auto_ptr< uchar >& ptr, int len,
                               const CVParamTransfer& xfer) {
  rstl::rc_ptr< IVParamObj > obj = xfer.x0_obj;
  CSimplePool* pool = static_cast< TObjOwnerParam< CSimplePool* >* >(obj.GetPtr())->GetData();
  GXInvalidateVtxCache();
  return rs_new CModel(ptr, len, *pool);
}

const float* CModel::GetPositions() const {
  return static_cast< const float* >(x28_modelInstance->GetPositions());
}

const float* CModel::GetNormals() const {
  return static_cast< const float* >(x28_modelInstance->GetNormals());
}

void CModel::Touch(int shader) const {
  MoveToThisFrameList();
  VerifyCurrentShader(shader);
  if (x28_modelInstance->TryLockTextures()) {
    const rstl::vector< TCachedToken< CTexture > >& textures = x28_modelInstance->GetTextures();
    for (AUTO(it, textures.begin()); it != textures.end(); ++it) {
      if (it->GetObject()) {
        (void)it->GetObject()->LoadToMRAM();
      }
    }
  }
}

bool CModel::IsLoaded(int shader) const {
  VerifyCurrentShader(shader);

  const rstl::vector< TCachedToken< CTexture > >& textures = x28_modelInstance->GetTextures();
  for (AUTO(it, textures.begin()); it != textures.end(); ++it) {
    if (!it->IsLoaded()) {
      return false;
    }
  }
  return true;
}

void CModel::MoveToThisFrameList() const {
  const_cast< CModel* >(this)->UpdateLastFrame();

  if (sThisFrameList == this) {
    return;
  }
  RemoveFromList();

  if (sThisFrameList != nullptr) {
    x34_next = sThisFrameList;
    x34_next->x30_prev = const_cast< CModel* >(this);
  }

  sThisFrameList = const_cast< CModel* >(this);
}

void CModel::RemoveFromList() const {
  if (x30_prev != nullptr) {
    x30_prev->x34_next = x34_next;
  } else if (this == sThisFrameList) {
    sThisFrameList = x34_next;
  } else if (this == sOneFrameList) {
    sOneFrameList = x34_next;
  } else if (this == sTwoFrameList) {
    sTwoFrameList = x34_next;
  }

  if (x34_next != nullptr) {
    x34_next->x30_prev = x30_prev;
  }

  x30_prev = nullptr;
  x34_next = nullptr;
}

void CModel::SShader::UnlockTextures() {
  for (AUTO(it, x0_textures.begin()); it != x0_textures.end(); ++it) {
    it->Unlock();
  }
}

void CModel::FrameDone() {
  ++sFrameCounter;
  if (!sIsTextureTimeoutEnabled) {
    return;
  }

  for (CModel* model = sTwoFrameList; model != nullptr;) {
    CModel* next = model->x34_next;
    model->VerifyCurrentShader(0);
    model->UnlockTextures();
    model->x34_next = nullptr;
    model->x30_prev = nullptr;
    model = next;
  }

  sTwoFrameList = sOneFrameList;
  sOneFrameList = sThisFrameList;
  sThisFrameList = nullptr;
}

void CModel::DisableTextureTimeout() { sIsTextureTimeoutEnabled = false; }

void CModel::EnableTextureTimeout() { sIsTextureTimeoutEnabled = true; }

void CModel::UpdateLastFrame() const { x38_lastFrame = CGraphics::GetFrameCounter(); }