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
  const rstl::vector< CBoolPOINode >& GetBoolPOIStream() const { return mBoolNodes; }
  const rstl::vector< CInt32POINode >& GetInt32POIStream() const { return mInt32Nodes; }
  const rstl::vector< CParticlePOINode >& GetParticlePOIStream() const { return mParticleNodes; }
  const rstl::vector< CSoundPOINode >& GetSoundPOIStream() const { return mSoundNodes; }

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
