#ifndef _CCHARLAYOUTINFO
#define _CCHARLAYOUTINFO

#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Animation/CSegIdList.hpp"
#include "Kyoto/Animation/TSegIdMap.hpp"


#include <rstl/map.hpp>
#include <rstl/string.hpp>
#include <rstl/auto_ptr.hpp>

class CCharLayoutNode {
public:
  CCharLayoutNode(CInputStream& in);
  ~CCharLayoutNode() {}
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
  
  CVector3f GetFromParentUnrotated(const CSegId& parent) const;
  const CCharLayoutNode& GetSegmentData(const CSegId& seg) const;

private:
  rstl::auto_ptr< TSegIdMap< CCharLayoutNode > > mNodes;
  CSegIdList mSegIdList;
  rstl::map< rstl::string, CSegId > mNameMap;
};

#endif // _CCHARLAYOUTINFO
