#ifndef _SOBJECTTAG
#define _SOBJECTTAG

#include "Streams/CInputStream.hpp"
#include "types.h"

#define kInvalidAssetId 0xFFFFFFFFu

typedef uint CAssetId;
typedef uint FourCC;

class SObjectTag {
public:
  SObjectTag() {}
  SObjectTag(const FourCC type, const CAssetId id) : mType(type), mId(id) {}
  SObjectTag(const SObjectTag& other) : mType(other.mType), mId(other.mId) {}
  SObjectTag(CInputStream& in) : mType(in.Get< FourCC >()), mId(in.Get< CAssetId >()) {}

  const CAssetId GetId() const { return mId; }
  const FourCC GetType() const { return mType; }
  static const char* Type2Text(FourCC type);

private:
  FourCC mType;
  CAssetId mId;
};

#endif // _SOBJECTTAG
