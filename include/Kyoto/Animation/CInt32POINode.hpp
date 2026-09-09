#ifndef _CINT32POINODE
#define _CINT32POINODE

#include "Kyoto/Animation/CPOINode.hpp"

class CInt32POINode : public CPOINode {
public:
  CInt32POINode(rstl::string name = rstl::string_l(""), ushort type = kPT_EmptyInt32,
                const CCharAnimTime& time = CCharAnimTime(), int index = -1, bool unique = false,
                float weight = 1.f, int charIdx = -1, int flags = 0, int value = 0,
                const rstl::string& locatorName = rstl::string_l("root"));
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
