#ifndef _CRIDLEY
#define _CRIDLEY

#include "types.h"

#include "MetroidPrime/Enemies/CPatterned.hpp"

class CRidley : public CPatterned {
public:
  CRidley(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
          const CTransform4f& xf, const CModelData& mData, const CPatternedInfo& pInfo,
          const CActorParameters& actParms, const CInputStream& in, uint propCount);

  ~CRidley() override;
  void Accept(IVisitor& visitor) override;

  static int GetNumProperties() { return skNumProperties; }

private:
  uchar x568_pad[0xD18 - 0x568];

  static const int skNumProperties;
};
CHECK_SIZEOF(CRidley, 0xD18)

#endif // _CRIDLEY
