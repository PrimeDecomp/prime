#ifndef _CVPARAMTRANSFER
#define _CVPARAMTRANSFER

#include <rstl/rc_ptr.hpp>

class IObj;

class CVParamTransfer {
public:
  static CVParamTransfer Null();

private:
  rstl::rc_ptr< unkptr > x0_;
};

#endif // _CVPARAMTRANSFER
