#ifndef _CALLFORMATSANIMSOURCE
#define _CALLFORMATSANIMSOURCE

#include <types.h>

#include "Kyoto/Animation/CAnimSource.hpp"
#include "Kyoto/Animation/CAnimSourceReader.hpp"
#include "Kyoto/Animation/CFBStreamedCompression.hpp"

#include "Kyoto/CFactoryFnReturn.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/TToken.hpp"

class CAllFormatsAnimSource;
template < typename T >
class TSubAnimTypeToken {
public:
  TSubAnimTypeToken(const TLockedToken< T >& tok);
};
class CInputStream;
class IObjectStore;
class CAnimFormatUnion {
public:
  CAnimFormatUnion(CInputStream& in, IObjectStore& store);
  ~CAnimFormatUnion();

  static void SubConstruct(uchar* ptr, const uint format, CInputStream& in, IObjectStore& store);

private:
  uint mFormatType;
  uchar mFormatData[0x64];
};

class CAllFormatsAnimSource {
public:
  CAllFormatsAnimSource(CInputStream& in, IObjectStore& storea, const SObjectTag& tag);

  static IAnimReader* GetNewReader(const TLockedToken< CAllFormatsAnimSource >& tok,
                                   const CCharAnimTime& time);

private:
  CAnimFormatUnion mFormatUnion;
  float x68_;
  float x6c_;
  float x70_;
  SObjectTag mTag;
};

CFactoryFnReturn AnimSourceFactory(const SObjectTag& tag, CInputStream& in,
                                   const CVParamTransfer& param);
#endif // _CALLFORMATSANIMSOURCE
