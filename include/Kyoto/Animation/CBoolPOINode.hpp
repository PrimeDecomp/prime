#ifndef _CBOOLPOINODE
#define _CBOOLPOINODE

#include "Kyoto/Animation/CPOINode.hpp"

class CBoolPOINode : public CPOINode {
public:
  CBoolPOINode(rstl::string name = rstl::string_l(""), ushort type = kPT_EmptyBool,
               const CCharAnimTime& time = CCharAnimTime(), int index = -1, bool unique = false,
               float weight = 1.f, int charIdx = -1, int flags = 0, bool value = false);
  // : CPOINode(name, type, time, index, unique, weight, charIdx, flags), x38_val(value) {}

  CBoolPOINode(CInputStream& in);
  static CBoolPOINode CopyNodeMinusStartTime(const CBoolPOINode& node,
                                             const CCharAnimTime& startTime);
  bool GetValue() const { return x38_val; }

private:
  bool x38_val;
};

#endif // _CBOOLPOINODE
