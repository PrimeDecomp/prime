#ifndef _CANIMSOURCE
#define _CANIMSOURCE

#include "CAnimPOIData.hpp"
#include "Kyoto/Animation/CCharAnimTime.hpp"
#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/SObjectTag.hpp"
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
  uint GetFrameSizeInBytes() const;

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

  int HasOffset(const CSegId& seg) const;
  CVector3f GetOffset(const CSegId& seg, const CCharAnimTime& animTime) const;
  void CalcAverageVelocity();

private:
  CCharAnimTime x0_duration;
  CCharAnimTime x8_interval;
  uint x10_frameCount;
  uint x14_;
  uint x18_;
  CSegId x1c_root;
  rstl::vector< schar > x20_rotationChannels;
  rstl::vector< schar > x30_offsetChannels;
  RotationAndOffsetStorage x40_storage;
  CAssetId x54_eventId;
  rstl::auto_ptr< TLockedToken< CAnimPOIData > > x58_eventData;
  float x60_averageVelocity;
};

#endif // _CANIMSOURCE
