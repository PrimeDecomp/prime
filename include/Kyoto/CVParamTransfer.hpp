#ifndef _CVPARAMTRANSFER
#define _CVPARAMTRANSFER

#include "Kyoto/IObj.hpp"
#include <rstl/rc_ptr.hpp>

class IVParamObj : public IObj {};

template < typename T >
class TObjOwnerParam : public IVParamObj {
public:
  ~TObjOwnerParam() {}
  TObjOwnerParam(T data) : x4_data(data) {}
  T GetData() const { return static_cast<T>(x4_data); }

private:
  T x4_data;
};

class CVParamTransfer {
public:
  CVParamTransfer() {}
  template < typename T >
  CVParamTransfer(TObjOwnerParam< T >* obj) : x0_obj(obj) {}
  static CVParamTransfer Null();

  const IVParamObj& operator*() const { return *x0_obj; }

private:
  rstl::rc_ptr< IVParamObj > x0_obj;
};

#endif // _CVPARAMTRANSFER
