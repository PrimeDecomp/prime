#ifndef _IDVDREQUEST
#define _IDVDREQUEST


class IDvdRequest {
public:
  virtual ~IDvdRequest() = 0; // 8
  virtual void Unknown1(bool) = 0; // c
  virtual bool IsComplete() = 0; // 10
};

#endif // _IDVDREQUEST
