#ifndef _SOBJECTTAG
#define _SOBJECTTAG

#include "types.h"

#define kInvalidAssetId 0xFFFFFFFFu

typedef uint CAssetId;
typedef uint FourCC;

class SObjectTag {
public:
  SObjectTag() {}
  SObjectTag(const FourCC type, const CAssetId id) : mType(type), mId(id) {}
  SObjectTag(const SObjectTag& other) : mType(other.mType), mId(other.mId) {}

  const CAssetId GetId() const { return mId; }
  const FourCC GetType() const { return mType; }
  static const char* Type2Text(FourCC type);

public:
  FourCC mType;
  CAssetId mId;
};

#endif // _SOBJECTTAG
