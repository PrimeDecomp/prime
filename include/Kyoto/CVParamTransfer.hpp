#ifndef _CVPARAMTRANSFER
#define _CVPARAMTRANSFER

#include "Kyoto/IObj.hpp"
#include <rstl/rc_ptr.hpp>

class IVParamObj : public IObj {};

template < typename T >
class TObjOwnerParam : public IVParamObj {
public:
  ~TObjOwnerParam() {}
  TObjOwnerParam(const T& data) : x4_data(data) {}
  const T& GetData() const { return x4_data; }
  const T& operator*() const { return GetData(); }

private:
  T x4_data;
};

class CVParamTransfer {
public:
  CVParamTransfer() {}
  template < typename T >
  CVParamTransfer(TObjOwnerParam< T >* obj) : x0_obj(obj) {}
  static CVParamTransfer Null() { return CVParamTransfer(); }

  const IVParamObj& operator*() const { return *x0_obj; }
  rstl::rc_ptr< IVParamObj > x0_obj;
};

#endif // _CVPARAMTRANSFER
