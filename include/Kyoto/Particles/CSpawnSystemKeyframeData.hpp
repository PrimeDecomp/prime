#ifndef _CSPAWNSYSTEMKEYFRAMEDATA
#define _CSPAWNSYSTEMKEYFRAMEDATA

#include <rstl/pair.hpp>
#include <rstl/vector.hpp>

class CInputStream;
class CSimplePool;
class CSpawnSystemKeyframeData {
public:
  class CSpawnSystemKeyframeInfo {
  public:
    CSpawnSystemKeyframeInfo(CInputStream& in);
  };
  CSpawnSystemKeyframeData(CInputStream& in);
  ~CSpawnSystemKeyframeData() {}

  void LoadAllSpawnedSystemTokens(CSimplePool* pool);

private:
  int mUnknown1;
  int mUnknown2;
  int mEndFrame;
  int mUnknown3;
  rstl::vector< rstl::pair< uint, rstl::vector< CSpawnSystemKeyframeInfo > > > mFrames;
};

#endif // _CSPAWNSYSTEMKEYFRAMEDATA
