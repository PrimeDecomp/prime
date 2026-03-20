#ifndef _CSPACEPIRATE
#define _CSPACEPIRATE

#include "MetroidPrime/Enemies/CPatterned.hpp"

class CSpacePirate : public CPatterned {
public:
  CSpacePirate(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
               const CTransform4f& xf, const CModelData& mData, const CActorParameters& actParms,
               const CPatternedInfo& pInfo, CInputStream& in, int propCount);

  static uint GetNumProperties() { return skNumProperties; }

private:
  uchar x568_pad[0x8e0 - 0x568];

  static const uint skNumProperties;
};
CHECK_SIZEOF(CSpacePirate, 0x8e0)

#endif // _CSPACEPIRATE
