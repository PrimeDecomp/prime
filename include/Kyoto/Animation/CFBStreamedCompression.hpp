#ifndef _CFBSTREAMEDCOMPRESSION
#define _CFBSTREAMEDCOMPRESSION

#include "types.h"

#include "Kyoto/Animation/CCharAnimTime.hpp"
#include "Kyoto/Animation/CAnimPOIData.hpp"
#include "Kyoto/Animation/CSteadyStateAnimInfo.hpp"
#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/pair.hpp"
#include "rstl/single_ptr.hpp"

class CAnimPOIData;
class IObjectStore;

class CStandardMultiFormatHeader {
public:
  CStandardMultiFormatHeader(CInputStream& in)
  : x0_(in.Get< uint >())
  , x4_maxTime(in.Get< float >())
  , x8_standardInterval(in.Get< float >())
  , xc_rootBoneId(in.Get< uint >())
  , x10_looping(in.Get< uint >())
  , x14_rotationValueForOne(in.Get< uint >())
  , x18_offsetResolution(in.Get< float >())
  , x1c_boneChannelCount(in.Get< uint >())
  , x20_(in.Get< uint >()) {}

  const void* AfterEnd() const { return this + 1; }
  CCharAnimTime GetMaxTime() const { return CCharAnimTime(x4_maxTime); }
  CCharAnimTime GetStandardInterval() const { return CCharAnimTime(x8_standardInterval); }
  bool IsLooping() const { return x10_looping != 0; }
  uint GetRotationValueForOne() const { return x14_rotationValueForOne; }
  float GetOffsetResolution() const { return x18_offsetResolution; }

private:
  uint x0_;
  float x4_maxTime;
  float x8_standardInterval;
  uint xc_rootBoneId;
  uint x10_looping;
  uint x14_rotationValueForOne;
  float x18_offsetResolution;
  uint x1c_boneChannelCount;
  uint x20_;
};
CHECK_SIZEOF(CStandardMultiFormatHeader, 0x24)

template < typename T >
class TLoadedVal {
public:
  const T& operator*() const { return x0_value; }

private:
  T x0_value;
};

// These headers are constructed directly in a buffer. Their variable-length
// payload follows the fixed fields, without padding between channel records.
template < uint Components, uint ConstantComponent, uint SignComponent >
class CFBBitCompressedDataChannelHeader {
public:
  CFBBitCompressedDataChannelHeader(CInputStream& in) {
    ushort width = in.Get< ushort >();
    *reinterpret_cast< ushort* >(this) = width;
    uchar* data = reinterpret_cast< uchar* >(this) + sizeof(ushort);
    if (width != 0) {
      for (uint i = 0; i < Components; ++i) {
        if (i != SignComponent) {
          Write(data, in.Get< short >());
          data[2] = in.Get< schar >();
          data += 3;
        }
      }
    }
  }

  static void Write(uchar* out, short value) { *reinterpret_cast< short* >(out) = value; }
  const TLoadedVal< ushort >& Width() const { return x0_width; }
  uint GetWidth() const { return *Width(); }
  static uint Height() { return Components; }
  short GetInitialValue(uint component) const {
    if (component == SignComponent) {
      return 0;
    }
    uint index = component;
    if (SignComponent < Components) {
      --index;
    }
    return *reinterpret_cast< const short* >(reinterpret_cast< const uchar* >(this) +
                                            sizeof(ushort) + index * 3);
  }
  uint GetBitCount(uint component) const {
    uint index = component;
    if (SignComponent < Components) {
      --index;
    }
    return reinterpret_cast< const uchar* >(this)[sizeof(ushort) + index * 3 + 2];
  }
  const uchar* AfterEnd() const {
    if (*Width() == 0) {
      return reinterpret_cast< const uchar* >(this) + sizeof(ushort);
    }
    return reinterpret_cast< const uchar* >(this) + sizeof(ushort) +
           3 * (Height() - (SignComponent < Components));
  }
  uint GetSumOfBitCounts() const {
    if (*Width() == 0) {
      return 0;
    }
    uint sum = 0;
    const uchar* data = reinterpret_cast< const uchar* >(this) + sizeof(ushort);
    for (uint i = 0; i < Components; ++i) {
      if (i == SignComponent) {
        sum += 1;
      } else {
        sum += data[2];
        data += 3;
      }
    }
    return sum;
  }

private:
  TLoadedVal< ushort > x0_width;
};

class CFBStreamedPerChannelHeader {
public:
  typedef CFBBitCompressedDataChannelHeader< 4, 100000, 0 > RotationHeader;
  typedef CFBBitCompressedDataChannelHeader< 3, 100000, 100000 > OffsetHeader;

  CFBStreamedPerChannelHeader(CInputStream& in) : x0_segId(in.Get< uint >()) {
    new (const_cast< RotationHeader* >(&GetRotationBitStorage())) RotationHeader(in);
    new (const_cast< OffsetHeader* >(&GetOffsetBitStorage())) OffsetHeader(in);
  }
  CSegId GetSegId() const { return CSegId(x0_segId); }
  const RotationHeader& GetRotationBitStorage() const {
    return *reinterpret_cast< const RotationHeader* >(this + 1);
  }
  const OffsetHeader& GetOffsetBitStorage() const {
    return *reinterpret_cast< const OffsetHeader* >(GetRotationBitStorage().AfterEnd());
  }
  const CFBStreamedPerChannelHeader* AfterEnd() const {
    return reinterpret_cast< const CFBStreamedPerChannelHeader* >(GetOffsetBitStorage().AfterEnd());
  }
  uint GetSumOfBitCounts() const {
    return GetRotationBitStorage().GetSumOfBitCounts() + GetOffsetBitStorage().GetSumOfBitCounts();
  }

private:
  uint x0_segId;
};
CHECK_SIZEOF(CFBStreamedPerChannelHeader, 0x4)

class TLoadedContainerBase {
protected:
  static void LoadSize(uint& size, CInputStream& in) { size = in.Get< uint >(); }
};

template < typename Size, typename T >
class TArrayInPlaceBase : public TLoadedContainerBase {
public:
  int size() const { return x0_size; }
  const uchar* GetFirstAddress() const { return reinterpret_cast< const uchar* >(&x0_size + 1); }

protected:
  Size x0_size;
};

template < typename Size, typename T >
class TVectorOfVaryingLengthItems : public TArrayInPlaceBase< Size, T > {
public:
  class const_iterator {
  public:
    const_iterator(const T* ptr, int count) : x0_ptr(ptr), x4_count(count) {}
    const_iterator(const const_iterator& other) : x0_ptr(other.x0_ptr), x4_count(other.x4_count) {}
    const_iterator& operator++() {
      x0_ptr = reinterpret_cast< const T* >(x0_ptr->AfterEnd());
      --x4_count;
      return *this;
    }
    const T& operator*() const { return *x0_ptr; }
    const T* operator->() const { return x0_ptr; }
    bool operator==(const const_iterator& other) const { return x4_count == other.x4_count; }
    bool operator!=(const const_iterator& other) const { return !(*this == other); }

  private:
    const T* x0_ptr;
    int x4_count;
  };

  template < typename Stream >
  TVectorOfVaryingLengthItems(Stream& in) {
    LoadSize(x0_size, in);
    int count = size();
    const T* ptr = reinterpret_cast< const T* >(GetFirstAddress());
    for (int i = 0; i < count; ++i) {
      new (const_cast< T* >(ptr)) T(in);
      ptr = ptr->AfterEnd();
    }
  }
  const uchar* AfterEnd() const {
    const_iterator it(begin());
    for (int i = 0; i < size(); ++i) {
      ++it;
    }
    return reinterpret_cast< const uchar* >(&*it);
  }
  const_iterator begin() const {
    return const_iterator(reinterpret_cast< const T* >(GetFirstAddress()), size());
  }
  const_iterator end() const { return const_iterator(nullptr, 0); }
};

class CFBStreamedPerChannelHeaderList
: public TVectorOfVaryingLengthItems< uint, CFBStreamedPerChannelHeader > {
public:
  template < typename Stream >
  CFBStreamedPerChannelHeaderList(Stream& in)
  : TVectorOfVaryingLengthItems< uint, CFBStreamedPerChannelHeader >(in) {}

  uint GetSumOfBitCounts() const {
    uint sum = 0;
    for (const_iterator it = begin(); it != end(); ++it) {
      sum += it->GetSumOfBitCounts();
    }
    return sum;
  }
};
CHECK_SIZEOF(CFBStreamedPerChannelHeaderList, 0x4)

class CFBKeyFrameReductionPerChannel_HeaderForAll {
public:
  typedef rstl::pair< const uint*, uint > FrameIterator;

  template < typename Stream >
  CFBKeyFrameReductionPerChannel_HeaderForAll(Stream& in) : x0_bitCount(in.Get< uint >()) {
    uint words = Uint32sForBitCount(x0_bitCount);
    uint* data = &x0_bitCount + 1;
    for (uint i = 0; i < words; ++i) {
      data[i] = LoadUint32(in);
    }
  }
  static uint LoadUint32(CInputStream& in) { return in.Get< uint >(); }
  static uint Uint32sForBitCount(uint bits) { return (bits % 32 == 0) ? bits / 32 : bits / 32 + 1; }
  uint FrameAfter(uint frame) const {
    uint word = frame / 32;
    uint bit = frame - word * 32;
    FrameIterator it(reinterpret_cast< const uint* >(this + 1) + word, 1u << bit);
    do {
      ++frame;
      Advance(it);
    } while (!FrameAt(it));
    return frame;
  }
  static bool FrameAt(const FrameIterator& it) { return (*it.first & it.second) != 0; }
  static void Advance(FrameIterator& it) {
    it.second <<= 1;
    if (it.second == 0) {
      it.second = 1;
      ++it.first;
    }
  }
  const void* AfterEnd() const {
    return reinterpret_cast< const uint* >(this + 1) + Uint32sForBitCount(x0_bitCount);
  }

private:
  uint x0_bitCount;
};
CHECK_SIZEOF(CFBKeyFrameReductionPerChannel_HeaderForAll, 0x4)

class CFBStreamedCompressionTimeHeader : public CFBKeyFrameReductionPerChannel_HeaderForAll {
public:
  template < typename Stream >
  CFBStreamedCompressionTimeHeader(Stream& in) : CFBKeyFrameReductionPerChannel_HeaderForAll(in) {}
};
CHECK_SIZEOF(CFBStreamedCompressionTimeHeader, 0x4)

class CFBStreamedCompression {
public:
  CFBStreamedCompression(CInputStream& in, IObjectStore& store);
  ~CFBStreamedCompression();

  CCharAnimTime GetAnimationDuration() const;
  bool HasPOIData() const { return !x8_evntToken.null(); }
  const rstl::vector< CBoolPOINode >& GetBoolPOIStream() const {
    return (*x8_evntToken)->GetBoolPOIStream();
  }
  const rstl::vector< CInt32POINode >& GetInt32POIStream() const {
    return (*x8_evntToken)->GetInt32POIStream();
  }
  const rstl::vector< CParticlePOINode >& GetParticlePOIStream() const {
    return (*x8_evntToken)->GetParticlePOIStream();
  }
  const rstl::vector< CSoundPOINode >& GetSoundPOIStream() const {
    return (*x8_evntToken)->GetSoundPOIStream();
  }
  CSteadyStateAnimInfo GetSteadyStateAnimInfo() const {
    return CSteadyStateAnimInfo(MainHeader().IsLooping(), GetAnimationDuration(), x14_rootOffset);
  }
  CCharAnimTime FinestSample() const { return MainHeader().GetStandardInterval(); }
  const CStandardMultiFormatHeader& MainHeader() const {
    return *reinterpret_cast< const CStandardMultiFormatHeader* >(xc_rotsAndOffs.get());
  }
  const CFBStreamedCompressionTimeHeader&
  TimeHeader(const CStandardMultiFormatHeader& header) const {
    return *static_cast< const CFBStreamedCompressionTimeHeader* >(header.AfterEnd());
  }
  const CFBStreamedPerChannelHeaderList&
  GetPerChannelHeaderList(const CFBStreamedCompressionTimeHeader& header) const {
    return *static_cast< const CFBStreamedPerChannelHeaderList* >(header.AfterEnd());
  }
  const uint* GetBytes(const CFBStreamedPerChannelHeaderList& header) const {
    return reinterpret_cast< const uint* >(header.AfterEnd());
  }
  uint GetNumKeyframes() const {
    return GetPerChannelHeaderList(TimeHeader(MainHeader()))
        .begin()
        ->GetRotationBitStorage()
        .GetWidth();
  }

private:
  static rstl::auto_ptr< uint > GetRotationsAndOffsets(uint words, CInputStream& in);

  uint x0_scratchSize;
  uint x4_evnt;
  rstl::single_ptr< TLockedToken< CAnimPOIData > > x8_evntToken;
  rstl::single_ptr< uint > xc_rotsAndOffs;
  float x10_averageVelocity;
  CVector3f x14_rootOffset;
};
CHECK_SIZEOF(CFBStreamedCompression, 0x20)

#endif // _CFBSTREAMEDCOMPRESSION
