#include "Kyoto/Animation/CSkinRules.hpp"
#include "Kyoto/Graphics/CModel.hpp"
#include "dolphin/os/OSCache.h"
#include "rstl/math.hpp"

#pragma inline_max_size(250)

static int StreamFloatToShort(CInputStream& in) {
  const int result = in.ReadLong();
  if (result == -1) {
    return in.ReadLong();
  }
  uchar junk[780];
  for (int i = 0, iVar2 = 0; i < (result * 3); i += iVar2) {
    iVar2 = rstl::min_val(((result * 3) - i), 192);
    in.Get(junk, iVar2 * 4);
  }
  return result;
}

CSkinRules::CSkinRules(CInputStream& in)
: x0_virtualBones(in)
, x10_vertexCount(StreamFloatToShort(in))
, x14_normalCount(StreamFloatToShort(in)) {

  CModel::AddToTotal(x0_virtualBones.size() * sizeof(CVirtualBone) + sizeof(CSkinRules));
}

CSkinRules::~CSkinRules() {
  CModel::RemoveFromTotal(x0_virtualBones.size() * sizeof(CVirtualBone) + sizeof(CSkinRules));
}

CFactoryFnReturn FSkinRulesFactory(const SObjectTag& tag, CInputStream& in,
                                   const CVParamTransfer&) {
  return rs_new CSkinRules(in);
}

static CSkinRules* sLockedRules = nullptr;
static const CModel* sCurrentTransaction = nullptr;
static int sCurrentPointCount = 0;
static bool sTransferringFirstPage = true;
static int sNextPointStart = nullptr;
static int sNextNormalStart = nullptr;
static int sCurrentPoint = nullptr;
static int sCurrentNormal = nullptr;
static void* sCurrentBase = nullptr;
static int sCurrentFirst = 0;
static int sTransactionCount = 0;

void CSkinRules::InitLockedCacheState(const CModel& model) {
  sLockedRules = this;
  sCurrentTransaction = &model;
  sTransferringFirstPage = true;
  sNextPointStart = nullptr;
  sNextNormalStart = nullptr;
  sCurrentPoint = nullptr;
  sCurrentNormal = nullptr;
  sCurrentBase = nullptr;
  sCurrentFirst = 0;
  sTransactionCount = 0;
  StartNextTransaction();
}

void CSkinRules::StartNextTransaction() {}

static void WaitForQueue() {
  if (!LCQueueLength()) {
    return;
  }
  LCQueueWait(0);
}

void CSkinRules::ProcessingPoints(int count, ushort** buf) {
  if (sCurrentPoint + count > sNextPointStart) {
    if (sCurrentPoint == sNextPointStart) {
      WaitForQueue();
      sCurrentBase = reinterpret_cast< void* >(LC_BASE);
      sCurrentFirst = sNextPointStart;
      if (sTransferringFirstPage) {
        sCurrentBase = reinterpret_cast< void* >(LC_BASE + 0x1000);
      }

      sNextPointStart += sCurrentPointCount;
      StartNextTransaction();
    }

    int c = rstl::min_val(sNextPointStart - sCurrentPoint, count);
    *buf = reinterpret_cast< ushort* >(static_cast< CVector3f* >(sCurrentBase) +
                                       (sCurrentPoint - sCurrentFirst));
    sCurrentPoint += c;
  } else {
    *buf = reinterpret_cast< ushort* >(static_cast< CVector3f* >(sCurrentBase) +
                                       (sCurrentPoint - sCurrentFirst));
    sCurrentPoint += count;
  }
}

void CSkinRules::ProcessingNormals(int count, ushort** buf) {
  if (sCurrentNormal + count > sNextNormalStart) {
    if (sCurrentNormal == sNextNormalStart) {
      WaitForQueue();
      sCurrentBase = reinterpret_cast< void* >(LC_BASE);
      sCurrentFirst = sNextNormalStart;
      if (sTransferringFirstPage) {
        sCurrentBase = reinterpret_cast< void* >(LC_BASE + 0x1000);
      }

      sNextNormalStart += sCurrentPointCount;
      StartNextTransaction();
    }

    int c = rstl::min_val(sNextNormalStart - sCurrentNormal, count);
    *buf = reinterpret_cast< ushort* >(static_cast< CVector3f* >(sCurrentBase) +
                                       (sCurrentNormal - sCurrentFirst));
    sCurrentNormal += c;
  } else {
    *buf = reinterpret_cast< ushort* >(static_cast< CVector3f* >(sCurrentBase) +
                                       (sCurrentNormal - sCurrentFirst));
    sCurrentNormal += count;
  }
}