#ifndef _CINT32POINODE
#define _CINT32POINODE

#include "Kyoto/Animation/CPOINode.hpp"

class CInt32POINode : public CPOINode {
public:
  CInt32POINode(rstl::string name, ushort type, const CCharAnimTime& time, int index, bool unique,
                float weight, int charIdx, int flags, int value, const rstl::string& locatorName);
  /*: CPOINode(name, type, time, index, unique, weight, charIdx, flags)
  , x38_val(value)
  , x3c_lctrName(locatorName) {} */

  explicit CInt32POINode(CInputStream& in);

  static CInt32POINode CopyNodeMinusStartTime(const CInt32POINode& node,
                                              const CCharAnimTime& startTime);

  int GetValue() const { return x38_val; }
  const rstl::string& GetLocatorName() const { return x3c_lctrName; }

private:
  int x38_val;
  rstl::string x3c_lctrName;
};

#endif // _CINT32POINODE
