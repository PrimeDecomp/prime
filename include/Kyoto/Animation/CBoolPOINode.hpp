#ifndef _CBOOLPOINODE
#define _CBOOLPOINODE

#include "Kyoto/Animation/CPOINode.hpp"

class CBoolPOINode : public CPOINode {
public:
  CBoolPOINode(rstl::string name, ushort type, const CCharAnimTime& time, int index, bool unique,
               float weight, int charIdx, int flags, bool value);
  // : CPOINode(name, type, time, index, unique, weight, charIdx, flags), x38_val(value) {}

  CBoolPOINode(CInputStream& in);
  static CBoolPOINode CopyNodeMinusStartTime(const CBoolPOINode& node,
                                             const CCharAnimTime& startTime);
  bool GetValue() const { return x38_val; }

private:
  bool x38_val;
};

#endif // _CBOOLPOINODE
