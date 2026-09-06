#include "Kyoto/Animation/CMetaAnimPlay.hpp"
#include "Kyoto/Animation/CAllFormatsAnimSource.hpp"
#include "Kyoto/Animation/CAnimSysContext.hpp"
#include "Kyoto/Animation/CAnimTreeAnimReaderContainer.hpp"
#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

rstl::ncrc_ptr< CAnimTreeNode >
CMetaAnimPlay::VGetAnimationTree(const CAnimSysContext& animSys,
                                 const CMetaAnimTreeBuildOrders& orders) const {
  if (orders.x0_recursiveAdvance)
    return GetAnimationTree(
        animSys, CMetaAnimTreeBuildOrders::PreAdvanceForAll(*orders.x0_recursiveAdvance));

  IObjectStore& pool = animSys.GetSimplePool();
  const SObjectTag tag('ANIM', x4_primitive.GetResourceId());
  TLockedToken< CAllFormatsAnimSource > anim = pool.GetObj(tag);
  rstl::ownership_transfer< IAnimReader > reader =
      CAllFormatsAnimSource::GetNewReader(anim, x1c_startTime);
  return rs_new CAnimTreeAnimReaderContainer(reader, x4_primitive.GetName(),
                                             x4_primitive.GetAnimDatabaseIndex());
}

void CMetaAnimPlay::GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const {
  primsOut.insert(x4_primitive);
}

void CMetaAnimPlay::WriteAnimData(COutputStream& out) const {
  x4_primitive.PutTo(out);
  x1c_startTime.PutTo(out);
}
