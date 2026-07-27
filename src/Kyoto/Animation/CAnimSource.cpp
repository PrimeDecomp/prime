#include "Kyoto/Animation/CAnimSource.hpp"

#include "Kyoto/Math/CMath.hpp"

static float clamp_zero_to_one(float v) {
  register float out;
  asm {
    lfs f0, 0.f;
    lfs f2, 1.f;
    fsel f0, f1, f1, f0;
    fsubs f1, f1, f2;
    fsel f0, f1, f2, f0;
    fmr out, f0;
  }
  return out;
}

uint RotationAndOffsetStorage::DataSizeInBytes(uint rotationsCountPerFrame, uint offsetsPerFrame,
                                               uint frameCount) {
  return (rotationsCountPerFrame * sizeof(CQuaternion) + offsetsPerFrame * sizeof(CVector3f)) *
         frameCount;
}

RotationAndOffsetStorage::RotationAndOffsetStorage(const CRotationAndOffsetVectors& storage,
                                                   uint numFrames)
: x0_storage(GetRotationsAndOffsets(storage.x0_rotations, storage.x10_offsets, numFrames))
, x8_numFrames(numFrames)
, xc_rotationsPerFrame(storage.x0_rotations.size() / numFrames)
, x10_offsetsPerFrame(storage.x10_offsets.size() / numFrames) {}

rstl::auto_ptr< uint >
RotationAndOffsetStorage::GetRotationsAndOffsets(const rstl::vector< CQuaternion >& rotations,
                                                 const rstl::vector< CVector3f >& offsets,
                                                 uint numFrames) {
  xc_rotationsPerFrame = rotations.size() / numFrames;
  x10_offsetsPerFrame = offsets.size() / numFrames;
  uint sizeInBytes =
      DataSizeInBytes(rotations.size() / numFrames, offsets.size() / numFrames, numFrames);
  rstl::auto_ptr< uint > storage(rs_new uint[sizeInBytes / 4 + 1]);
  CopyRotationsAndOffsets(rotations, offsets, numFrames, reinterpret_cast< float* >(storage.get()));

  return storage;
}