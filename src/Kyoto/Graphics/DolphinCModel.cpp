#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Graphics/CCubeModel.hpp"
#include "Kyoto/Graphics/CCubeSurface.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "dolphin/os/OSCache.h"
#include "dolphin/types.h"
#include <Kyoto/Graphics/CModel.hpp>

#include <Kyoto/Graphics/CGraphics.hpp>
#include <Kyoto/IObjectStore.hpp>

uint CModel::sTotalMemory = 0;
CModel* CModel::sThisFrameList = nullptr;
CModel* CModel::sOneFrameList = nullptr;
CModel* CModel::sTwoFrameList = nullptr;

static uchar* MemoryFromPartData(uchar** dataCur, int** secSizeCur) {
  uchar* ret = **secSizeCur != 0 ? *dataCur : nullptr;
  (*dataCur) += **secSizeCur;
  (*secSizeCur)++;
  return ret;
}

CModel::CModel(const rstl::auto_ptr< uchar >& data, int length, IObjectStore& store)
: x0_data(data)
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
    x18_matSets.push_back(SShader(MemoryFromPartData(&dataCur, &secSizeCur)));
    SShader& shader = x18_matSets.back();
    CCubeModel::MakeTexturesFromMats(shader.x10_data, shader.x0_textures, store, true);
    x4_dataLen += shader.x0_textures.size() * 12;
  }

  CVector3f* positions = reinterpret_cast< CVector3f* >(MemoryFromPartData(&dataCur, &secSizeCur));
  CVector3f* normals = reinterpret_cast< CVector3f* >(MemoryFromPartData(&dataCur, &secSizeCur));
  uint* vtxColors = reinterpret_cast< uint* >(MemoryFromPartData(&dataCur, &secSizeCur));
  CVector2f* floatUvs = reinterpret_cast< CVector2f* >(MemoryFromPartData(&dataCur, &secSizeCur));
  ushort* shortUvs = nullptr;
  if ((flags >> 2) & 1) {
    shortUvs = reinterpret_cast< ushort* >(MemoryFromPartData(&dataCur, &secSizeCur));
  }

  uint* surfaceInfo = reinterpret_cast< uint* >(MemoryFromPartData(&dataCur, &secSizeCur));
  uint surfaceCount = *surfaceInfo;
  x8_surfaces.reserve(surfaceCount);

  for (int i = 0; i < surfaceCount; ++i) {
    x8_surfaces.push_back(MemoryFromPartData(&dataCur, &secSizeCur));
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
