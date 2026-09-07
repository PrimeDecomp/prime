#ifndef _CARCHMSGPARMINT32INT32STRING
#define _CARCHMSGPARMINT32INT32STRING

#include "MetroidPrime/CArchitectureMessage.hpp"
#include "rstl/string.hpp"

class CArchMsgParmInt32Int32String : public IArchitectureMessageParm {
public:
  int GetFirstInt32() const { return x4_int1; }
  int GetSecondInt32() const { return x8_int2; }
  const rstl::string& GetString() const { return xc_string; }

private:
  int x4_int1;
  int x8_int2;
  rstl::string xc_string;
};
CHECK_SIZEOF(CArchMsgParmInt32Int32String, 0x1c)

#endif // _CARCHMSGPARMINT32INT32STRING
