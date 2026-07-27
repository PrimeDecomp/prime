#ifndef MP1_CSTEADYSTATEANIMINFO_HPP
#define MP1_CSTEADYSTATEANIMINFO_HPP

#include <Kyoto/Animation/CCharAnimTime.hpp>
#include <Kyoto/Math/CVector3f.hpp>

class CSteadyStateAnimInfo {
  CCharAnimTime x0_duration;
  CVector3f x8_offset;
  bool x14_looping;

public:
  CSteadyStateAnimInfo(bool looping, const CCharAnimTime& duration, const CVector3f& offset)
  : x0_duration(duration), x8_offset(offset), x14_looping(looping) {}

  const CCharAnimTime& GetDuration() const { return x0_duration; }
  const CVector3f& GetOffset() const { return x8_offset; }
  bool IsLooping() const { return x14_looping; }
};

#endif // MP1_CSTEADYSTATEANIMINFO_HPP
