#ifndef __COBJECTREFERENCE_HPP__
#define __COBJECTREFERENCE_HPP__

#include <Kyoto/CVParamTransfer.hpp>
#include <rstl/auto_ptr.hpp>


#define kInvalidAssetId 0xFFFFFFFFu

typedef uint CAssetId;
typedef uint FourCC;

struct SObjectTag {
  FourCC type;
  CAssetId id;

  SObjectTag() {}
  SObjectTag(FourCC type, CAssetId id) : type(type), id(id) {}
  SObjectTag(const SObjectTag& other) : type(other.type), id(other.id) {}
};

class IObj;
class IObjectStore;
class CObjectReference {
public:
  CObjectReference(const rstl::auto_ptr< IObj >& obj);
  // : x0_refCount(0)
  // , x2_locked(false)
  // , x2_lockCount(0)
  // , xc_objectStore(nullptr)
  // , x10_object(obj.release())
  // , x14_params(CVParamTransfer::Null()) {}

  CObjectReference(IObjectStore* store, const rstl::auto_ptr< IObj >& obj, SObjectTag tag,
                   CVParamTransfer xfer);

  bool IsLoaded() const { return x10_object != nullptr; }
private:
  u16 x0_refCount;
  bool x2_locked : 1;
  u16 x2_lockCount : 15;
  SObjectTag x4_objTag;
  IObjectStore* xc_objectStore;
  IObj* x10_object;
  CVParamTransfer x14_params;
};
#endif // __COBJECTREFERENCE_HPP__
