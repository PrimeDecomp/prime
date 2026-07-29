#include "Kyoto/Animation/CAnimSource.hpp"

#include "Kyoto/Animation/CCharAnimMemoryMetrics.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

static float clamp_zero_to_one(register const float v) {
  register float zero = 0.f;
  register float one = 1.f;

  register float res, tmp;

  asm {
    fsel res, v, v, zero;
    fsubs tmp, v, one;
    fsel res, tmp, one, res;
  }

  return res;
}
uint RotationAndOffsetStorage::DataSizeInBytes(uint rotationsCountPerFrame, uint offsetsPerFrame,
                                               uint frameCount) {
  return (rotationsCountPerFrame * sizeof(CQuaternion) + offsetsPerFrame * sizeof(CVector3f)) *
         frameCount;
}

RotationAndOffsetStorage::RotationAndOffsetStorage(const CRotationAndOffsetVectors& storage,
                                                   const uint numFrames)
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
  const uint sizeInBytes =
      DataSizeInBytes(rotations.size() / numFrames, offsets.size() / numFrames, numFrames);
  rstl::auto_ptr< uint > storage(rs_new uint[sizeInBytes / 4 + 1]);
  CopyRotationsAndOffsets(rotations, offsets, numFrames, reinterpret_cast< float* >(storage.get()));

  return storage;
}

void RotationAndOffsetStorage::CopyRotationsAndOffsets(const rstl::vector< CQuaternion >& rotations,
                                                       const rstl::vector< CVector3f >& offsets,
                                                       const uint numFrames, float* buf) {
  const uint rotationsPerFrame = rotations.size() / numFrames;
  const uint offsetsPerFrame = offsets.size() / numFrames;

  for (int frame = 0; frame < numFrames; frame++) {
    for (int rotation = 0, i = 0; rotation < rotationsPerFrame; rotation++, i += numFrames) {
      const CQuaternion& q = rotations[frame * i + rotation];
      *(buf++) = q.GetW();
      *(buf++) = q.GetX();
      *(buf++) = q.GetY();
      *(buf++) = q.GetZ();
    }

    for (int offset = 0, i = 0; offset < offsetsPerFrame; offset++, i += numFrames) {
      const CVector3f& o = offsets[frame * i + offset];
      *(buf++) = o.GetX();
      *(buf++) = o.GetY();
      *(buf++) = o.GetZ();
    }
  }
}

uint RotationAndOffsetStorage::GetFrameSizeInBytes() const {
  return xc_rotationsPerFrame * sizeof(CQuaternion) + x10_offsetsPerFrame * sizeof(CVector3f);
}

RotationAndOffsetStorage::CRotationAndOffsetVectors::CRotationAndOffsetVectors(CInputStream& in)
: x0_rotations(in), x10_offsets(in) {}

CAnimSource::CAnimSource(CInputStream& in, IObjectStore& store)
: x0_duration(in)
, x8_interval(in)
, x10_frameCount(in.Get< uint >())
, x1c_root(in)
, x20_rotationChannels(in)
, x30_offsetChannels(in)
, x40_storage(RotationAndOffsetStorage::CRotationAndOffsetVectors(in), x10_frameCount)
, x54_eventId(in.Get< CAssetId >())
, x60_averageVelocity(0.f) {
  if (x54_eventId != 0) {
    x58_eventData =
        rs_new TLockedToken< CAnimPOIData >(store.GetObj(SObjectTag('EVNT', x54_eventId)));
  }

  CalcAverageVelocity();

  uint totalSize = x20_rotationChannels.size() + (sizeof(CQuaternion) + sizeof(CVector3f)) + 1;
  totalSize += x30_offsetChannels.size();
  totalSize += x10_frameCount * x40_storage.GetFrameSizeInBytes();
  CCharAnimMemoryMetrics::AddToTotalSize(totalSize + sizeof(CCharAnimTime),
                                         CCharAnimMemoryMetrics::kASS_Two);
}

CAnimSource::~CAnimSource() {
  uint totalSize = x20_rotationChannels.size() + (sizeof(CQuaternion) + sizeof(CVector3f)) + 1;
  totalSize += x30_offsetChannels.size();
  totalSize += x10_frameCount * x40_storage.GetFrameSizeInBytes();
  CCharAnimMemoryMetrics::SubtractFromTotalSize(totalSize + sizeof(CCharAnimTime),
                                                CCharAnimMemoryMetrics::kASS_Two);
}

int CAnimSource::HasOffset(const CSegId& seg) const {
  uint ret = x30_offsetChannels[x20_rotationChannels[seg.val()]];
  ret >>= 31;
  return ret ^ 1;
}

CVector3f CAnimSource::GetOffset(const CSegId& seg, const CCharAnimTime& animTime) const {
  const float frameTime = animTime.GetSeconds();
  float interval = x8_interval.GetSeconds();
  const float invTime = __fres(interval);
  const uint frame = static_cast< uint >(frameTime * invTime);
  float time = (interval * frame);
  time = frameTime - time;

  if (fabs(time) < DBL_EPSILON) {
    time = 0.f;
  }

  time = clamp_zero_to_one(time * invTime);

  schar v = x20_rotationChannels[seg.val()];
  if (v >= 0) {

    return CVector3f(0.f, 0.f, 0.f);
  }

  return CVector3f::Zero();
}
