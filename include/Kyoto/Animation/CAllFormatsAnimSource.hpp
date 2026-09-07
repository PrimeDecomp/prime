#ifndef _CALLFORMATSANIMSOURCE
#define _CALLFORMATSANIMSOURCE

#include <types.h>

#include "Kyoto/Animation/CAnimSource.hpp"
#include "Kyoto/Animation/CFBStreamedCompression.hpp"
#include "Kyoto/Animation/IAnimReader.hpp"

#include "Kyoto/CFactoryFnReturn.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/TToken.hpp"

class CInputStream;
class IObjectStore;
class CAnimFormatUnion {
public:
  CAnimFormatUnion(CInputStream& in, IObjectStore& store);
  ~CAnimFormatUnion();

  int GetType() const { return mFormatType; }
  CAnimSource& AsCAnimSource() { return *reinterpret_cast< CAnimSource* >(mFormatData); }
  const CAnimSource& AsCAnimSource() const {
    return *reinterpret_cast< const CAnimSource* >(mFormatData);
  }
  CFBStreamedCompression& AsCFBStreamedCompression() {
    return *reinterpret_cast< CFBStreamedCompression* >(mFormatData);
  }
  const CFBStreamedCompression& AsCFBStreamedCompression() const {
    return *reinterpret_cast< const CFBStreamedCompression* >(mFormatData);
  }

  static void SubConstruct(uchar* ptr, const uint format, CInputStream& in, IObjectStore& store);

private:
  uint mFormatType;
  uchar mFormatData[0x64];
};

class CAllFormatsAnimSource {
public:
  CAllFormatsAnimSource(CInputStream& in, IObjectStore& store, const SObjectTag& tag);
  ~CAllFormatsAnimSource();

  int GetType() const { return mFormatUnion.GetType(); }
  const CAnimSource& AsCAnimSource() const { return mFormatUnion.AsCAnimSource(); }
  const CFBStreamedCompression& AsCFBStreamedCompression() const {
    return mFormatUnion.AsCFBStreamedCompression();
  }
  void GetFormatPointer(const CAnimSource*& ptr) const { ptr = &AsCAnimSource(); }
  void GetFormatPointer(const CFBStreamedCompression*& ptr) const {
    ptr = &AsCFBStreamedCompression();
  }

  static rstl::ownership_transfer< IAnimReader >
  GetNewReader(const TLockedToken< CAllFormatsAnimSource >& tok, const CCharAnimTime& time);

private:
  CAnimFormatUnion mFormatUnion;
  CVector3f x68_;
  SObjectTag mTag;
};

CHECK_SIZEOF(CAnimFormatUnion, 0x68)
CHECK_SIZEOF(CAllFormatsAnimSource, 0x7c)

template < typename T >
class TSubAnimTypeToken {
public:
  TSubAnimTypeToken(const TLockedToken< CAllFormatsAnimSource >& tok) : x0_token(tok) {
    x0_token->GetFormatPointer(xc_source);
  }
  const T* operator->() const { return xc_source; }
  const T& operator*() const { return *xc_source; }

private:
  TLockedToken< CAllFormatsAnimSource > x0_token;
  const T* xc_source;
};

CFactoryFnReturn AnimSourceFactory(const SObjectTag& tag, CInputStream& in,
                                   const CVParamTransfer& param);
#endif // _CALLFORMATSANIMSOURCE
