#ifndef _CANIMPOIDATA
#define _CANIMPOIDATA

#include "Kyoto/CFactoryFnReturn.hpp"
#include "rstl/optional_object.hpp"
#include <rstl/vector.hpp>

class CInputStream;
class CInt32POINode;
class CBoolPOINode;
class CSoundPOINode;
class CParticlePOINode;
class CAnimPOIData {
public:
  CAnimPOIData(CInputStream& in);

private:
  uint mVersion;
  rstl::vector< CBoolPOINode > mBoolNodes;
  rstl::vector< CInt32POINode > mInt32Nodes;
  rstl::vector< CParticlePOINode > mParticleNodes;
  rstl::vector< CSoundPOINode > mSoundNodes;
};

CFactoryFnReturn AnimPOIDataFactory(const SObjectTag& tag, CInputStream& in,
                                    const CVParamTransfer& xfer);

#endif // _CANIMPOIDATA
