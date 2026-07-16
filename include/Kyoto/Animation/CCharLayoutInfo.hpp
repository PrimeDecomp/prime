#ifndef _CCHARLAYOUTINFO
#define _CCHARLAYOUTINFO

#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "MetroidPrime/CHierarchyPoseBuilder.hpp"

#include <rstl/string.hpp>

class CCharLayoutNode {
public:
  CCharLayoutNode(CInputStream& in);
  CSegId GetParent() const { return mParent; }
  CVector3f GetReferenceStanceOffset() const { return mReferenceStanceOffset; }
  uint GetNumConnectedParts() const { return mConnectedParts.size(); }

private:
  CSegId mParent;
  CVector3f mReferenceStanceOffset;
  rstl::vector< CSegId > mConnectedParts;
};

class CCharLayoutInfo {
public:
  CCharLayoutInfo(CInputStream& in);
  CSegId GetSegIdFromString(const rstl::string& bone) const;

  void GetBodyPartSegIds() const;

private:
  TSegIdMap< CCharLayoutNode > mNodes;
};

#endif // _CCHARLAYOUTINFO
