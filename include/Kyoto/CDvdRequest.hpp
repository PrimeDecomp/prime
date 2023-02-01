#ifndef _CDVDREQUEST
#define _CDVDREQUEST

#include "dolphin/dvd.h"
#include "types.h"

class CDvdRequest {
public:
  virtual ~CDvdRequest(){};             // 8
  virtual void WaitUntilComplete() = 0; // c
  virtual bool IsComplete() = 0;        // 10
  virtual void PostCancelRequest() = 0; // 14
  virtual int GetMediaType() const = 0; // 18
};

class CRealDvdRequest : public CDvdRequest {
public:
  ~CRealDvdRequest();
  void WaitUntilComplete();
  bool IsComplete();
  void PostCancelRequest();
  int GetMediaType() const;

  DVDFileInfo& FileInfo() { return mFileInfo; }

private:
  DVDFileInfo mFileInfo;
};

class CARAMDvdRequest : public CDvdRequest {
public:
  CARAMDvdRequest(uint i) : x4_dmaReq(i) {}
  void WaitUntilComplete();
  bool IsComplete();
  void PostCancelRequest();
  int GetMediaType() const;

private:
  uint x4_dmaReq;
};

#endif // _CDVDREQUEST
