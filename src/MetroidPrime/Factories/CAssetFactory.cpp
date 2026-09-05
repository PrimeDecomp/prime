#include "MetroidPrime/Factories/CCharacterFactoryBuilder.hpp"

#include "MetroidPrime/CAnimRes.hpp"
#include "MetroidPrime/Factories/CCharacterFactory.hpp"

#include "Kyoto/Animation/CAnimCharacterSet.hpp"

CFactoryFnReturn CCharacterFactoryBuilder::CDummyFactory::Build(const SObjectTag& tag,
                                                              const CVParamTransfer& params) {
  const CAssetId id = tag.GetId();
  TToken< CAnimCharacterSet > ancs = gpSimplePool->GetObj(SObjectTag('ANCS', id));
  return CFactoryFnReturn(CFactoryFnReturn(rs_new CCharacterFactory(*gpSimplePool, **ancs, id)));
}

void CCharacterFactoryBuilder::CDummyFactory::BuildAsync(const SObjectTag& tag,
                                                       const CVParamTransfer& params,
                                                       IObj** out) {
  *out = Build(tag, params).GetObjForTransfer().release();
}

void CCharacterFactoryBuilder::CDummyFactory::CancelBuild(const SObjectTag&) {}

CCharacterFactoryBuilder::CCharacterFactoryBuilder() : x4_dummyStore(x0_dummyFactory) {}

CCharacterFactoryBuilder::~CCharacterFactoryBuilder() {}

TToken< CCharacterFactory > CCharacterFactoryBuilder::GetFactory(const CAnimRes& res) {
  return x4_dummyStore.GetObj(SObjectTag('ANCS', res.GetId()), CVParamTransfer::Null());
}
