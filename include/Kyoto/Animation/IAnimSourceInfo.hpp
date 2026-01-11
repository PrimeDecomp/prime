#ifndef _IANIMSOURCEINFO
#define _IANIMSOURCEINFO

#include <rstl/vector.hpp>

class CBoolPOINode;
class CInt32POINode;
class CParticlePOINode;
class CSoundPOINode;
class IAnimSourceInfo {
public:
  virtual bool HasPOIData() const = 0;
  virtual const rstl::vector< CBoolPOINode >* GetBoolPOIStream() const = 0;
  virtual const rstl::vector< CInt32POINode >* GetInt32POIStream() const = 0;
  virtual const rstl::vector< CParticlePOINode >* GetParticlePOIStream() const = 0;
  virtual const rstl::vector< CSoundPOINode >* GetSoundPOIList() const = 0;
  virtual ~IAnimSourceInfo() {}
};

#endif // _IANIMSOURCEINFO
