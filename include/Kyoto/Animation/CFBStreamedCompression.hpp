#ifndef _CFBSTREAMEDCOMPRESSION
#define _CFBSTREAMEDCOMPRESSION

class CInputStream;
class IObjectStore;
class CCharAnimTime;
class CFBStreamedCompression {
public:
  CFBStreamedCompression(CInputStream& in, IObjectStore& store);
  ~CFBStreamedCompression();

  CCharAnimTime GetAnimationDuration() const;
};

#endif // _CFBSTREAMEDCOMPRESSION
