#ifndef _CDVDREQUEST
#define _CDVDREQUEST

#include "types.h"

class CDvdRequest {
public:
  virtual ~CDvdRequest() = 0; // 8
  virtual void WaitUntilComplete() = 0; // c
  virtual bool IsComplete() = 0; // 10
  virtual void PostCancelRequest() = 0; // 14
  virtual int GetMediaType() const = 0; // 18
};

class CARAMDvdRequest : public CDvdRequest {
public:
  CARAMDvdRequest(uint i) : x4_dmaReq(i) {}
  void WaitUntilComplete() {};
  bool IsComplete() {};
  void PostCancelRequest() {};
  int GetMediaType() const { return 1; }
private:
  uint x4_dmaReq;
};

#endif // _CDVDREQUEST
