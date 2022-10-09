#ifndef _COBJECTREFERENCE
#define _COBJECTREFERENCE

#include <Kyoto/CVParamTransfer.hpp>
#include <Kyoto/SObjectTag.hpp>
#include <rstl/auto_ptr.hpp>

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
  ushort x0_refCount;
  bool x2_locked : 1;
  ushort x2_lockCount : 15;
  SObjectTag x4_objTag;
  IObjectStore* xc_objectStore;
  IObj* x10_object;
  CVParamTransfer x14_params;
};
#endif // _COBJECTREFERENCE
