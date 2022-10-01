#ifndef __CVPARAMTRANSFER_HPP__
#define __CVPARAMTRANSFER_HPP__

#include <rstl/rc_ptr.hpp>

class IObj;
class CVParamTransfer {
public:
  static CVParamTransfer Null();

private:
  rstl::rc_ptr< unkptr > x0_;
};

#endif // __CVPARAMTRANSFER_HPP__
