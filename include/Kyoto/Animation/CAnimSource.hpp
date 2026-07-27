#ifndef _CANIMSOURCE
#define _CANIMSOURCE

#include "Kyoto/Math/CQuaternion.hpp"
#include "rstl/auto_ptr.hpp"

#include <rstl/vector.hpp>
class CInputStream;
class IObjectStore;

class RotationAndOffsetStorage {
public:
  struct CRotationAndOffsetVectors {
    CRotationAndOffsetVectors(CInputStream& in);

    rstl::vector< CQuaternion > x0_rotations;
    rstl::vector< CVector3f > x10_offsets;
  };
  RotationAndOffsetStorage(const CRotationAndOffsetVectors&, uint numFrames);

  static uint DataSizeInBytes(uint, uint, uint);

  rstl::auto_ptr< uint > GetRotationsAndOffsets(const rstl::vector< CQuaternion >& rotations,
                                                const rstl::vector< CVector3f >& offsets,
                                                uint numFrames);

  static void CopyRotationsAndOffsets(const rstl::vector< CQuaternion >&,
                                      const rstl::vector< CVector3f >&, uint numFrames, float* buf);

private:
  rstl::auto_ptr< uint > x0_storage;
  uint x8_numFrames;
  uint xc_rotationsPerFrame;
  uint x10_offsetsPerFrame;
};

class CAnimSource {
public:
  CAnimSource(CInputStream& in, IObjectStore& store);
  ~CAnimSource();
};

#endif // _CANIMSOURCE
